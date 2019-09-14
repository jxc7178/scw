gapminder <- read.table ("gapminder.txt",header =TRUE)

fahrenheit_to_celcius <- function(temp){
  celsius <- (temp - 32) * 5/9
  return(celsius)
}
celsius_to_kelvin <- function(temp_c){
  kelvin <- temp_c + 273.15
  return(kelvin)
}

fahrenheit_to_kelvin <- function(temp_f){
celsius <-fahrenheit_to_celcius(temp_f)
 kelvin <- celcius_to_kelvin(celsius) 
}

MeanlifeExp <- function(continent){
subset_continent_gapminder <- gapminder[gapminder$continent==continent, "lifeExp"]
mean_life_exp <-mean(subset_continent_gapminder)
}


return