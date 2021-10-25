$var = Read-Host "Enter the name of the directory"
mkdir $var
$current_directory = Get-Location 
Set-Location $current_directory/$var

# Create the Makefiles and the xrt.ini and config.ini files 
Copy-Item ..\..\common\Makefile .
Copy-Item ..\..\design.cfg
Copy-Item ..\..\xrt.ini

# Creating the host folder 
mkdir host 
Set-Location host 
New-Item host.cpp 
Copy-Item ..\..\common\*.cpp .
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
Copy-Item ../../common/*.hpp . 
Set-Location ..
