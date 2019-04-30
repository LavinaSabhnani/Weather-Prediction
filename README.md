# KBS PROJECT 
<br>

To Predict whether it will rain tomorrow or not? <br>

1) Research question:  what is the group trying to learn or question to answer?  Who is interested (audience)? 
<p> We are predicting whether it will rain or not tomorrow by using machine learning algorithms such as Logistic regression and KNN models. People who plan their day according to weather conditions will be strongly benefitted. It will also help people whether to carry an umbrella or not. <br>
 
 2) Domain and Data: Identify domain and source(s) of data
	<p>Domain: Weather forecasting. Precisely to predict whether it will rain tomorrow or not? </P>
  <p>Source: The dataset we took is from Kaggle and the link to the dataset is https://www.kaggle.com/jsphyg/weather-dataset-rattle-package</p>
<br>

a) Preprocessing that may be necessary 
<p>Preprocessing mainly comprises of cleaning the dataset and eliminating the columns which won’t be imperative to the prediction of the target feature. For our dataset, we will be implementing following steps to clean our dataset for effective accuracy:<p><br>
1.Null-value elimination<br>
2.Removing Outliers<br>
3.Categorical to numerical conversion<br>
4.Review correlation matrix for checking the relation between columns<br>
<p>Further more we’ll be assessing the columns which won’t be having a lot of importance and try to eliminate them. Some of the columns contains similar type of information and if it made the model work faster we might integrate their data into a single column.</p><br>

b)Size of Data:
<P>This dataset contains daily weather observations from numerous Australian weather stations and it has 142k rows over 24 columns which describe various factors that contribute in rainfall prediction.<br>
 
c)Tentative plan for analysis on GCP<br><br>

1. EDA and preprocessing:
<p>The preprocessing part involves observing columns and their importance in order to predict if it’s going to rain tomorrow or not. We’ll be getting rid of columns which doesn’t contribute to the prediction and keeping those which will make an impact when selected as features for the model. Exploratory data analysis will involve visualizing the dataset by using different features form the dataset. To name some we can create a graph for location distribution of the rain then we can analyze if the location column plays an important role in predicting our target feature. Other features such as WinDir3pm or WinDir9pm can also be used to create a distribution graph to observe the difference and infer observations from that.</p>

2. Dashboard for User group, Dashboard for Data Engineers:
<p>Dashboard for user will consist of basic graphs such as a donut graph depicting rain today variation (yes or no). The aim of the dashboard will be to convey less complex information in terms of visuals so that one can easily correlate between different features used to predict the target variable. Dashboards for Data Engineers will have graphs depicting correlation b/w different features and what can be used as a dominant feature for prediction and what can be ignored. The crux of this process would be assessing the dashboard and the graphs and proper knowledge about the database.</p>

3. GCP further processing - ML:
<p>GCP will be used to run the models using pyspark. We’ll be using both datalab and ssh terminal to try and run the models. Our definite goal is to run Logistic regression and KNN models on the dataset. If we’re successfully able to do that, we would be to try running more complex model such as decision tree or random forest to learn in-depth about running machine learning model in GCP.</p>

4. Evaluating the result:
<p>We’ll be running two models, Logistic Regression and KNN on the given dataset.     In order to evaluate the result of these two model and how good are they at predicting the target variable we’ll be using different measure to calculate the effectiveness of a model such as accuracy score, recall score or its precision. We’ll be comparing all the values for the said models and give a result as to which model works better for the current dataset.</p> 

5. Steps for production model:
<p>The models that we’ll be training on the dataset- Logistic Regression, and KNN will be deployed using DataFlow. The dataset will be read using BigQuery, then for every record, model prediction will be carried out, and the results are written back to BigQuery. </p>

6. Final Dashboard for the User:
<p>The final dashboard will consist of predicted data in form of a graph and it will depict the results of different model. The dashboard will also have a graph showing the model used along with their evaluating score. </p>

 

<p>At this stage we have already completed the steps 1 and 2 from our plan that is to create teh dashboards from user perspective and data analyst perspective. We have also completed the pre-processing of our dataset and EDA. We will from now on be focusing on the further steps to complete the project succesfully by predicting whether it will rain tomorrow or not accurately. </p>
<br><br>

<p> 3) Dashboard <br>
<br>Screenshot of the dashboard created in Google Cloud Platform: <br> <br>
	
![alt text](https://github.com/sairam0808/sairam0808.github.io/blob/master/Images/dashboard_img_1.png)

<br><br>

<p> 4) Adding new features to the dataset:<br>

<p> We have added 4 new features to our dataset namely: Altitude, MoonPhase, Longitude and Latitude. The changes were so small that it made only .01 difference in the whole prediction. Upon researching more about the dataset we have added MoonPhase paramemeter, we observed that there were not so demonstrated changes in the prediction as out dataset was already using lot of important parameters used in predicting rain and MoonPhase did not have greater weightage than them. So we use MoonPhase field in our prediction and run the previous models as mentioned above again including the MoonPhase field in our dataset. Our motive was to learn more about the google cloud and see how we can add the moonphase attribute into the dataset. Upon doing that, we ran the models again on the dataset as talked earlier and compared the accuracy we got from both the models. We also added altitude, latitude and longitude but again they did not provide much information about the changes or the effects on rainfall. <p><br>
	
<p> We might be wondering what MoonPhase is so let us dive deep into what it means. <p><br>
	
