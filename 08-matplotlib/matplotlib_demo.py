import numpy as np 
import matplotlib.pyplot as plt

# plt.plot([1, 2, 3], [4, 5, 6])
# plt.show()

# ---------------------------------------------------------------------

# years = [1990, 1992, 1994, 1996, 1998, 2000, 2003, 2005, 2007, 2010] 
# runs =  [500, 700, 1100, 1500, 1800, 1200, 1700, 1300, 900, 1500]

# plt.plot(years, runs)
# plt.xlabel("Years")
# plt.ylabel("Runs")
# plt.title("Sachin Tendulkar's Yearly Runs")
# plt.show()

# ---------------------------------------------------------------------
# [Visualizing Tons of Data – What Crowded Looks Like]

# plt.plot(np.random.rand(100), linewidth=1) 
# plt.title("Too Much Data Can Be Confusing!") 
# plt.grid(True) 
# plt.tight_layout() 
# plt.show()

for i in range(50):
    plt.plot(np.random.rand(100), linewidth=1) 
    
plt.title("Too Much Data Can Be Confusing!") 
plt.grid(True) 
plt.tight_layout() 
plt.show()