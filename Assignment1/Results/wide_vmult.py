import matplotlib.pyplot as plt 
import numpy as np 

start_length=(int)(1e6)
end_length=(int)(1e7)
step=(int)(1e6)
length=range(start_length,end_length+step,step)
host=np.zeros(len(length))
h2f=np.zeros(len(length))
kernel=np.zeros(len(length))
f2h=np.zeros(len(length))

host[0]=5
h2f[0]=26
kernel[0]=2077
f2h[0]=15

host[1]=9.9
h2f[1]=50.7
kernel[1]=4081
f2h[1]=32

host[2]=14.97
h2f[2]=69.129
kernel[2]=6428
f2h[2]=43.6

host[3]=20.965
h2f[3]=86.235
kernel[3]=8000
f2h[3]=63.927

host[4]=25.237
h2f[4]=105.281
kernel[4]=10000
f2h[4]=69.475

host[5]=30.319
h2f[5]=120.214
kernel[5]=12535
f2h[5]=88

host[6]=34
h2f[6]=160
kernel[6]=14000
f2h[6]=95.908

host[7]=40.564
h2f[7]=149.762
kernel[7]=16527
f2h[7]=113

host[8]=46.078
h2f[8]=171.255
kernel[8]=18164
f2h[8]=128

host[9]=54.40
h2f[9]=208.981
kernel[9]=20322
f2h[9]=139.958

host=host*1e-6
kernel=kernel*1e-6
f2h=f2h*1e-6
h2f=h2f*1e-6

print(len(kernel))
print(len(h2f))
print(len(f2h))
print(len(host))

plt.scatter(length,kernel,label="Kernel Computation Time")
plt.scatter(length,host,label="Host Computation Time")
plt.scatter(length,kernel+f2h+h2f,label="Total FPGA Time")
# plt.plot(length,h2f)
# plt.plot(length,host)
# plt.plot(length,f2h)
plt.title("Host and Kernel Computation Time")
plt.xlabel("Length of the vector")
plt.ylabel("Time in seconds")
plt.grid()
plt.legend()
plt.show()

