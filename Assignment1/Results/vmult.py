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

host[0]=3804
h2f[0]=62400
kernel[0]=9713
f2h[0]=30570

host[1]=6130
h2f[1]=92005
kernel[1]=20220
f2h[1]=56120

host[2]=8850
h2f[2]=123418
kernel[2]=31251
f2h[2]=78482

host[3]=11929
h2f[3]=152140
kernel[3]=20536
f2h[3]=101971

host[4]=14639
h2f[4]=191265
kernel[4]=52180
f2h[4]=124315

host[5]=17757
h2f[5]=215271
kernel[5]=55945
f2h[5]=147854

host[6]=21812
h2f[6]=260967
kernel[6]=67959
f2h[6]=174248

host[7]=23542
h2f[7]=277421
kernel[7]=74805
f2h[7]=195811

host[8]=26476
h2f[8]=314565
kernel[8]=94804
f2h[8]=240642

host[9]=29723
h2f[9]=347593
kernel[9]=124849
f2h[9]=249199

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

