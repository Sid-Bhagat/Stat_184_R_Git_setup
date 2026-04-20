library(ggplot2) #importing libraries
library(dplyr)
library(yarrr)

pirates |>
  mutate(
    age_range = cut(
      age,
      breaks = c(0, 20, 30, 40, 50, 60, 100),
      labels = c("0-20", "21-30", "31-40", "41-50", "51-60", "61+"),
      include.lowest = TRUE
    )
  ) |> # group pirate ages into ranges
  ggplot(aes(x = age_range, y = tattoos)) +
  geom_boxplot() + # compare tattoo counts across age groups
  labs(
    title = "Number of Tattoos Across Pirate Age Ranges",
    x = "Age Range",
    y = "Number of Tattoos"
  )

summary(pirates$age)

