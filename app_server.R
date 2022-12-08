server <- function(input, output) {
  compare1 <- reactive ({
    compare1 <- df1 %>%
      filter(df.country == input$country_one) %>%
      mutate(country = df.country, co2 = df.co2_per_capita) %>%
      filter((df.year) > input$year_range[1], (df.year) < input$year_range[2] %>%
               select((df.year), country, co2)
  })
    compare2 <- reactive ({
      compare2 <- df1 %>%
        filter(df.country == input$country_two) %>%
        mutate(country = df.country, co2 = df.co2_per_capita) %>%
        filter((df.year) > input$year_range[1], (df.year) < input$year_range[2]) %>%
        select((df.year), country, co2)
      
      country_one_name = as.character(input$country_one)
      country_two_name = as.character(input$country_two)
    })