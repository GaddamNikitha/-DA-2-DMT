# Load required libraries
library(cluster)

# Load the dataset
data <- read.csv("C:/Users/HP/Downloads/Data.csv")

# Check the structure of the dataset
str(data)

# Assuming your dataset has numeric variables, you may need to preprocess your data if necessary

# Check for missing values
if (anyNA(data)) {
  stop("Missing values are present in the dataset.")
}

# Convert non-numeric values to numeric (if necessary)
data <- as.data.frame(apply(data, 2, as.numeric))

# Perform clustering with CLARA method
clara_clusters <- clara(data, k = 5)  # You can change the number of clusters as needed

# Print cluster information
print(clara_clusters)

# Plot dendrogram (Not applicable for CLARA, so printing cluster sizes)
pie(table(clara_clusters$clustering), main = "Pie Chart for CLARA Clustering")
