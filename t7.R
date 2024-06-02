#Q1
library(ggplot2)
library(dplyr)
data(package="ggplot2")
data(economics, package="ggplot2")

#a
ggplot(economics, aes(pop, date))+
  geom_line()

#b
filter(date>as.Date("2005-01-01"))%>%ggplot(mapping = aes(date, pop))+
  geom_line() 

#Q2
#a
data(diamonds, package="ggplot2")

data(data = diamonds )+
  geom_bar(mapping=aes(x = cut))

#b
ggplot(diamonds, aes(x=carat), )+
  geom_histogram(bins=40)

#c
ggplot(diamonds, aes(carat))+
  geom_histogram(aes(group = clarity), bins=40)

#d
ggplot(diamonds, aes(x=carat, y=price))+
  geom_point()

#e
ggplot(diamonds, aes(x=carat, y=price))+
  geom_point(aes(group = color))

#f
ggplot(diamonds, aes(x = cut, y = carat))+
  geom_boxplot()
