library(dplyr) # importing libraries
library(yarrr)

# calculate summary statistics by age range
stats_summary <- pirates |>
  mutate(
    age_range = cut(
      age,
      breaks = c(0, 20, 30, 40, 50, 60, 100),
      labels = c("0-20", "21-30", "31-40", "41-50", "51-60", "61+"),
      include.lowest = TRUE
    )
  ) |>
  group_by(age_range) |>
  summarise(
    mean_tattoos    = mean(tattoos, na.rm = TRUE),
    median_tattoos  = median(tattoos, na.rm = TRUE),
    sd_tattoos      = sd(tattoos, na.rm = TRUE),
    min_tattoos     = min(tattoos, na.rm = TRUE),
    max_tattoos     = max(tattoos, na.rm = TRUE),
    n               = n(),
    .groups = "drop"
  )

# export to CSV
write.csv(stats_summary, "pirate_tattoo_stats.csv", row.names = FALSE)

# print confirmation and preview
cat("Summary statistics exported to pirate_tattoo_stats.csv\n")
print(stats_summary)
