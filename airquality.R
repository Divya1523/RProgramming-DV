airquality
?airquality
class(airquality)
View(airquality)
hist(airquality$Temp)

hist(airquality$Temp,
     breaks = 7,
     main = "Basic Histogram of Temperature",
     xlab = "Temperature",
     ylab = "Frequency",
     labels = TRUE,
     col = "lavender",
     border = "black"
)

library(ggplot2)
ggplot(
  airquality,
  aes(x=Temp)
)+
  geom_histogram(
    bins = 25,
    fill = "lavender",
    col = "black"
  )+
  labs( 
    title = "GGplot - Histogram",
    y = "Frequency")+
  facet_wrap(~Month) +
  theme_dark()
