data=[
[22.1,0.185,0.01,0.242,0.039,0.000395,0.178,0.13,2.75,0.104],[18.5,0.145,0.00789,0.0967,0.0802,0.00109,0.165,0.0602,4.43,0.108],[18.3,0.126,0.00511,0.117,0.164,0.00139,0.235,0.0547,8.46,0.162],[18.4,0.139,0.00499,0.101,0.329,0.00261,0.324,0.0504,16.4,0.24],[18.8,0.161,0.00833,0.0986,0.653,0.00486,0.516,0.0652,32.5,0.369],[18.7,0.147,0.00585,0.0929,1.39,0.0124,1.01,0.0629,64.6,0.639],[18.6,0.137,0.00536,0.0964,2.61,0.0328,1.8,0.602,129,1.18],[18.8,0.138,0.00558,0.0932,5.22,0.0831,3.53,0.0752,307,2.23],[18.9,0.144,0.00597,0.0938,10.5,0.213,6.87,0.0804,516,4.26],[19.3,0.15,0.00517,0.117,20.9,0.487,13.8,5.62,1.04e+03,8.57]]

data1=[
[19.5,0.164,1.17,0.101,0.00836,0.00459,0.53,0.373,0.255],[14.7,0.299,2.21,0.0847,0.00433,0.00856,0.88,0.44,0.473],[14.5,0.535,4.44,0.0917,0.00479,0.0212,1.68,0.626,0.833],[14.5,0.988,8.89,0.0975,0.00458,0.0565,3.37,1.11,1.7],[15,2.15,17.8,0.0994,0.00558,0.123,6.11,2.07,3.22],[15.7,4.43,35.6,0.109,0.00555,0.284,12.5,3.89,6.9],[17.1,9.36,71.3,0.113,0.00626,0.656,26.4,9.7,13.6],[18.2,19.8,143,0.138,0.00726,1.88,52.6,14.8,31.4],[19.7,40.3,286,0.144,0.00872,4.03,85.7,29.4,54.3],[20.6,80.6,572,0.15,0.0077,8.02,150,58.5,103]]


import matplotlib.pyplot as plt 
import random

x=[]
n=1<<14
for i in range(10):
    x.append(n)
    n*=2

# plt.title("CPU vs FPGA")
# host=[]
# fpga1=[]
# fpga2=[]
# for i in range(10):
#     host.append(data[i][-4])
#     fpga1.append(data[i][-1]+data1[i][-2]/10+data[i][-3])
#     fpga2.append(data1[i][-2]/10)
# plt.figure()
# plt.plot(x,fpga1,label="FPGA computation+communication")
# plt.plot(x,host,label="CPU Time")
# plt.legend()
# plt.xlabel("Number of elements")
# plt.ylabel("Time in ms")
# plt.grid()
# plt.figure()
# plt.plot(x,fpga2,label="FPGA kernel")
# plt.plot(x,host,label="CPU Time")
# plt.legend()
# plt.xlabel("Number of elements")
# plt.ylabel("Time in ms")
# plt.grid()
# plt.show()

cpu=[]
vadd=[]
wide_vadd=[]
for i in range(10):
    cpu.append(data1[i][-4])
    wide_vadd.append(data1[i][-2]/10)
    vadd.append(data1[i][-2])

plt.figure()
plt.plot(x,cpu,label="CPU Time")
plt.plot(x,vadd,label="vadd")
plt.plot(x,wide_vadd,label="wide_vadd")
plt.legend()
plt.xlabel("Number of elements")
plt.ylabel("Time in ms")
plt.grid()
plt.show()
