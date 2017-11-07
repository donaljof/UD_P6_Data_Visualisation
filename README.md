# UD_P6_Data_Visualisation
Data Vis Project

# Summary

Visualisation of the impact of economic downturn on net migration in the Republic of Ireland. 
The key finding beig communicated is the change in economic circumstances had a suppressive effect on immigation into Ireland and prompted increased emmigration out of the country. 
As a result the trend of net migration that preceeded the crash was revers, abiet temporaraly.

# Introduction

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

All the data for this visualization is downloaded from the Central Statistics Office (www.cso.ie) from their publcly available datasets. 
The data available from the CSO resulted in initial limitations on the scope of the visualization as a long term dataset is not available throught the website. Other restrictions included limitations in the immigration/emmigration breakdown by country, where the EU countries have been merged together depending on their join date. 
As the CSO is a branch of the government of the Republic of Ireland, no data is provided for Northern Ireland.
Data cleaning and tidying was completed using R after some initial manipulation in Excell (removing nuisance empty rows/columns). For the immigration/emmigation datasets the
column headers were renamed to a more consistant convention, gathered together to a longform dataset and split apart to create seperate columns for gender and nationality.
The initial unemployement data was first filtered to match the migration dataset timeframe (2001-2016) and summarized to a yearly mean from teh initial monthly format. 
Following the summarization a similar approach to the migration data of header renaming, gathering and splitting was used. 
Finally both all three seperate data frames were merged together and exported as a .csv file for use in the visualization.

# Design

Initial design ideas included showing a map of the world to communicate the parts of the world where Irish people most emmigrate to and the coutries that contibute most to immigration in Ireland but the CSO dataset was not detailed enough for this concept. 
The focus was instead on graphing both immigration/emmigration/unemployment as line graphs in the same plot to show how all three change over time, highlighting the impact of increasing unemployment on net migration. 
A rev0 line graph was created as part of the data cleaning (saved as "R_line_chart.jpg") to visualize a basic line graph with the data.
The main graphic design was to plot Emigration, Immigration and Unemployment on the same plot and use color to distinguish between them. 
This required creating a plot with 2 y axes


# Feedback

Adhoc feedback
axis not clear 

What do you notice in the visualization?
What questions do you have about the data?
What relationships do you notice?
What do you think is the main takeaway from this visualization?
Is there something you don’t understand in the graphic?

What do you notice in the visualization?

The first thing I notice is that unemployment has gone down  over the years but emigration has not.
I notice that unemployment is going down. Emigration and immigration are almost balancing each other
That's standing out I think

What questions do you have about the data?

How is the unemployment percentage calculated? Also are the immigrant and emigrant population considered in the calculation?
Shouldn't both y axis be normalised to the same scale?

What relationships do you notice?

I don't notice any clear relationship. E.g. when the unemployment is at its peak there is peak in emigration. One can naively expect that. Also the immigration number also does not correlate with unemployment .
It seems at the moment the immigration and emigration is almost balancing each other. I think a histogram would be good way of plotting it maybe?

What do you think is the main takeaway from this visualization?

Is there something you don’t understand in the graphic?
I am still concerned with the scale and don't understand how the data was condidered

I am not sure if I understood the point of plotting these in this way. Maybe you have a better answer to this

# Resources#

a README.md file that includes four sections...
Summary - in no more than 4 sentences, briefly introduce your data visualization and add any context that can help readers understand it
Design - explain any design choices you made including changes to the visualization after collecting feedback
Feedback - include all feedback you received from others on your visualization from the first sketch to the final visualization
Resources - list any sources you consulted to create your visualization
