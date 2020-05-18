#Infant deaths by MD county
county.data <- data.frame(
  county_id = c(1:7),
  county_name = c("Garrett", "Baltimore City", "Baltimore County", "Howard", "Montgomery", "Prince George's", "Wicomico"),
  infant_mortality_rate_2013_2017 = c(9.6, 9.3, 6.4, 5.4, 5.0, 7.9, 9.4)
)


#Print Data Frame
print(county.data)

#Print Summary Statistics
print(summary(county.data))


#Extract Specific columns from data frame
result <- data.frame(county.data$county_name, county.data$infant_mortality_rate_2008_2012)
print(result)


#Extract first two rows of data frame
result2 <- county.data[1:2,]
print(result2)


#Extract the 3rd and 5th row with 2nd and 4th column
result3 <- county.data[c(3,5), c(2,4)]
print(result3)


#Edit to add column for infant deaths in 2017
county.data$infant_deaths_2017 <- c("2", "69", "64", "19", "58", "102", "14")

#Add new column 
county.data$White_infant_mortality_2017 <- c("4", "2.9", "3.1", "4", "3.3", "4", "12.5")

county.data$Black_infant_mortality_2017 <- c("4", "12.2", "12.4", "8.7", "6.5", "12.0", "12.1")

county.data$Hispanic_infant_mortality_2017 <- c("4", "4", "5.7", "4", "4.7", "5.0", "4")

infant_death_race <-county.data
print(infant_death_race)



#Create the second data frame
county.newdata <- data.frame(
county_id2 = c(8:14),
county_name2 = c("Garrett", "Baltimore.City", "Baltimore.County", "Howard", "Montgomery", "Prince.George's", "Wicomico"),
infant_mortality_rate_2008_2012 = c(4.9, 11.4, 6.6, 5.4, 5.1, 9.3, 7.8),
)

#Bind two data frames
county.finaldata <- rbind(county.data, county.newdata)
print(county.finaldata)


###https://health.maryland.gov/vsa/Documents/Reports%20and%20Data/Infant%20Mortality/Infant_Mortality_Report_2017_20180919.pdf
