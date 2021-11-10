data=[
[19.5,0.164,1.17,0.101,0.00836,0.00459,0.53,0.373,0.255],[14.7,0.299,2.21,0.0847,0.00433,0.00856,0.88,0.44,0.473],[14.5,0.535,4.44,0.0917,0.00479,0.0212,1.68,0.626,0.833],[14.5,0.988,8.89,0.0975,0.00458,0.0565,3.37,1.11,1.7],[15,2.15,17.8,0.0994,0.00558,0.123,6.11,2.07,3.22],[15.7,4.43,35.6,0.109,0.00555,0.284,12.5,3.89,6.9],[17.1,9.36,71.3,0.113,0.00626,0.656,26.4,9.7,13.6],[18.2,19.8,143,0.138,0.00726,1.88,52.6,14.8,31.4],[19.7,40.3,286,0.144,0.00872,4.03,85.7,29.4,54.3],[20.6,80.6,572,0.15,0.0077,8.02,150,58.5,103]]

import matplotlib.pyplot as plt 

x=[]
n=1<<14
for i in range(10):
    x.append(n)
    n*=2

plt.title("CPU vs FPGA")
host=[]
fpga=[]
for i in range(10):
    host.append(data[i][-4])
    fpga.append(data[i][-1]+data[i][-2]+data[i][-3])
    # fpga.append(data[i][-2])
plt.plot(x,fpga,label="FPGA computation+communication")
plt.plot(x,host,label="CPU Time")
plt.legend()
plt.xlabel("Number of elements")
plt.ylabel("Time in ms")
plt.grid()
plt.show()