iris
?iris

class(iris)
head(iris)
str(iris)
View(iris)

barplot(table(iris$Species),
        main = "Count of Iris Species",
        ylab = "No. of flowers",
        xlab = "Species",
        col = "lavender"
)

mean_sepal <- tapply(iris$Sepal.Length, iris$Species, mean)
mean_sepal

barplot(
  mean_sepal,
  col = "pink",
  main = "Average Sepal Length by Species",
  ylab = "Length of mean sepal"
)

group_means <- rbind(
  Sepal = tapply(iris$Sepal.Length, iris$Species, mean),
  Petal = tapply(iris$Petal.Length, iris$Species, mean)
)
group_means

barplot(
  group_means,
  beside = TRUE,
  col = c("lavender", "pink"),
  legend.text = TRUE,
  main = "Grouped Bar Chart: Sepal vs Petal Length"
)

barplot(
  group_means,
  beside = FALSE,
  col = c("lavender", "pink"),
  legend.text = TRUE,
  main = "Stacked Bar Chart: Sepal vs Petal Length"
)
