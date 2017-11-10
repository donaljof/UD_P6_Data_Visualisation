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
This required creating a plot with 2 y axes and decision was made to use only % unemployement data to prevent having dramatic shifts in scale. 
Color coding was included to differenciate the different data types, multiple iterations of the color choice were cycled though based on feedback and experimentation. The inititial color choices were were based on the standard CSS and were replaced with pastel shades. 
The new colors and a background yellow hue were discarded based on adhoc feedback that the graphics were less clear and bolder colors re-introduced. A key was added to make it cleat what the data features were and labelling added to the y axes. 
Based on feedback on the static version a key was added to the x axis and the y axis keys made clearer.
To incorporate interactivity and based on feedback that the year to year changes were not clear, a pop up tooltip was added to appear when mousing over each circle on the data. The feedback on the static graph suggested that purpose of the circles was unclear so they were reduced in size and made the same color of the lines. The main purpose of the final circles is to act at mouse over points.
For the final graphic filter boxes are included to create a self directed feature to the visualization and allow the user to explore the relationships for different nationalities, sexes and age groupings.
Adhoc feedback collected suggested the change in axes was abrupt and it was not clear what they were movign to/from so a delay was intoduced to the transitions to allow the viewer to comprehend the data shift and axis change sepratley.


# Feedback

Some adhoc feedback was collected while working on the project, some of it is recorded here. There were also several suggestions that were incorperated into the visualization as it was formed and other feedback I forgot to record.
- Axis not clear.
- Colors wrong, don't look good.
- Background color is distracting.
- The scales shift to fast and are not understandable.
- Title is to long and wordy.
Most of these result in adjustments and the title was shortened from "Economic Recession and its Impact on Immigration and Emigration in Ireland (2006 - 2016)" to "Immigration and Emigration in Ireland (2006 - 2016)".


A gist was created for a static version of the graphic and feedback collected: https://gist.github.com/donaljof/90d3093c5a82ef96bd2cbfe7a03c3802
Static graph feedback:

What do you notice in the visualization?
A large increase in the unemplyment and changes in immigration and emmigration.

What questions do you have about the data?
Do the circles have meaning? Why isn't there more years that go back further so the long term effects can be seen, that would be nice.
What is the scale for immigration.

What relationships do you notice?
Increased unemployment rises immigration and might have some impact on immigration.

What do you think is the main takeaway from this visualization?
That unemployment increased dramatically in 2009/2010 and this happened at the same time as a big drop in immigration and a increase in emmigration. 

Is there something you don’t understand in the graphic?
Unsure of the dots and what they are for. Hard to tell what year on year changes are.

What do you notice in the visualization?

The first thing I notice is that unemployment has gone down  over the years but emigration has not.
I notice that unemployment is going down. Emigration and immigration are almost balancing each other
That's standing out I think.

What questions do you have about the data?

How is the unemployment percentage calculated? Also are the immigrant and emigrant population considered in the calculation?
Shouldn't both y axis be normalised to the same scale?

What relationships do you notice?

I don't notice any clear relationship. E.g. when the unemployment is at its peak there is peak in emigration. One can naively expect that. Also the immigration number also does not correlate with unemployment .
It seems at the moment the immigration and emigration is almost balancing each other. I think a histogram would be good way of plotting it maybe?

What do you think is the main takeaway from this visualization?
Unemplyment has had a large increase and is now dropping. During this time immigration has gone down initially but its not clear if here is correllation. Emmigration is going up at the same time but immigration is now above it again.

Is there something you don’t understand in the graphic?
I am still concerned with the scale and don't understand how the data was condidered.

# Resources

https://github.com/d3/d3/blob/master/API.md //D3 V4 docs
https://bl.ocks.org/mbostock/3883245 // Basic line chart
https://www.w3schools.com/css/ // CSS tutorial and info
http://bl.ocks.org/jfreels/6734823 // Selection Box additions
http://bl.ocks.org/d3noob/a22c42db65eb00d4e369 // Mouse over pop ups and blatent theft of nice styling
https://bost.ocks.org/mike/transition/ // Transitions
