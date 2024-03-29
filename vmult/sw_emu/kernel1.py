data=[
[20.4,0.169,0.583,0.107,0.00996,0.00316,0.541,0.384,0.276],[15.7,0.302,1.17,0.0976,0.00573,0.0076,0.913,0.491,0.481],[15.6,0.565,2.34,0.112,0.00717,0.0286,1.73,0.846,0.908],[15.9,1.18,4.68,0.105,0.00618,0.0561,3.33,1.17,1.7],[16.5,2.43,9.39,0.115,0.00678,0.143,6.67,2.89,3.33],[17.4,5.04,18.8,0.136,0.00712,0.411,13.2,3.97,7.3],[18.2,10.2,37.8,0.158,0.0088,1,26.4,10.9,14.7],[18.9,20.4,75.4,0.162,0.00842,2.02,54.3,21.7,31.5],[20.2,40.8,151,0.152,0.0092,4.02,86.8,29.7,56.8],[21.1,81.6,302,0.154,0.00798,8.24,156,60.5,105]]

import matplotlib.pyplot as plt 

x=[]
n=1<<14
for i in range(10):
    x.append(n)
    n*=2

plt.title("CPU vs FPGA")
host=[]
fpga1=[]
fpga2=[]
for i in range(10):
    host.append(data[i][-4])
    fpga1.append(data[i][-1]+data[i][-2]+data[i][-3])
    fpga2.append(data[i][-2])

plt.figure()
plt.plot(x,fpga1,label="FPGA computation+communication")
plt.plot(x,host,label="CPU Time")
plt.legend()
plt.xlabel("Number of elements")
plt.ylabel("Time in ms")
plt.grid()

plt.figure()
plt.plot(x,fpga2,label="FPGA kernel")
plt.plot(x,host,label="CPU Time")
plt.legend()
plt.xlabel("Number of elements")
plt.ylabel("Time in ms")
plt.grid()

plt.show()