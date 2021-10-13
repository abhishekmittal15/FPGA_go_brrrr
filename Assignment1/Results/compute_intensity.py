import matplotlib.pyplot as plt 
import numpy as np 

start=1
end=(int)(1e2)
step=1
n=range(1,end,step)
n=np.array(n)
ci=(n*256)/((n+2)*256+1)
plt.plot(n,ci)
plt.show()
