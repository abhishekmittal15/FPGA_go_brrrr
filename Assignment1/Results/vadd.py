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

host[0]=2960
h2f[0]=33661
kernel[0]=6989
f2h[0]=14719

host[1]=5525
h2f[1]=57386
kernel[1]=10800
f2h[1]=31109

host[2]=8260
h2f[2]=69218
kernel[2]=17129
f2h[2]=40580

host[3]=11106
h2f[3]=89600
kernel[3]=21309
f2h[3]=56502

host[4]=13809
h2f[4]=110509
kernel[4]=26493
f2h[4]=64999

host[5]=16542
h2f[5]=121437
kernel[5]=30204
f2h[5]=80444

host[6]=19366
h2f[6]=138572
kernel[6]=35049
f2h[6]=89587

host[7]=22054
h2f[7]=154213
kernel[7]=44472
f2h[7]=105185

host[8]=24990
h2f[8]=175313
kernel[8]=50539
f2h[8]=116762

host[9]=34849
h2f[9]=198728
kernel[9]=52888
f2h[9]=133514

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

