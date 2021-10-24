# Common Mistakes 

1. Check the Makefile for correct variable names 
   1. `includes_folder` might have been declared but you might be using `include_folder` and stuff like that 
   2. The above could lead to errors like 
   `main not defined etc.`
2. While executing the command `make run`, make sure you pass in additional parameters like 
   1. `KERNEL_NAME`: This has to be the same as the function name you defined in your kernel code
   2. `NUM_ELEMENTS`: These are application parameters on which your code would be run 
   3. `EXECUTABLE`: (optional) You can specify the name of your host executable 
3. You can pass float to your kernel, so dont worry about that 