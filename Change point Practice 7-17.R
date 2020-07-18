#install.packages('changepoint')
#install.packages('changepoint.np')
library(changepoint)
library(changepoint.np)


#Example 
set.seed(1)
m1=c(rnorm(100,0,1), rnorm(100,5,1))
View(m1)
m1.amoc=cpt.mean(m1)
cpts(m1.amoc)
plot(m1.amoc)


m1.cusum=cpt.mean(m1, pen.value=1, penalty = 'Manual', test.stat='CUSUM')

#Example X
set.seed(1)
mv1=c(rexp(50,rate=1), rexp(50,5), rexp(50,2), rexp(50,7))
View(mv1)
mv1.pelt=cpt.meanvar(mv1,test.stat="Exponential", method='BinSeg', Q=10, penalty='SIC')

cpts(mv1.pelt)
param.est(mv1.pelt)
