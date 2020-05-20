#Infant deaths by MD county
county.data2 <- data.frame(
  county_id2 = c(1:7),
  county_name2 = c("Garrett", "Baltimore City", "Baltimore County", "Howard", "Montgomery", "Prince George's", "Wicomico"),
  infant_mortality_rate_2013_2017 = c(9.6, 9.3, 6.4, 5.4, 5.0, 7.9, 9.4)
)


infant_death_county17 <-county.data2

#order data before plotting
library(tidyverse)
library(viridis)
require(dplyr)
infant_death_county17 %>% arrange(infant_mortality_rate_2013_2017)

#Create a bar graph of data frame for infant mortality years 2013-2017
library(tidyverse)
require(dplyr)
infant_death_county17 %>% arrange(infant_mortality_rate_2013_2017)
library(ggplot2)

ggplot(county.data2) +
  geom_col(aes(x = county_name2, y = infant_mortality_rate_2013_2017), fill = magma(7)) +
  theme(axis.text = element_text(size = 5.5)) +
  labs(title = "Infant Mortality Rate by County from 2013-2017",
       caption = "Data Source: health.maryland.gov")





#Create the second data frame
county.newdata2 <- data.frame(
  county_idnew = c(8:14),
  county_namenew = c("Garrett", "Baltimore.City", "Baltimore.County", "Howard", "Montgomery", "Prince.George's", "Wicomico"),
  infant_mortality_rate_2008_2012 = c(4.9, 11.4, 6.6, 5.4, 5.1, 9.3, 7.8)
)


infant_death_county12 <-county.newdata2

#order data before plotting
library(tidyverse)
require(dplyr)
infant_death_county12 %>% arrange(infant_mortality_rate_2008_2012)

#Create a bar graph of data frame for infant mortality years 2008 to 2012
library(tidyverse)
require(dplyr)
infant_death_county12 %>% arrange(infant_mortality_rate_2008_2012)
library(ggplot2)

ggplot(county.newdata2) +
  geom_col(aes(x = county_namenew, y = infant_mortality_rate_2008_2012), fill = topo.colors(7)) +
  theme(axis.text = element_text(size = 5.5)) +
  labs(title = "Infant Mortality Rate by County from 2008-2012",
       caption = "Data Source: health.maryland.gov")




#Bind two data frames
county.finaldata <- rbind(county.data, county.newdata)
print(county.finaldata)



