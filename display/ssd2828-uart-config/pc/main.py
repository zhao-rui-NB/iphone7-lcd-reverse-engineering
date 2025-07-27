from PyQt6.QtCore import *
from PyQt6.QtWidgets import *
from PyQt6.QtGui import *

from typing import List, Dict, Any
import json
import os, sys, time
import serial

from RegConfig import RegConfig
# from checksum import calculate_checksum
import ssd2828_uart 

def read_reg_json(file_path):
    with open(file_path, "r") as file:
        data = json.load(file)
    return data


class MainWindow(QMainWindow):
    
    def __init__(self):
        super().__init__()
        self.setWindowTitle("SSD2828 Configuration Tool")
        
        
        self.qss_path = "qss/main_window.qss"
        self.last_file_time = 0
        # self.reg_define = read_reg_json("reg_define_test1.json")
        self.reg_define = read_reg_json("json/reg_define.json")
        
        self.ser = None
        self.reg_configs: List[RegConfig] = []
        
        self.init_ui()
        
        
        self.update_timer = QTimer(self)
        self.update_timer.timeout.connect(self.check_load_style_sheet)
        self.update_timer.start(300)
        
        # state init 
        self.connect_state_update(False)
        
    def init_ui(self):
        self.center_contanier = QWidget()
        self.center_contanier.setObjectName("center_container")
        self.setCentralWidget(self.center_contanier)
        self.center_layout = QVBoxLayout(self.center_contanier)
        self.center_layout.setAlignment(Qt.AlignmentFlag.AlignTop)
        
        self.header_widget = QWidget()
        self.header_layout = QHBoxLayout(self.header_widget)
        self.center_layout.addWidget(self.header_widget)
        
        # center_layout no space between widgets
        
        self.le_comport = QLineEdit()
        self.le_comport.setPlaceholderText("COMX")
        self.le_comport.setText("COM6")
        self.le_comport.setMaxLength(10)
        
        self.btn_connect = QPushButton("Connect")
        self.btn_connect.setCheckable(True)
        self.btn_connect.setChecked(False)
        self.btn_connect.clicked.connect(self.on_connect_clicked)
        
        self.btn_inin_script1 = QPushButton("Init Script 1")
        self.btn_inin_script1.clicked.connect(self.on_init_script1_clicked)
        
        self.btn_inin_script2 = QPushButton("Init Script 2")
        self.btn_inin_script2.clicked.connect(self.on_init_script2_clicked)
        
        self.btn_inin_script3 = QPushButton("Init Script 3")
        self.btn_inin_script3.clicked.connect(self.on_init_script3_clicked)
        
        self.btn_inin_script_ip6_1334_750 = QPushButton("Init Script ip6 1334*750")
        self.btn_inin_script_ip6_1334_750.clicked.connect(self.on_init_script_ip6_1334_750_clicked)
        
        self.btn_inin_script_ip7_1334_750 = QPushButton("Init Script ip7 1334*750")
        self.btn_inin_script_ip7_1334_750.clicked.connect(self.on_init_script_ip7_1334_750_clicked)
        
        self.btn_write_all = QPushButton("Write All")
        self.btn_write_all.clicked.connect(self.on_write_all_clicked)
        
        self.btn_read_all = QPushButton("Read All")
        self.btn_read_all.clicked.connect(self.on_read_all_clicked)
        
        self.btn_clear_all = QPushButton("Clear All")
        self.btn_clear_all.clicked.connect(self.on_clear_all_clicked)
        
        # add all widgets to the center layout
        self.header_layout.addWidget(self.le_comport)
        self.header_layout.addWidget(self.btn_connect)
        self.header_layout.addStretch(1)
        self.header_layout.addWidget(QLabel("SSD2828 Register Configuration"))
        self.header_layout.addStretch(1)
        
        self.header_layout.addWidget(self.btn_inin_script1)
        self.header_layout.addWidget(self.btn_inin_script2)
        self.header_layout.addWidget(self.btn_inin_script3)
        self.header_layout.addWidget(self.btn_inin_script_ip6_1334_750)
        self.header_layout.addWidget(self.btn_inin_script_ip7_1334_750)
        self.header_layout.addWidget(self.btn_write_all)
        self.header_layout.addWidget(self.btn_clear_all)
        self.header_layout.addWidget(self.btn_read_all)
        
        # scroll area for the register configuration
        self.scroll_area = QScrollArea()
        self.scroll_area.setWidgetResizable(True)
        
        self.main_widget = QWidget()
        self.main_layout = QVBoxLayout(self.main_widget)
        self.main_layout.setAlignment(Qt.AlignmentFlag.AlignTop)

        
        self.scroll_area.setWidget(self.main_widget)

        self.center_layout.addWidget(self.scroll_area)
        
        
        for i, reg_dict in enumerate(self.reg_define):
            # key: name, offset, bit_fields
            # in bit_fields: name, offset, bit, size, type
            reg_config = RegConfig(**reg_dict, 
                                   read_hardware_reg_func=lambda addr: ssd2828_uart.SSD2828_ReadReg(self.ser, addr),
                                   write_hardware_reg_func=lambda addr, data: ssd2828_uart.SSD2828_WriteReg(self.ser, addr, data),
                                    )

            self.reg_configs.append(reg_config)
            self.main_layout.addWidget(reg_config)

        self.main_layout.addStretch(1)
        
        
        self.footer_widget = QWidget()
        self.footer_layout = QHBoxLayout(self.footer_widget)
        self.footer_layout.setContentsMargins(0, 0, 0, 0)
        self.footer_layout.addStretch(1)
        
        
        self.btn_dump = QPushButton("Dump register")
        self.btn_dump.clicked.connect(self.on_dump_clicked)
        self.footer_layout.addWidget(self.btn_dump)
        
        self.btn_unpack = QPushButton("展開(unpack)")
        self.btn_unpack.clicked.connect(self.on_unpack_clicked)
        self.footer_layout.addWidget(self.btn_unpack)

            
        self.btn_pack = QPushButton("收起(pack)")
        self.btn_pack.clicked.connect(self.on_pack_clicked)
        self.footer_layout.addWidget(self.btn_pack)
        
        self.center_layout.addWidget(self.footer_widget)        
    
    
    def load_style_sheet(self):
        with open(self.qss_path, "r") as f:
            style = f.read()
            self.setStyleSheet(style)
            
            print(f"Style sheet loaded. time: {time.strftime('%Y-%m-%d %H:%M:%S', time.localtime())}")
            
    def check_load_style_sheet(self):
        # check if the file is changed
        if os.path.exists(self.qss_path):
            file_time = os.path.getmtime(self.qss_path)
            if file_time > self.last_file_time:
                self.load_style_sheet()
                self.last_file_time = file_time
        else:
            print(f"File {self.qss_path} does not exist.")
            
    def on_connect_clicked(self):
        
        connect_state = False
        
        if self.btn_connect.isChecked(): # try connect comport
            print(f"Connect to {self.le_comport.text()}")
            try:
                self.ser = serial.Serial(self.le_comport.text(), 115200, timeout=1)
                if not self.ser.is_open:
                    self.ser.open()
                print(f"Serial port opened.")
                # time.sleep(2)
                # ssd2828_uart.ssd2828_init(self.ser)
                connect_state = True
            
            except Exception as e:
                print(f"Error: {e}")
                connect_state = False
                
        else: # disconnect comport
            print(f"Disconnect from {self.le_comport.text()}")
            if self.ser is not None:
                self.ser.close()
                self.ser = None
                print("Serial port closed.")
        

        self.connect_state_update(connect_state)
        if connect_state:
            self.btn_connect.setText("Disconnect")
        else:
            self.btn_connect.setText("Connect")

    def on_read_all_clicked(self):
        # read all registers
        for i, reg_config in enumerate(self.reg_configs):
            reg_config.read()
            
    def on_clear_all_clicked(self):
        # clear all registers
        for i, reg_config in enumerate(self.reg_configs):
            reg_config.clear()
            
    def on_write_all_clicked(self):
        # write all registers
        for i, reg_config in enumerate(self.reg_configs):
            reg_config.write()
    
    def on_init_script1_clicked(self):
        ssd2828_uart.ssd2828_init(self.ser)
        
    def on_init_script2_clicked(self):
        ssd2828_uart.ssd2828_init_2(self.ser)
    
    def on_init_script3_clicked(self):
        ssd2828_uart.ssd2828_init_3(self.ser)
        
    def on_init_script_ip6_1334_750_clicked(self):
        ssd2828_uart.ssd2828_init_ip6_1334_750(self.ser)

    def on_init_script_ip7_1334_750_clicked(self):
        ssd2828_uart.ssd2828_init_ip7_1334_750(self.ser)

    def on_unpack_clicked(self):
        # unpack all registers
        for i, reg_config in enumerate(self.reg_configs):
            reg_config.unpack()
            
    def on_pack_clicked(self):
        # pack all registers
        for i, reg_config in enumerate(self.reg_configs):
            reg_config.pack()
            
    def on_dump_clicked(self):
        # dump all registers
        ssd2828_uart.SSD2828_dump_all_reg(self.ser)
        
        
    def connect_state_update(self, connected):
        self.btn_clear_all.setEnabled(connected)
        self.btn_write_all.setEnabled(connected)
        self.btn_read_all.setEnabled(connected)
        self.btn_inin_script1.setEnabled(connected)
        self.btn_inin_script2.setEnabled(connected)
        self.btn_inin_script3.setEnabled(connected)
        self.btn_inin_script_ip6_1334_750.setEnabled(connected)
        self.btn_inin_script_ip7_1334_750.setEnabled(connected)
        self.btn_dump.setEnabled(connected)
        
        self.btn_connect.setChecked(connected)
        self.le_comport.setEnabled(not connected)
        
        for i, reg_config in enumerate(self.reg_configs):
            reg_config.set_connect_success(connected)
      
if __name__ == "__main__":
    app = QApplication([])
    # app.setStyle("Windows")
    # app.setStyle("fusion")
    window = MainWindow()
    window.show()
    app.exec()        
        

        