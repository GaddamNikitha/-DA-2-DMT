# Load required libraries
library(cluster)

# Load the dataset
data <- read.csv("C:/Users/HP/Downloads/Data.csv")
data
# Assuming your dataset has numeric variables, you may need to preprocess your data if necessary

# Check for missing values
if (anyNA(data)) {
  stop("Missing values are present in the dataset.")
}

# Convert non-numeric values to numeric (if necessary)
data <- as.data.frame(apply(data, 2, as.numeric))

# Perform clustering with DIANA method
diana_clusters <- diana(data)

# Plot dendrogram
plot(diana_clusters, main = "Dendrogram for DIANA Clustering")
