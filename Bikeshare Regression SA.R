
rm(list = ls())

library(ggplot2)

df <- read.csv("/Users/SallyA/Documents/R-for-Data-Science-and-Machine-Learning/Training Exercises/Machine Learning Projects/CSV files for ML Projects/bikeshare.csv", stringsAsFactors = FALSE)

#Check temperature and count scattered plot
base1 <- ggplot(df, aes(x=temp, y=count))
graph1 <- baseG + geom_point(aes(color=temp), alpha=0.5)

#Get Year and Month from DateTime column
df$Date <- format(as.POSIXct(df$datetime), "%Y-%m")

#Check Date and count and visualize the temprature
base2 <- ggplot(df, aes(x=Date, y=count))
graph2 <- base2 + geom_point(aes(color=temp), alpha=0.5) + scale_colour_gradient(high='red',low = "green")

#Check correlation between temperature and count
a_cor <- cor(df[ , c('temp','count')])

print(a_cor)

base3 <- ggplot(df, aes(x=season, y=count))
graph3 <- 

         