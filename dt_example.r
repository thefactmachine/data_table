
data(AirPassengers)
AP <- AirPassengers
AP

plot(AP, ylab = "Passengers (1000's)")

layout(1:2)
plot(aggregate(AP))
boxplot(AP ~ cycle(AP))



www <- "http://www.massey.ac.nz/~pscowper/ts/Maine.dat"
Maine.month <- read.table(www, header = TRUE)


df.test <- data.frame(country = c("OZ", "NZ",  "CH"), value = c(100, 130, 30))
vct_val <- df.test$value
names(vct_val) <- df.test$country
lst_test <- list()
lst_test[[as.character(2000)]] <- vct_val
lst_test




attach(Maine.month)
class(Maine.month)

# =========================================================================
library(data.table)
set.seed(45L)

DT <- data.table(V1=c(1L,2L),
                 V2=LETTERS[1:3],
                 V3=round(rnorm(4),4),
                 V4=1:12)

DT[3:5,]

DT[ V2 == "A"]

DT[ V2 %in% c("A","C")] 

# returns a vector
DT[,V2]

# a data frame
DT[,.(V2,V3)]

# .() is an alias to list(). If .() is used, the returned value is a data.table. 
# If .() is not used, the result is a vector
DT[,sum(V1)] 

#
DT[,.(Aggregate = sum(V1), Sd.V3 = sd(V3))]
