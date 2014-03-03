#Hacks for R

## 1. Convert Histogram to probability density function/frequency plot
h <- hist(vec, breaks = 100, plot=FALSE)
h$counts=h$counts/sum(h$counts)
plot(h)

##2. Over lapping plots example
# Main thing to do is use the "add=T"

#Random numbers
h2<-rnorm(1000,4)
h1<-rnorm(1000,6)

# Histogram Grey Color
hist(h1, col=rgb(0.1,0.1,0.1,0.5),xlim=c(0,10), ylim=c(0,200), main="Overlapping Histogram")
hist(h2, col=rgb(0.8,0.8,0.8,0.5), add=T)
box()

# Histogram Colored (blue and red)
hist(h1, col=rgb(1,0,0,0.5),xlim=c(0,10), ylim=c(0,200), main="Overlapping Histogram", xlab="Variable")
hist(h2, col=rgb(0,0,1,0.5), add=T)
box()

## 3. Remove all "NA"s from a vector
d <- d[!is.na(d)]