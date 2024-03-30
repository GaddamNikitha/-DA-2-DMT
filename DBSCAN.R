# Load required libraries
library(fpc)

# Read the dataset
Data <- read.csv("C:/Users/HP/Downloads/Data.csv")

# Remove non-numeric columns (assuming the last column is the label/target)
Data <- Data[, sapply(Data, is.numeric)]

# Remove rows with missing values
Data <- na.omit(Data)

# Convert data to numeric matrix
Data <- as.matrix(Data)
Data
# DBSCAN clustering
dbscan_clusters <- dbscan(Data, eps = 0.5, MinPts = 5)

# Print cluster structure
cat("DBSCAN Cluster Structure:\n")
print(table(dbscan_clusters$cluster))

# Plot pie chart for cluster distribution
pie(table(dbscan_clusters$cluster))
