TARGET := sw_emu
NUM_ELEMENTS := 4096
KERNEL_NAME := krnl_vadd
device := $(AWS_PLATFORM)
host_files := ./host/host.cpp ./host/xcl2.cpp ./host/event_timer.cpp
kernel_file := ./kernel/kernel.cpp
include_folder := ./include
TEMP_DIR := temp_dir
build_folder := ./build
EXECUTABLE := host_exe
BINARY := kernel.xclbin
PACKAGE_OUT := ./package.$(TARGET)
RM = rm -f
RMDIR = rm -rf

###### XRT Setup ################
xrt_path = $(XILINX_XRT)
#################################

########## OPENCL SETUP ###########
OPENCL_INCLUDE:= $(xrt_path)/include
VIVADO_INCLUDE:= $(XILINX_VIVADO)/include
opencl_CXXFLAGS=-I$(OPENCL_INCLUDE) -I$(VIVADO_INCLUDE)
OPENCL_LIB:= $(xrt_path)/lib
opencl_LDFLAGS=-L$(OPENCL_LIB) -lOpenCL -pthread
###################################

###### Setting Host variables ######
cxx := g++
cxx_flags := $(opencl_CXXFLAGS) -Wall -O3 -g -std=c++11 -fmessage-length=0
cxx_flags += -I$(include_folder)
ld_flags := $(opencl_LDFLAGS) 
ld_flags += -lrt -lstdc++ -lxilinxopencl -lpthread
####################################

###### Setting Kernel variables ######
vpp := v++
vpp_flags := -g --target $(TARGET) --platform $(device) --save-temps  
vpp_flags += --temp_dir $(TEMP_DIR) 
vpp_flags += --config design.cfg
vpp_ldflags := 
####################################

###### Build the host ##############
host_exe: $(host_files) 
	$(cxx) -o $@ $^ $(cxx_flags) $(ld_flags)

####################################

###### Build the Kernel objects ############
kernel.xo: $(kernel_file)
	mkdir -p $(TEMP_DIR)
	$(vpp) $(vpp_flags) -o $@ $^ -c -k $(KERNEL_NAME) -I$(include_folder) 

####################################

####### Build the kernel xclbin ##########
kernel.xclbin: kernel.xo 
	mkdir -p $(build_folder)
	$(vpp) $(vpp_flags) -l $(vpp_ldflags) -o'$(build_folder)/kernel.link.xclbin' $(+)
	$(vpp) -p $(build_folder)/kernel.link.xclbin -t $(TARGET) --platform $(device) --package.out_dir $(PACKAGE_OUT) -o $(build_folder)/kernel.xclbin

#######################################

######## Configure the Emulation #########
emconfig: 
	emconfigutil --platform $(device) --od $(TEMP_DIR)

########## Run the Kernel ################
run: $(EXECUTABLE) kernel.xo $(BINARY) emconfig
ifneq ($(TARGET),hw)
	cp -rf $(TEMP_DIR)/emconfig.json .
	@echo 
	@echo 
	@echo RUNTIME RESULTS
	XCL_EMULATION_MODE=$(TARGET) ./host_exe $(NUM_ELEMENTS) $(build_folder)/kernel.xclbin 
else
	./host 
endif
##########################################

# host: ./src/$(host_file) ./includes/boiler_plate.cpp 
# 	g++ -D_USE_OPENX28 \
# 	-I$(XILINX_XRT)/include/ \
# 	-I./includes \
# 	-O3 -Wall -fmessage-length=0 -std=c++11 \
# 	./src/$(host_file)
# 	-L$(XILINX_XRT)/lib/ \
# 	-lxilinxopencl -lpthread -lrt \
# 	-o ./host

# vadd.xo: ./src/$(kernel_file)
# 	v++ -c -g -t $(TARGET) -R 1 -k $(kernel_name) \
# 	--profile_kernel data:all:all:all \
# 	--profile_kernel stall:all:all:all \
# 	--save-temps \
# 	--temp_dir ./temp_dir \
# 	--log_dir ./log_dir \
# 	--report_dir ./report_dir \
# 	--config ./options.cfg \
# 	-I./includes \
# 	./src/$(kernel_file) \
# 	-o ./build/vadd.xo 

# vadd.xclbin: vadd.xo 
# 	v++ -l -g -t $(TARGET) -R 1 \
# 	--profile_kernel data:all:all:all \
# 	--profile_kernel stall:all:all:all \
# 	--temp_dir ./temp_dir \
# 	--log_dir ./log_dir \
# 	--report_dir ./report_dir \
# 	--config ./options.cfg \
# 	-I./includes \
# 	./build/vadd.xo \
# 	-o ./build/vadd.xclbin 

# clean:
# 	rm -rf temp_dir log_dir report_dir *log host vadd.* *.csv *summary .run .Xil vitis* xclbin *.protoinst *.wdb *.wcfg

clean:
	-$(RMDIR) $(EXECUTABLE) $(XCLBIN)/{*sw_emu*,*hw_emu*} 
	-$(RMDIR) profile_* TempConfig system_estimate.xtxt *.rpt *.csv *summary *xo $(TEMP_DIR)
	-$(RMDIR) src/*.ll *v++* .Xil emconfig.json dltmp* xmltmp* *.log *.jou *.wcfg *.wdb
	-$(RMDIR) build_dir* sd_card*
	-$(RMDIR) package.*
	-$(RMDIR) _x* *xclbin.run_summary qemu-memory-_* emulation _vimage pl* start_simulation.sh *.xclbin

