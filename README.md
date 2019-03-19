# sairam0808.github.io
<!DOCTYPE html>
<html>
<body>
<h1>Hello World</h1>
<p>I'm hosted with GitHub Pages.</p>
</body>
</html>


 Preprocessing that may be necessary 
Preprocessing mainly comprises of cleaning the dataset and eliminating the columns which won’t be imperative to the prediction of the target feature. For our dataset, we will be implementing following steps to clean our dataset for effective accuracy:
Null-value elimination
Removing Outliers
Categorical to numerical conversion
Review correlation matrix for checking the relation between columns
Further more we’ll be assessing the columns which won’t be having a lot of importance and try to eliminate them. Some of the columns contains similar type of information and if it made the model work faster we might integrate their data into a single column.
b) Size of Data:
This dataset contains daily weather observations from numerous Australian weather stations and it has 142k rows over 24 columns which describe various factors that contribute in rainfall prediction. 
c) Tentative plan for analysis on GCP
EDA and preprocessing.
The preprocessing part involves observing columns and their importance in order to predict if it’s going to rain tomorrow or not. We’ll be getting rid of columns which doesn’t contribute to the prediction and keeping those which will make an impact when selected as features for the model. Exploratory data analysis will involve visualizing the dataset by using different features form the dataset. To name some we can create a graph for location distribution of the rain then we can analyze if the location column plays an important role in predicting our target feature. Other features such as WinDir3pm or WinDir9pm can also be used to create a distribution graph to observe the difference and infer observations from that.
Dashboard for User group, Dashboard for Data Engineers
Dashboard for user will consist of basic graphs such as a donut graph depicting rain today variation (yes or no). The aim of the dashboard will be to convey less complex information in terms of visuals so that one can easily correlate between different features used to predict the target variable. Dashboards for Data Engineers will have graphs depicting correlation b/w different features and what can be used as a dominant feature for prediction and what can be ignored. The crux of this process would be assessing the dashboard and the graphs and proper knowledge about the database.
     3)  GCP further processing - ML
GCP will be used to run the models using pyspark. We’ll be using both datalab and ssh terminal to try and run the models. Our definite goal is to run Logistic regression and KNN models on the dataset. If we’re successfully able to do that, we would be to try running more complex model such as decision tree or random forest to learn in-depth about running machine learning model in GCP.
    4)   Evaluating the result
We’ll be running two models, Logistic Regression and KNN on the given dataset.     In order to evaluate the result of these two model and how good are they at predicting the target variable we’ll be using different measure to calculate the effectiveness of a model such as accuracy score, recall score or its precision. We’ll be comparing all the values for the said models and give a result as to which model works better for the current dataset. 
     5)  Steps for production model 
The models that we’ll be training on the dataset- Logistic Regression, and KNN will be deployed using DataFlow. The dataset will be read using BigQuery, then for every record, model prediction will be carried out, and the results are written back to BigQuery. 
       6) Final Dashboard for the User
The final dashboard will consist of predicted data in form of a graph and it will depict the results of different model. The dashboard will also have a graph showing the model used along with their evaluating score. 
 
 
 
Research question:  what is the group trying to learn or question to answer?  Who is interested (audience)?
We are predicting whether it will rain or not tomorrow by using machine learning algorithms such as Logistic regression and KNN models. People who plan their day according to weather conditions will be strongly benefitted. It will also help people whether to carry an umbrella or not. 
     2)   Domain and Data: Identify domain and source(s) of data
	Domain: Weather forecasting. Precisely to predict whether it will rain tomorrow or not?
	Source: The dataset we took is from Kaggle and the link to the dataset is https://www.kaggle.com/jsphyg/weather-dataset-rattle-package  
 
