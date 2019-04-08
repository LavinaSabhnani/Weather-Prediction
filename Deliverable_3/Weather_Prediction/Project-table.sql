create database if not exists RainPred;
use RainPred;
drop table if exists rain;
create table rain (
	Date     date,
	Location varchar(16),
	MinTemp  float(16),
	MaxTemp  float(16),
	Rainfall float(16),
	Evaporation  float(16),
	Sunshine     float(16),
	WindGustDir  varchar(16),
	WindGustSpeed  float(16),
	WindDir9am  varchar(16),
	WindDir3pm  varchar(16),
	WindSpeed9am  float(16),
	WindSpeed3pm  float(16),
	Humidity9am   float(16),
	Humidity3pm   float(16),
	Pressure9am   float(16),
	Pressure3pm   float(16),
	Cloud9am      float(16),
	Cloud3pm      float(16),
	Temp9am       float(16),
	Temp3pm       float(16),
	RainToday     varchar(16),
	RISK_MM       float(16),
	RainTomorrow  varchar(16),
	Year          int(64),
	Month         int(64),
	Day           int(64)
);