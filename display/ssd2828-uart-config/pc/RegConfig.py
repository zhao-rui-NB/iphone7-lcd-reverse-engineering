from PyQt6.QtCore import *
from PyQt6.QtWidgets import *
from PyQt6.QtGui import *

# functools.partial 
from functools import partial

from typing import List, Dict, Union
import sys

class RegConfig(QFrame):
    def __init__(
        self,
        short_name: str,
        long_name: str,
        address: int,
        bit_fields: list[dict[str, int]],
        read_hardware_reg_func: callable = None,
        write_hardware_reg_func: callable = None,
    ):
        super().__init__()
        self.setObjectName("RegConfig")
        self.setWindowTitle("配置暫存器工具")

        self.short_name = short_name
        self.long_name = long_name
        self.address = address if isinstance(address, int) else int(address, 16)
        self.bit_fields = bit_fields
        
        self.read_hardware_reg_func = read_hardware_reg_func
        self.write_hardware_reg_func = write_hardware_reg_func
        
        self.hardware_reg_value = None
        # self.new_data_flag = False
        self.value_valid = False
        
        self.le_bit_fields: list[QLineEdit] = []
        self.ckb_slider_config_tool: list[Union[QCheckBox, QSlider, QPushButton]] = []
        self._writing_tool_flag = False
        
        self.init_ui()
        
        # state init
        self.update_value_valid_state(self.value_valid)
        
    
    def init_ui(self):
        
        # header: address, short name, long name ,clear btn, read btn , write btn, 
        self.root_layout = QHBoxLayout(self)
        self.root_layout.setContentsMargins(0,0,0,0)

        self.left_container = QWidget()
        self.left_container.setObjectName("left_container")
        self.left_container_layout = QVBoxLayout(self.left_container)
        self.left_container_layout.setContentsMargins(0,0,0,0)
        
        self.right_container = QWidget()
        self.right_container.setObjectName("right_container")
        self.right_container_layout = QVBoxLayout(self.right_container)
        self.right_container_layout.setContentsMargins(0,0,0,0)
        
        
        self.root_layout.addWidget(self.left_container, 0)
        self.root_layout.addWidget(self.right_container, 1)
        
        #
        self.header_container = QWidget()
        self.header_container.setObjectName("header_container")
        self.header_container_layout = QHBoxLayout(self.header_container)
        self.header_container_layout.setContentsMargins(0,0,0,0)
        
        self.main_container = QWidget()
        self.main_container.setObjectName("main_container")
        self.main_container_layout = QGridLayout(self.main_container)
        # self.main_container set space with 0
        self.main_container_layout.setSpacing(0)
        # 0 space between widgets
        self.main_container_layout.setContentsMargins(0,0,0,0)
        
        self.right_container_layout.addWidget(self.header_container)
        self.right_container_layout.addWidget(self.main_container,1)                
        
        # ###
        
        # left container
        self.btn_address = QPushButton(f'0x{self.address:02X}')
        self.btn_address.setSizePolicy(QSizePolicy.Policy.Preferred, QSizePolicy.Policy.Preferred)
        # this button toggle main container show/hide
        self.btn_address.clicked.connect(lambda: self.main_container.setVisible(not self.main_container.isVisible()))
        self.left_container_layout.addWidget(self.btn_address)
        
        # header container 
        self.lb_address = QLabel(f'0x{self.address:02X}') # main left
        
        self.lb_short_name = QLabel(self.short_name)
        self.header_container_layout.addWidget(self.lb_short_name)
        
        self.header_container_layout.addStretch(1)
        
        self.lb_long_name = QLabel(self.long_name)
        self.header_container_layout.addWidget(self.lb_long_name)
        
        self.header_container_layout.addStretch(1)
        
        # reg line edit
        self.le_reg = QLineEdit()
        self.le_reg.focusInEvent = lambda event: self._le_sel_all(event, self.le_reg)
        self.le_reg.textEdited.connect(self.on_reg_edited)
        # self.le_reg.setValidator(QRegularExpressionValidator(QRegularExpression("[0-9A-Fa-f]{1,4}")))
        
        # 限制輸入為 16 進制
        self.header_container_layout.addWidget(self.le_reg)
        
        self.btn_clear = QPushButton('Clear')
        self.btn_clear.clicked.connect(self.clear)
        self.header_container_layout.addWidget(self.btn_clear)
        
        self.btn_read = QPushButton('Read')
        self.btn_read.clicked.connect(self.read)
        self.header_container_layout.addWidget(self.btn_read)
        
        self.btn_write = QPushButton('Write')
        self.btn_write.clicked.connect(self.write)
        self.header_container_layout.addWidget(self.btn_write)
        
        # main container
        self._main_container_add_widget(QLabel('Bit'), 0, 0)
        self._main_container_add_widget(QLabel('Name'), 1, 0)
        self._main_container_add_widget(QLabel('Value'), 2, 0)
        self._main_container_add_widget(QLabel('Edit'), 3, 0)
        
        # 這裡的 16 是假設暫存器是 16 位的，可以根據實際情況進行調整
        for i in range(16):
            # self.main_container_layout.addWidget(QLabel(str(15-i)), 0, i+1)
            self._main_container_add_widget(QLabel(str(15-i)), 0, i+1)
            self.main_container_layout.setColumnStretch(i+1, 1)
            
        for i, bit_field in enumerate(self.bit_fields):
            b_size = bit_field["size"]
            b_start = bit_field["bit"]
            b_end = b_start + b_size - 1 # 結束位
            b_name = bit_field["name"]
            # print(f'{b_name} {b_start} {b_end} {b_size}')
            
            # name
            self._main_container_add_widget(QLabel(f'{b_name}') , 1, (15-b_end)+1, col_span=b_size)
            # value line edit
            bit = QLineEdit()
            # when bit focus in , select all text
            bit.setFocusPolicy(Qt.FocusPolicy.StrongFocus)
            bit.focusInEvent = lambda event, bit=bit: self._le_sel_all(event, bit)

            
            bit.setSizePolicy(QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Expanding)
            # change event
            bit.textEdited.connect(self.on_bit_fields_edited)
            
            self.le_bit_fields.append(bit)
            self._main_container_add_widget(bit, 2, (15-b_end)+1, col_span=b_size)
            
            # bit config tool
            # 1 bit: checkbox, >1 bit: slider            
            if b_size == 1:
                # # checkbox
                # cb = QCheckBox()
                # # change event
                # cb.stateChanged.connect(self.on_bit_config_tool_changed)
                # self.ckb_slider_config_tool.append(cb)
                # # set check state if bit is 1
                # self._main_container_add_widget(cb, 3, (15-b_end)+1, col_span=b_size)
                
                # change to checkable button
                cbtn = QPushButton()
                cbtn.setCheckable(True)
                cbtn.setChecked(False)
                cbtn.clicked.connect(self.on_bit_config_tool_changed)
                self.ckb_slider_config_tool.append(cbtn)
                self._main_container_add_widget(cbtn, 3, (15-b_end)+1, col_span=b_size)
                
            else:
                # slider
                slider = QSlider(Qt.Orientation.Horizontal)
                slider.setPageStep(0)
                
                slider.setSizePolicy(QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Expanding)
                slider.setRange(0, 2**b_size-1)
                # event
                slider.valueChanged.connect(self.on_bit_config_tool_changed)
                self.ckb_slider_config_tool.append(slider)
                self._main_container_add_widget(slider, 3, (15-b_end)+1, col_span=b_size)
        
            
    def _main_container_add_widget(self, widget, row, col, col_span=1, row_span=1):
        # pack widget with Qframe, then add to main container
        frame = QFrame()
        frame.setObjectName("grid_border_frame")
        frame.setFrameStyle(QFrame.Shape.WinPanel)
        frame_layout = QVBoxLayout(frame)
        frame_layout.setContentsMargins(2,2,2,2)
        
        # if if checkbox, label, align h center
        if isinstance(widget, QCheckBox) or isinstance(widget, QLabel):
            frame_layout.addWidget(widget, alignment=Qt.AlignmentFlag.AlignHCenter)
        else:
            frame_layout.addWidget(widget)
        
        self.main_container_layout.addWidget(frame, row, col, row_span, col_span)

    def _check_reg_value(self):
        try:
            num = int(self.le_reg.text(), 16)
            if num < 0 or num > 0xFFFF:
                raise ValueError
            return True
        except ValueError:
            return False
    
    def _check_bit_fields_value(self):
        for i, le in enumerate(self.le_bit_fields):
            try:
                num = int(le.text())
                # check if the value is valid
                if num < 0 or num > 2**self.bit_fields[i]["size"]-1:
                    raise ValueError
            except ValueError:
                return False
        return True
    
    def _sync_reg_to_bit_fields(self):
        reg_val = int(self.le_reg.text(), 16)
        for i, bit_field in enumerate(self.bit_fields):
            # bit_field key: name, bit, size
            bit_val = (reg_val >> self.bit_fields[i]["bit"]) & (2**bit_field["size"]-1)
            
            self.le_bit_fields[i].setText(str(bit_val))
        
    def _sync_bit_fields_to_reg(self):
        v = 0
        for i, bit_field in enumerate(self.bit_fields): 
            # bit_field key: name, bit, size
            bit_val = int(self.le_bit_fields[i].text())
            v |= bit_val << bit_field["bit"]   
        self.le_reg.setText(f'{v:04X}')
    
    def _sync_bit_fields_to_tool(self):
        for i, bit_field in enumerate(self.bit_fields): 
            # bit_field key: name, bit, size
            bit_val = int(self.le_bit_fields[i].text())
            # update bit config tool
            if isinstance(self.ckb_slider_config_tool[i], QCheckBox):
                self.ckb_slider_config_tool[i].setChecked(bit_val)
            elif isinstance(self.ckb_slider_config_tool[i], QSlider):
                self.ckb_slider_config_tool[i].setValue(bit_val)
            elif isinstance(self.ckb_slider_config_tool[i], QPushButton):
                self.ckb_slider_config_tool[i].setChecked(bit_val)
    
    def _sync_tool_to_bit_fields(self):
        for i, bit_field in enumerate(self.bit_fields): 
            # bit_field key: name, bit, size
            if isinstance(self.ckb_slider_config_tool[i], QCheckBox):
                bit_val = int(self.ckb_slider_config_tool[i].isChecked())
            elif isinstance(self.ckb_slider_config_tool[i], QSlider):
                bit_val = self.ckb_slider_config_tool[i].value()
            elif isinstance(self.ckb_slider_config_tool[i], QPushButton):
                bit_val = int(self.ckb_slider_config_tool[i].isChecked())
                
            self.le_bit_fields[i].setText(str(bit_val))

    
    def on_reg_edited(self):
        ''' cvt reg to bit fields '''
        
        self._writing_tool_flag = True
        
        valid = self._check_reg_value()
        if not valid:
            # clear other, bit fields and tool
            for le in self.le_bit_fields:
                le.setText('')
            for tool in self.ckb_slider_config_tool:
                if isinstance(tool, QCheckBox):
                    tool.setChecked(False)
                elif isinstance(tool, QSlider):
                    tool.setValue(0)
                elif isinstance(tool, QPushButton):
                    tool.setChecked(False)
                    
            self.update_value_valid_state(False)
        else:
            self._sync_reg_to_bit_fields()
            self._sync_bit_fields_to_tool()
            self.update_value_valid_state(True)
        
        self._writing_tool_flag = False    

    def on_bit_fields_edited(self):
        ''' cvt bit fields to reg '''
        
        self._writing_tool_flag = True
        
        valid = self._check_bit_fields_value()
        if not valid:
            # clear reg and tool
            self.le_reg.setText('')
            for tool in self.ckb_slider_config_tool:
                if isinstance(tool, QCheckBox):
                    tool.setChecked(False)
                elif isinstance(tool, QSlider):
                    tool.setValue(0)
                elif isinstance(tool, QPushButton):
                    tool.setChecked(False)
            self.update_value_valid_state(False)
        else:
            self._sync_bit_fields_to_reg()
            self._sync_bit_fields_to_tool()
            self.update_value_valid_state(True)
        
        self._writing_tool_flag = False

    def on_bit_config_tool_changed(self, value: int):
        if self._writing_tool_flag: # the data is writing, ignore the event
            return
        # sync tool to bit fields
        self._sync_tool_to_bit_fields()
        self._sync_bit_fields_to_reg()
        self.update_value_valid_state(True)
      
    def update_value_valid_state(self, state: bool):
        self.value_valid = state
        if state:
            if self.hardware_reg_value is not None and self.hardware_reg_value == int(self.le_reg.text(), 16):
                # no color
                palette = QPalette()
                bgc = palette.color(QPalette.ColorGroup.Normal, QPalette.ColorRole.Button)
                palette = self.btn_address.palette()
                palette.setColor(QPalette.ColorRole.Button, bgc)
                self.btn_address.setPalette(palette)
            else: # data is not sync with hardware
                palette = self.btn_address.palette()
                palette.setColor(QPalette.ColorRole.Button, QColor("#bfac32")) # yellow
                self.btn_address.setPalette(palette)
        else:
            palette = self.btn_address.palette()
            palette.setColor(QPalette.ColorRole.Button, QColor("#FF3E4D")) # red
            self.btn_address.setPalette(palette)
        
        self.btn_address.update()
                
    def _le_sel_all(self, event, le: QLineEdit):
        QTimer.singleShot(0, lambda: le.selectAll())

    def set_connect_success(self, success: bool):
        if success:
            self.btn_read.setEnabled(True)
            self.btn_write.setEnabled(True)
        else:
            self.btn_read.setEnabled(False)
            self.btn_write.setEnabled(False)
        
    def clear(self):
        self._writing_tool_flag = True
        self.le_reg.setText('')
        for le in self.le_bit_fields:
            le.setText('')
        for tool in self.ckb_slider_config_tool:
            if isinstance(tool, QCheckBox):
                tool.setChecked(False)
            elif isinstance(tool, QSlider):
                tool.setValue(0)
            elif isinstance(tool, QPushButton):
                tool.setChecked(False)
        self.update_value_valid_state(False)
        self._writing_tool_flag = False

    def read(self):
        if self.read_hardware_reg_func is None:
            print('[RegConfig] read_hardware_reg_func is None')
            return
        
        val = self.read_hardware_reg_func(self.address)
        if val is None:
            print('[RegConfig] read_hardware_reg_func return None')
            self.clear()
            self.update_value_valid_state(False)
            return
        else:
            print(f'[RegConfig] read hardware reg {self.address:02X}: {val:04X}')
            self.le_reg.setText(f'{val:04X}')
            self.hardware_reg_value = val
            self.on_reg_edited()
            
    def write(self):
        if not self.value_valid:
            print('Value is invalid, please check the value first')
            return
        
        if self.write_hardware_reg_func is None:
            print('[RegConfig] write_hardware_reg_func is None')
            return
        # convert reg to int
        val = int(self.le_reg.text(), 16)
        succ = self.write_hardware_reg_func(self.address, val)
    
        if succ==False:
            print('[RegConfig] write_hardware_reg_func return False')
            self.update_value_valid_state(False)
            return
        else:
            self.hardware_reg_value = val
            self.update_value_valid_state(True)
            
        print(f'[RegConfig] write hardware reg {self.address:02X}: {int(self.le_reg.text(), 16):04X}')
    
    def unpack(self):
        self.main_container.setVisible(True)
        
    def pack(self):
        self.main_container.setVisible(False)
    
    # show or hide main container
    def set_show_detail_config(self, show: bool):
        self.main_container.setVisible(show)
        
        
        
        
        
if __name__ == '__main__':
    app = QApplication(sys.argv)
    
    window = RegConfig(
        short_name="GPIO0",
        long_name="General Purpose Input/Output 0",
        address=0x00,
        bit_fields=[
            {"name": "GPIO0_STAT", "bit": 0, "size": 1},
            {"name": "GPIO0_CTR", "bit": 1, "size": 1},
            {"name": "Field3", "bit": 2, "size": 1},
            {"name": "Field4", "bit": 3, "size": 1},
            {"name": "cnt", "bit": 4, "size": 4},
            {"name": "t_qaz", "bit": 8, "size": 2},
            {"name": "test", "bit": 10, "size": 6},
        ]
        
    )
    
    # set font size 20
    font = QFont()
    font.setPointSize(20)
    window.setFont(font)
    
    window.show()
    sys.exit(app.exec())




