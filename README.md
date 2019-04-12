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
<p> 3) References:<br>
<br><br>
[1] Data Source, https://www.kaggle.com/jsphyg/weather-dataset-rattle-package<br>
[2] Genifer Snipes, “Google Data Studio” , https://jlsc-pub.org/articles/abstract/10.7710/2162-3309.2214/<br>
[3] P. Chandrashaker Reddy, A. Suresh Babu, “Survey on weather prediction using big data analytics”,  https://ieeexplore.ieee.org/abstract/document/8117883<br>
[4] ZhanJie Wang , A B M Mazharul Mujib, “The Weather Forecast Using Data Mining Research Based on Cloud Computing”,   https://www.researchgate.net/publication/320795225_The_Weather_Forecast_Using_Data_Mining_Research_Based_on_Cloud_Computing<br>



