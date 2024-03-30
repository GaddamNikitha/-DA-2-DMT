# Load required libraries
library(cluster)

# Load the dataset
data <- read.csv("C:/Users/HP/Downloads/Data.csv")

# Check for missing values
missing_values <- sum(is.na(data))

# If missing values are present, handle them
if (missing_values > 0) {
  # If missing values are few, remove rows with missing values
  if (missing_values < nrow(data)) {
    data <- na.omit(data)
  } else {
    stop("Missing values are present in all rows of the dataset.")
  }
}

# Convert non-numeric values to numeric (if necessary)
data <- as.data.frame(apply(data, 2, as.numeric))

# Perform clustering with ROCK method
rock_clusters <- pam(dist(data), k = 5, cluster.only = TRUE)

# Calculate clustering statistics
rock_stats <- cluster.stats(dist(data), clustering = rock_clusters)

# Print cluster information
print(rock_stats)

# Plot dendrogram
plot(hclust(dist(data)), main = "Dendrogram for ROCK Clustering")
