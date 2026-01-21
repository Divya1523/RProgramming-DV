#Load AirPassengers dataset in R & visualise the dataset using line chart that shows increase in air passengers over the given time period


AirPassengers

class(AirPassengers)
View(AirPassengers)

ap_df <- data.frame(
  year = time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)

ap_df_months <- data.frame(
  year = floor(time(AirPassengers)),
  month = cycle(time(AirPassengers)),
  passengers = as.numeric(AirPassengers)
)

ap_df_months

plot(AirPassengers,
     type = 'o', #for point
     lwd = 0.9, #line width
     main = "Air Passengers Trend Analysis",
     xlab = "Months",
     ylab = "No. of Passengers",
     col = "blue"
)
￼


plot(AirPassengers,
     type = 'l', #for line
     lwd = 2, #line width
     main = "Air Passengers Trend Analysis",
     xlab = "Months",
     ylab = "No. of Passengers",
     col = "blue"
)
￼


points(AirPassengers,
       type = 'o',
       pch = 17,
       cex = 1.2,
       col = "red")
grid()


￼

library(ggplot2)

ggplot(ap_df, 
       aes(x = year,
           y = passengers)) +
  geom_line(color = "black", linewidth = 0.5) +
  labs(
    title = "Air Passengers Trend Analysis",
    caption = "From  AirPassengers dataset",
    x = "Month",
    y = "Number of Passengers",
    subtitle = "From 1949 to 1960"
  ) +
  geom_point(color = "blue")+
  geom_smooth(se=FALSE, color = 'red')+
  theme_light()


￼
