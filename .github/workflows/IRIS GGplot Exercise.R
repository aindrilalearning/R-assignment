


# Exercises for ggplot
install.packages("Rtools")
install.packages("ggplot")
library(ggplot2)
?iris
names(iris)
head(iris)

# Exercise 1
# Plot density chart for column Sepal Width of Iris Dataset. Hint : density().
# 
d <- density(iris$Sepal.Width) # returns the density data
plot(d,main="Kernel Density of Sepal Width") # plots the results


# Exercise 2
# Compare Sepal.Length with Sepal.Width. Also apply Color format wrt Species
# Hint : point().
# 
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point()

# Exercise 3
# This time you have to make bar chart for Species. Also try to fill it with unique colors
# Hint : bar().
# 
ggplot(iris, aes(x = Species)) + geom_bar(fill = rainbow(3))






# Exercise 4
# You Nailed it till now.
# This time, create object 'df' and save "iris" dataset to it.
# Assuming flowers dimensions are square in shape, you have to find area
# of sepal (lentgh * breadth) and petal(lentgh * breadth).
# Then compare the areas and use color option to differentiate wrt
#'Species'
# Add title, ylab, xlab.
# Hint : mutate funtion of dplyr and bar.
# 

library(dplyr)
df=iris

df %>%
  mutate(sepal.area = Sepal.Length* Sepal.Width , petal.area = Petal.Length * Petal.Width)

ggplot(df, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point()

