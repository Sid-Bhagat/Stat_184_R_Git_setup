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
  geom_jitter(width = 0.2, alpha = 0.6, size = 3) + # scatter plot with jitter to avoid overplotting
  stat_summary(fun = "mean", geom = "point", color = "red", size = 4) +
  stat_summary(fun = "mean", geom = "line", aes(group = 1), color = "red", linetype = "dashed") +
  labs(
    title = "Number of Tattoos Across Pirate Age Ranges",
    x = "Age Range",
    y = "Number of Tattoos",
    caption = "Red dashed line represents mean tattoo count per age group"
  )

summary(pirates$age)
