# Load required library
library(cluster)

# Load the dataset
data <- read.csv("C:/Users/HP/Downloads/Data.csv")
data
# Assuming your dataset has numeric variables, you may need to preprocess your data if necessary

# Hierarchical Clustering (CHAMELEON)
hierarchical_clusters <- hclust(dist(data))

# Plot dendrogram
plot(hierarchical_clusters, main = "Dendrogram for Hierarchical Clustering")
