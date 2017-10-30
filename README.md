# UD_P6_Data_Visualisation
Data Vis Project

# Introduction and Summary

The island of Ireland has always been associated with large scale emmigaration of its people to all corners of the world. 
This historical trend of mass emmigaration was reversed during the period of dramatic economic growth that started in the late 90's and became known as "The Celtic Tiger".
During this period the Republic of Ireland became a recipient of large scale immigration for the first time since the formation of an independant Irish state.
The economic boom was followed by an economic bust beginning in 2008 and intensifying in the years after. 
Once again the Republic of Ireland became a nation of net emmigration as unemplyment, especially in young people, climbed. The purpose of this visualization is to 
demonstrate the impact on net migration in the Republic of Ireland from just before this economic crisis to the present. Since there are many measures of econimic activity the
percentage unemplyment in the country will be used as a proxy for the overall economic health. Along side unemployment figures the yearly immigration and emmigaration figuresfor the 
country from 2006 to 2016 are used to highlight the impact that the recession had on both and demonstrate the reversal in net migration was influenced by the economy.
In addition, the aim is to produce an interactive graphic that allows the impact of the economic downturn and subsequent recovery to be broken quantified and broken down by gender, nationality and age.

# Data Sources and Cleaning

All the data for this visualization is downloaded from the Central Statistics Office (www.cso.ie) from their publcly available datasets. The data available from the CSO resulted 
in initial limitations on the scope of the visualization as a long term dataset is not available throught the website. Other restrictions included limitations in the immigration/emmigrationm
breakdown by country, where the EU countries have been merged together depending on their join date. The limited breakdown by country prevented an initial idea to link immigration to 
Ireland by country to a map of the world. As the CSO is a branch of the government of the Republic of Ireland, no data is provided for Northern Ireland.
Data cleaning and tidying was completed using R after some initial manipulation in Excell (removing nuisance empty rows/columns). For the immigration/emmigation datasets the
column headers were renamed to a more consistant convention, gathered together to a longform dataset and split apart to create seperate columns for gender and nationality.
The initial unemployement data was first filtered to match the migration dataset timeframe (2001-2016) and summarized to a yearly mean from teh initial monthly format. 
Following the summarization a similar approach to the migration data of header renaming, gathering and splitting was used. Finally both all three seperate data frames were
merged together and exported as a .csv file for use in the visualization.


