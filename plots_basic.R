#BOXPLOT
stroop = read.csv(file = "projectWorkSpace/stroop.csv")
unique(stroop$gender)
boxplot(colors ~ gender, data= stroop, xlab="gender", ylab="time")
means= tapply(stroop$colors, stroop$gender == 2, mean)
points(means, col="red", pch=18)

#BAR CHART
cpi = c(3,2,4,-2)
qtr = c('Mar', 'Jun', 'Sep', 'Dec')
barplot(cpi, names.arg=qtr, xlab='Quarters', ylab='CPI % Change', col='blue')

#LINE GRAPH
food = c(4,2,3,4)
rent = c(5,4,7,2)
car = c(5,0,2,3)
quartz(height = 7, width = 7)
plot(food, type='o', col='purple', xlab='month', 
     ylab='expense %change', ylim=c(0,10), xaxt='none')
lines(rent, type='o', col='blue')
lines(car, type='o', col='black')
legend("bottomleft", legend=c('food', 'rent', 'car'),
       col=c('purple', 'blue', 'black'),
      lty=1, pch = 1, horiz = TRUE,
      bty='n')
axis(1,labels = c('Q1', 'Q2', 'Q3', 'Q4'), at = 1:4)