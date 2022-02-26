

# Task 3 (left out from the submission because I did not understand it last week)
# Import the GGPLOT 2 library and plot a graph using the qplot function. 
# X axis is the sequence of 1:20 and the y axis is the x ^ 2. 
# Label the graph appropriately. install.packages("ggplot2", dependencies = TRUE)

install.packages("ggplot2")
data(package = "ggplot2")

x <- c (1:20)
print(x)

y <- x^2
print(y)

ggplot2::qplot(x,y)


# Mandatory task: Data Visualisation using ggplot and qplot

data(package = "ggplot2")
ggplot2::economics

#displ on the x-axis and hwy on the y-axis:
ggplot(data = economics) + 
  geom_point(mapping = aes(x = date, y = unemploy))

#adding colour to data points
ggplot(data = economics) + 
  geom_point(mapping = aes(x = date, y = unemploy, color = "red"))


#chaning size of data points
ggplot(data = economics) + 
  geom_point(mapping = aes(x = date, y = unemploy, size = pce))

#aplha changes transparency of points
ggplot(data = economics) + 
  geom_point(mapping = aes(x = date, y = unemploy, alpha = pce))

