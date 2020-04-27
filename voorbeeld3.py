# File: voorbeeld3.py
# Zie: https://stackoverflow.com/questions/9215658/plot-a-circle-with-pyplot

import matplotlib.pyplot as plt



#gcf() means Get Current Figure
#gca() means Get Current Axis

circle1=plt.Circle((50,75), 5,color='green')
circle2=plt.Circle((10,10),25,color='blue')
circle3=plt.Circle((-25,50),10,color='yellow')
circle4=plt.Circle((-25,-75),10,color='black')


# verticale stappeling van rode circles 
circle5=plt.Circle((50,50), 5,color='red')
circle6=plt.Circle((50,25), 5,color='red')
circle7=plt.Circle((50,0), 5,color='red')
circle8=plt.Circle((50,-75), 5,color='red')
circle9=plt.Circle((50,-50), 5,color='red')
circle10=plt.Circle((50,-25), 5,color='red')



fig, ax = plt.subplots()
ax.set(xlim=(-100, 100), ylim = (-100, 100))

ax.add_artist(circle1)
ax.add_artist(circle2)
ax.add_artist(circle3)
ax.add_artist(circle4)

# verticale stappeling van rode circles 
ax.add_artist(circle5)
ax.add_artist(circle6)
ax.add_artist(circle7)
ax.add_artist(circle8)
ax.add_artist(circle9)
ax.add_artist(circle10)

plt.show()