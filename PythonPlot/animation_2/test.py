import sys
import math as m
import numpy as np
import matplotlib.pyplot as plt



y=np.linspace(0,10,10)

plt.figure()
for i in range(0,10):
  plt.plot(0,y[i],marker="o")

plt.show()
