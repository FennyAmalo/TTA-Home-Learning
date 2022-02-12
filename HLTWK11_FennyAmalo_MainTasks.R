# Task 1
# Write an R program to create three vectors a, b, c with 5 integers. 
# Combine the three vectors to become a 3×5 matrix where each column represents a vector. 
# Print the content of the matrix. 
# Plot a graph and label correctly.

a<-c(1,2,3,4,5)
b<-c(6,7,8,9,10)
c<-c(11,12,13,14,15)
m<-cbind(a,b,c)
print("Content of the said matrix:")
print(m)
plot(m)

# Task 2
# Write a R program to create a Data frames which contain details of 5 employees
# and display the details. (Name, Age, Role and Length of service).   

Employees = data.frame(Name=c("Anastasia S","Dima R","Katherine S", "JAMES A","LAURA MARTIN"),
                       Gender=c("M","M","F","F","M"),
                       Age=c(23,22,25,26,32),
                       Designation=c("Clerk","Manager","Exective","CEO","ASSISTANT"),
                       SSN=c("123-34-2346","123-44-779","556-24-433","123-98-987","679-77-576")
)
print("Details of the employees:")                      
print(Employees)

# Task 3
# Import the GGPLOT 2 library and plot a graph using the qplot function. 
# X axis is the sequence of 1:20 and the y axis is the x ^ 2. 
# Label the graph appropriately. install.packages("ggplot2", dependencies = TRUE)

install.packages("ggplot2", dependencies = TRUE)
x<-1:20
y<-x^2

qplot(data = mpg, x = cty, y = hwy, geom = "point", color = class)

# Task 4
# Create a simple bar plot of five subjects

marks = c(70, 95, 80, 74,63)
barplot(marks,
        main = "Comparing marks of 5 subjects",
        xlab = "Marks",
        ylab = "Subject",
        names.arg = c("English", "Science", "Mathematics", "History", "Arts"),
        col = "darkred",
        horiz = FALSE)

# Task 5
# Write a R program to take input from the user (name and age) and display the values. 

name <- readline("Enter your name: ")
Age <- readline("Enter your age: ")
paste("My name is" , name, "and I am ",Age, "years old.")
  

# Task 6
# Write a R program to create a sequence of numbers from 20 to 50 
# and find the mean of numbers from 20 to 50 and sum of numbers

print("Sequence of numbers from 20 to 50:")
print(seq(20,50))
print("Mean of numbers from 20 to 50:")
print(mean(20:50))
print("Sum of numbers from 20 to 50:")
print(sum(20:50))


# Task 7
# Write a R program to create a vector which contains 10 random integer values 
# between -50 and +50

vec<-c(-50,-45,-37,-21,-16,2,18,29,30,46)
vec

 

