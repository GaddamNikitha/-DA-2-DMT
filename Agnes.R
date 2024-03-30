# Load required libraries
library(cluster)

# Read the dataset
Data <- read.csv("C:/Users/HP/Downloads/Data.csv")

# Remove rows with missing values
Data <- na.omit(Data)

# Convert data to numeric matrix
Data <- as.matrix(Data)
Data
# Compute dissimilarity matrix
dist_matrix <- dist(Data)

# AGNES clustering
agnes_clusters <- agnes(dist_matrix) 

# Plot dendrogram
plot(agnes_clusters, hang = -1, main = "Dendrogram of AGNES Clustering")
