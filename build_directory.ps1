$var = Read-Host "Enter the name of the directory"
$root = "D:\github Projects\FPGA_go_brrrr"
mkdir $var
$current_directory = Get-Location 
Set-Location $current_directory/$var

# Create the Makefiles and the xrt.ini and config.ini files 
Copy-Item $root\common\Makefile .
Copy-Item $root\common\design.cfg
Copy-Item $root\common\xrt.ini

# Creating the host folder 
mkdir host 
Set-Location host 
Copy-Item $root\cos_sim\host.cpp .
Copy-Item $root\common\*.cpp .
Set-Location ..

# Creating the kernel folder 
mkdir kernel 
Set-Location kernel 
new-Item kernel.cpp 
Set-Location .. 

# Creating the build folder 
mkdir build 

# Create the includes folder 
mkdir include
Set-Location include 
Copy-Item $root/common/*.hpp . 
Set-Location ..