<p> The moon is said to influence the chances of rainfall. When the moon is high in the sky, it creates bulges in the planet's atmosphere that creates imperceptible changes in the amount of rain that falls below. <br>
Also, the new University of Washington research to be published in Geophysical Research Letters shows that the lunar forces affect the amount of rain - though very slightly. Tsubasa Kohyama, a UW doctoral student in atmospheric sciences and John Wallace, UW professor of atmospheric sciences have studied the changes in Air pressure with change in phases of the moon. When the moon is overhead, its gravity causes Earth's atmosphere to bulge toward it, so the pressure or weight of the atmosphere on that side of the planet goes up. High pressure increases the temperature of air parcels below. Since warmer air can hold more moisture, the same air parcels are now farther from their moisture capacity. The change is only about 1 percent of the total rainfall variation, though, not enough to affect other aspects of the weather or for people to notice the difference. Instead, this effect could be used to test climate models, he said, to check if their physics is good enough to reproduce how the pull of the moon eventually leads to less rain. Though the researches are still exploring the topic to see whether certain categories of rain, like heavy downpours, are more susceptible to the phases of the moon, and whether the frequency of rainstorms shows any lunar connection.<p><br>
	
<p> Moving ahead we notice that Australia is a drought prone continent. It has seen a lot of draught over the years and some of the cities experienced very less rainfall when compared to others. From the dataset, we already have the amount of rainfall of a particular city that experienced rainfall for a particular year. From that, we were able to see which cities had a greater rainfall when compared to others. We came up with two visualizations to support our case. <p> <br>

![alt text](https://github.com/sairam0808/sairam0808.github.io/blob/master/Images/droughtimg1.jpg)

<br> 
<p> The visualization above shows the distribution of rainfall according to different cities. It can be seen that Cobar has the least amount of rainfall observed over the year. Since it is a drought prone continent, it makes sense to look over the cities which has a lesser rainfall as they are more prone to be affected by the drought. Upon analyzing more and going through more datasets pertaining to rainfall in Australia it was found that the lowest amount of rainfall was observed during the years 2008-2009. This is the time when Australia observed it's most hottest season. If we look at the above visualization, we can analyze that during these times, cities like Cobar needed more attention as it was most affected by it. <p>
<br>

![alt text](https://github.com/sairam0808/sairam0808.github.io/blob/master/Images/droughtimg2.jpg)

<br>
<p> The climatic pattern of Australia doesn’t indicate anything substantial and it keeps on changing. To acknowledge that, We tried looking into some more data related to climate of Australia and got to know about the historical pattern. There are lot of maps and graphs available to public on Australian government website which were used to analyze more about the weather and climate conditions in Australia. <p><br>

<p> Effect of Rainfall in Drought prediction:<p><br>

<p>The report shows the studies of the weather and compares rainfall period with the long-term average, and then projects if it is below average and by how much.

We see that eastern Australia has been experiencing drier weather than normal conditions since 2013, despite reasonable rainfall in 2016.<p>
	
![alt text](https://github.com/sairam0808/sairam0808.github.io/blob/master/Images/rainfallmaps.jpeg)

<br>
<p>Observations:<p><br>

<p>The research shows a change in rainfall patterns in Australia in the past century:

<P>- It was found that the most recent period, the rainfall in the south is quite unusual – there seems to be less rainfall, especially during the cool season.
- The other observation was that, the northern Australia was getting wetter than ever before in the warm season specifically.<P><br>

<p>Below is the timeline shows the annual rainfall "anomaly", that is how high or low the total for a given year is in relation to the long-term average. The maps show the geographic distribution of rainfall, or lack of rainfall:<p>
	
![alt text](https://github.com/sairam0808/sairam0808.github.io/blob/master/Images/graphrainfall.png)
<br>

<p> We have really high variability in the rainfall and temperature. So, when it does rain, more of that water is likely to be lost to the atmosphere through evaporation than before human-caused climate change.<p><br>
	
![alt text](https://github.com/sairam0808/sairam0808.github.io/blob/master/Images/rainfallmaps1.jpeg)
<br>


<br>	

<p> 5) References:<br>
<br>
[1] Data Source, https://www.kaggle.com/jsphyg/weather-dataset-rattle-package<br>
[2] Genifer Snipes, “Google Data Studio” , https://jlsc-pub.org/articles/abstract/10.7710/2162-3309.2214/<br>
[3] P. Chandrashaker Reddy, A. Suresh Babu, “Survey on weather prediction using big data analytics”,  https://ieeexplore.ieee.org/abstract/document/8117883<br>
[4] ZhanJie Wang , A B M Mazharul Mujib, “The Weather Forecast Using Data Mining Research Based on Cloud Computing”,   https://www.researchgate.net/publication/320795225_The_Weather_Forecast_Using_Data_Mining_Research_Based_on_Cloud_Computing<br>
	
<p> 6) Team Members and duties: <p><br>
	
<p>Harshal Sharma: Ran logistic using BigQuery. This was part of a group assignment. It was done by following the steps given in the tutorial for the same.  Framed project flow and helped with deciding the steps required for the project. Prepared dashboards using Google DataStudio.<p><br> 
<p>Lavina Sabhnani: Ran models such as logistic regression and random forest on the dataset with Dataflow on google cloud before and after adding new features to the already present dataset. Performed preprocessing on the dataset. Visualized the data and results using python notebook on dataflow.<p><br> 
<p>Sairam Rajagopalan: Created and updated the github repository and website. Performed preprocessing on the dataset. Ran logistic using BigQuery. This was part of a group assignment. It was done by following the steps given in the tutorial for the same.<p><br>
<p>Sonika Kannegalla: Performed changes to the dataset using MoonPhase function. Researched more into the drought aspect of Australian climate. Framed research questions. Ran models such as logistic regression and random forest on the dataset with Dataflow on google cloud before and after adding new features to the already present dataset.<p><br>	



