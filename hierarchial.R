# Load required libraries
library(cluster)

# Read the dataset
Data <- read.csv("C:/Users/HP/Downloads/Data.csv")

# Remove rows with missing values
Data <- na.omit(Data)

# Convert data to numeric matrix
Data <- as.matrix(Data)
Data
# Hierarchical clustering
hc <- hclust(dist(Data))

# Plot dendrogram
plot(hc, hang = -1, main = "Dendrogram of Hierarchical Clustering")
