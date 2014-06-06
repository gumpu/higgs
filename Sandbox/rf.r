
require(randomForest)
dataset <- read.table("../Raw/training.csv", sep=",", header=TRUE)
model <- randomForest(Label~.-Weight,
    dataset, ntree=10, do.trace=TRUE, importance=TRUE)

