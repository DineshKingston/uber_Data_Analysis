data <- data %>%
  mutate(hour = hour(Date.Time))

# Group by day and hour and summarize
day_hour_data <- data %>%
  group_by(day, hour) %>%
  summarize(Total = n())

# Display the resulting datatable
datatable(day_hour_data)

day_hour_data <- data %>% group_by(day, hour) %>% dplyr::summarize(Total = n())
datatable(day_hour_data)


ggplot(day_hour_data, aes(day, hour, fill = Total)) + 
  geom_tile(color = "white") + 
  ggtitle("Heat Map by Hour and Day")
