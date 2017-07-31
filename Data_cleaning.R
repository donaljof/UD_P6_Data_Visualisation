library(ggplot2)
library(dplyr)
library(tidyr)

setwd("C:/Users/donaljof/Downloads/")

IM <- read.csv("Estimated_Immigration_Persons in April_Thousand.csv")

colnames(IM)[1] <- "Year"

unique(IM$Year)

ggplot(IM, aes(x = IM$X, y = IM$All_nationalities)) +
  geom_line()

IM <- subset(IM, IM$Year >= 2006)

EM <- read.csv("Emmigration.csv",stringsAsFactors=FALSE, header = TRUE)

colnames(EM)[1] <- "Year"
unique(EM$Year)

colnames(EM)[4] <- "All.nationalities_Female"
colnames(EM)[10] <- "UK..1._Male_Female" 
colnames(EM)[13] <- "EU15.excluding.Irish.and.UK_Female"
colnames(EM)[16] <- "EU15.to.EU28.states_Female"
colnames(EM)[19] <- "Other.nationalities_Female"

ggplot(EM, aes(x  = Year, y = Irish)) +
  geom_line()

UN <- read.csv("Monthly_employment.csv",stringsAsFactors=FALSE, header = TRUE)

colnames(UN)[3] <- "Total_unemployed_thousands"
colnames(UN)[4] <- "Male_unemployed_thousands"
colnames(UN)[5] <- "Female_unemployed_thousands"
colnames(UN)[6] <- "Total_unemployed_percentage"
colnames(UN)[7] <- "Male_unemployed_percentage"
colnames(UN)[8] <- "Female_unemployed_percentage"

UN$Year <- substr(UN$Month, 1,4)

unique(UN$Year)

UN <- subset(UN, UN$Year >= 2006)

UN.sum <- UN %>% 
  select(-Month) %>%
  group_by(Year, Age.Group) %>%
  summarise_all(funs(mean)) %>%
  ungroup()

ungroup(UN.sum)

ggplot(UN.sum, aes(x = Year, y = Total_unemployed_percentage, 
                   color = Age.Group, group = Age.Group)) +
  geom_point() +
  geom_line()

