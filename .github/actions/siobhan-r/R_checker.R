library(gapminder)

test_example <- list(
  name = "Continents sorted",
  fun = "continents.gdp",
  expect = data.frame(continent = c("cont1", "cont2"), gdp = c(32*42, 21*52))
)

test_example
