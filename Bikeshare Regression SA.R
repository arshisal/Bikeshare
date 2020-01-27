
rm(list = ls())

library(ggplot2)

df <- read.csv("/Users/SallyA/Documents/R-for-Data-Science-and-Machine-Learning/Training Exercises/Machine Learning Projects/CSV files for ML Projects/bikeshare.csv", stringsAsFactors = FALSE)

baseG <- ggplot(df, aes(x=temp, y=count))

graph <- baseG + geom_point(aes(color=temp), alpha=0.5)

df$Date <- format(as.POSIXct(df$datetime), "%Y-%m")

base2 <- ggplot(df, aes(x=Date, y=count))

graph2 <- base2 + geom_point(aes(color=temp), alpha=0.5) + scale_colour_gradient(high='red',low = "green")

a <- cor(df[ , c('temp','count')])

print(a)


         