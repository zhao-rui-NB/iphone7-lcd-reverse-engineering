# .v > .out > .vcd 

# TB_FILE ?= tb/top_tb.v # 假設此測試檔案會在 ./bulid 下產生 同名的 .vcd 檔案
# TB_FILE ?= tb/MIPI_tb.v
TB_FILE ?= tb/top_tb.v
# TB_FILE = tb/test_pattern_finder.v
# TB_FILE = tb/mipi_byte_aligner_tb.v
# TB_FILE = tb/mipi_multi_lane_aligner_tb.v

# empty
ADD_FILE ?= 

BUILD_DIR = build
SIM_LIB = tb/prim_sim.v

VO_FILES = $(wildcard src/**/*.vo) # build ipcore
V_FILES = $(wildcard src/*.v) # build ipcore


# 編譯指令
IVERILOG = iverilog
VVP = vvp
CODE = code

OUT = $(BUILD_DIR)/$(notdir $(TB_FILE:.v=.out)) # 產生的 .out 檔案名稱
VCD = $(BUILD_DIR)/$(notdir $(TB_FILE:.v=.vcd)) # 產生的 .vcd 檔案名稱

# 確保 build 目錄存在
$(shell if not exist $(BUILD_DIR) mkdir $(BUILD_DIR))

all: clean $(VCD) 

FORCE:

info:
	@echo "Output file: $(OUT)"
	@echo "VCD file: $(VCD)"

	@echo "V_FILES: $(V_FILES)"
	@echo "VO_FILES: $(VO_FILES)"
	@echo "TB_FILE: $(TB_FILE)"
	@echo "BUILD_DIR: $(BUILD_DIR)"


$(OUT): FORCE
	@echo "Compiling..."
	$(IVERILOG) -o $(OUT) $(SIM_LIB) $(V_FILES) $(VO_FILES) $(TB_FILE) $(ADD_FILE)
	@echo "Compilation complete."

$(VCD): $(OUT)
	@echo "Running simulation..."
	$(VVP) $(OUT)
	@echo "Simulation complete."


# 目標: 開啟波形視圖
view: $(VCD)
	@echo "OPENING waveform viewer..."
	$(CODE) $(VCD) 

# 目標: 清除編譯產物
clean:
	@echo "Cleaning up..."
	@if exist $(BUILD_DIR)\*.out del /Q $(BUILD_DIR)\*.out
	@if exist $(BUILD_DIR)\*.vcd del /Q $(BUILD_DIR)\*.vcd
	@echo "Cleanup complete."
