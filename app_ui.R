else { 
  comparison_plot <- ggplot(compare1, compare2) +
    geom_line(compare1, mapping = aes(x = ((df1$df.year)), y = co2, color = country_one_name)) +
    gemo_line((compare2, mapping = aes(x = ((df1$df.year)), y = co2, color = country_two_names)) +
                scale_color_manual(name = "Country", values = c("blue", "black")) + 
    labs(
      title = paste("CO2 Emmision per Capita of", input$country_one, "vs",
      x = "Year",
      input$country_two, "from", input $year_range [1], "-", input $year_range [2]),
      y = "C02 Emmision",
      caption = "line graph comparing CO2 Emissions per capita"
})

return(comparison_plot)
})

output$comparison_plot <- renderPlot({
ggplot (plot)