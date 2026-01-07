#accessing info about the datset
?VADeaths

#checking the type of dataset
class(VADeaths)

#accessing help for unknown functions or classes
help(class)

#converting given dataset into a dataframe
va_df <- as.data.frame(VADeaths)

#to confirm if it is converted into a dataframe
class(va_df)

help("data.frame")

#Creating the view of the datset in the form of a table
View(va_df)

#creating a new column in the dataframe 
va_df$AgeGroups <- row.names(VADeaths)
View(va_df)
va_df

#changing the data into "Long" format using "reshape" function
va_long = reshape(va_df,
                  direction = "long",
                  varying = colnames(VADeaths),
                  v.names = "DeathRate",
                  timevar = "Population",
                  times = colnames(VADeaths)
                  )

View(va_long)

#building a basic histogram
hist(va_long$DeathRate)

#changing the title and labels
hist(va_long$DeathRate,
     main = "Basic Histogram of VA Deathrates",
     xlab = "VA DeathRates",
     ylab = "Frequency",
     labels = TRUE,
)

#changing the color and border of histogram
hist(va_long$DeathRate,
     main = "Basic Histogram of VA Deathrates",
     xlab = "VA DeathRates",
     ylab = "Frequency",
     labels = TRUE,
     col = "lavender",
     border = "black",
    # xlim = c(-80,80)
    )

#changing the number of bins / bin - width
hist(va_long$DeathRate,
     breaks = 5,
     main = "Basic Histogram of VA Deathrates",
     xlab = "VA DeathRates",
     ylab = "Frequency",
     labels = TRUE,
     col = "lavender",
     border = "black",
     # xlim = c(-80,80)
)

#data
#aesthetics
#geometrics
#facets
#statistics
#coordinates
#themes
#labels

library(ggplot2)
ggplot(
  va_long,
  aes(x=DeathRate)
)+
  geom_histogram(
    bins = 5,
    fill = "lavender",
    col = "black"
  )+
  labs( 
    title = "GGplot - Histogram",
    y = "Frequency")+
  #facet_wrap(~Population)
  theme_light()
