create database Assignment;
use Assignment;

############################################################################################################################################
# 1. Create a new table named 'bajaj1' containing the date, close price, 20 Day MA and 50 Day MA. (This has to be done for all 6 stocks)

# Creating table Bjaj1 with Close_Price,20_Day_MA,50_Day_MA to keep tracing of moving average
CREATE TABLE Assignment.Bajaj1 (
    Date  date ,
    Close_Price double,
    20_Day_MA double,
    50_Day_MA double
);

# Creating table Eicher1 with Close_Price,20_Day_MA,50_Day_MA to keep tracing of moving average
CREATE TABLE Assignment.Eicher1 (
    Date  date ,
    Close_Price double,
    20_Day_MA double,
    50_Day_MA double
);

# Creating table Hero1 with Close_Price,20_Day_MA,50_Day_MA to keep tracing of moving average
CREATE TABLE Assignment.Hero1 (
    Date  date ,
    Close_Price double,
    20_Day_MA double,
    50_Day_MA double
);


# Creating table Infosys1 with Close_Price,20_Day_MA,50_Day_MA to keep tracing of moving average
CREATE TABLE Assignment.Infosys1 (
    Date  date ,
    Close_Price double,
    20_Day_MA double,
    50_Day_MA double
);


# Creating table TCS1 with Close_Price,20_Day_MA,50_Day_MA to keep tracing of moving average
CREATE TABLE Assignment.TCS1 (
    Date  date ,
    Close_Price double,
    20_Day_MA double,
    50_Day_MA double
);

# Creating table TVS1 with Close_Price,20_Day_MA,50_Day_MA to keep tracing of moving average

CREATE TABLE Assignment.TVS1 (
    Date  Date,
    Close_Price double,
    20_Day_MA double,
    50_Day_MA double
);

############################################################################################################################################
#2. Create a master table containing the date and close price of all the six stocks. (Column header for the price is the name of the stock)

# Creating Master  table  with all stock closing price of each date
CREATE TABLE Assignment.Master_Table (
     Date date,
     Bajaj double,
     TCS double,
     TVS  double,
     Infosys  double,
     Eicher double,
     Hero  double
);

############################################################################################################################################
# 3. Use the table created in Part(1) to generate buy and sell signal. Store this in another table named 'bajaj2'. Perform this operation for all stocks.

# Converting string date format to actual date formar so it will be helpful in calculation
# Calculating 20 and 50 days moving average by taking average of close price and in order to year and month of date
# Inseting required data into bajaj1


INSERT INTO ASSIGNMENT.bajaj1 (DATE,CLOSE_PRICE,20_Day_MA,50_Day_MA)
SELECT STR_TO_DATE(`Date`,'%d-%M-%Y') as DATE,`Close Price`,
round(AVG(`Close Price`) OVER( order by year(STR_TO_DATE(`Date`,'%d-%M-%Y')),month(STR_TO_DATE(`Date`,'%d-%M-%Y')) rows 19 preceding ),2) '20 MA',
round(AVG(`Close Price`) OVER( order by year(STR_TO_DATE(`Date`,'%d-%M-%Y')),month(STR_TO_DATE(`Date`,'%d-%M-%Y')) rows 49 preceding ),2) '50 MA' 
FROM ASSIGNMENT.`bajaj auto`;

# Converting string date format to actual date formar so it will be helpful in calculation
# Calculating 20 and 50 days moving average by taking average of close price and in order to year and month of date
# Inseting required data into eicher1

INSERT INTO ASSIGNMENT.eicher1 (DATE,CLOSE_PRICE,20_Day_MA,50_Day_MA)
SELECT STR_TO_DATE(`Date`,'%d-%M-%Y') as DATE,`Close Price`,
round(AVG(`Close Price`) OVER( order by year(STR_TO_DATE(`Date`,'%d-%M-%Y')),month(STR_TO_DATE(`Date`,'%d-%M-%Y')) rows 19 preceding ),2) '20 MA',
round(AVG(`Close Price`) OVER( order by year(STR_TO_DATE(`Date`,'%d-%M-%Y')),month(STR_TO_DATE(`Date`,'%d-%M-%Y')) rows 49 preceding ),2) '50 MA' 
FROM ASSIGNMENT.`eicher motors`;

# Converting string date format to actual date formar so it will be helpful in calculation
# Calculating 20 and 50 days moving average by taking average of close price and in order to year and month of date
# Inseting required data into hero1

INSERT INTO ASSIGNMENT.hero1 (DATE,CLOSE_PRICE,20_Day_MA,50_Day_MA)
SELECT STR_TO_DATE(`Date`,'%d-%M-%Y') as DATE,`Close Price`,
round(AVG(`Close Price`) OVER( order by year(STR_TO_DATE(`Date`,'%d-%M-%Y')),month(STR_TO_DATE(`Date`,'%d-%M-%Y')) rows 19 preceding ),2) '20 MA',
round(AVG(`Close Price`) OVER( order by year(STR_TO_DATE(`Date`,'%d-%M-%Y')),month(STR_TO_DATE(`Date`,'%d-%M-%Y')) rows 49 preceding ),2) '50 MA' 
FROM ASSIGNMENT.`hero motocorp`;

# Converting string date format to actual date formar so it will be helpful in calculation
# Calculating 20 and 50 days moving average by taking average of close price and in order to year and month of date
# Inseting required data into infosys1

INSERT INTO ASSIGNMENT.infosys1 (DATE,CLOSE_PRICE,20_Day_MA,50_Day_MA)
SELECT STR_TO_DATE(`Date`,'%d-%M-%Y') as DATE,`Close Price`,
round(AVG(`Close Price`) OVER( order by year(STR_TO_DATE(`Date`,'%d-%M-%Y')),month(STR_TO_DATE(`Date`,'%d-%M-%Y')) rows 19 preceding ),2) '20 MA',
round(AVG(`Close Price`) OVER( order by year(STR_TO_DATE(`Date`,'%d-%M-%Y')),month(STR_TO_DATE(`Date`,'%d-%M-%Y')) rows 49 preceding ),2) '50 MA' 
FROM ASSIGNMENT.infosys;

# Converting string date format to actual date formar so it will be helpful in calculation
# Calculating 20 and 50 days moving average by taking average of close price and in order to year and month of date
# Inseting required data into tcs1

INSERT INTO ASSIGNMENT.tcs1 (DATE,CLOSE_PRICE,20_Day_MA,50_Day_MA)
SELECT STR_TO_DATE(`Date`,'%d-%M-%Y') as DATE,`Close Price`,
round(AVG(`Close Price`) OVER( order by year(STR_TO_DATE(`Date`,'%d-%M-%Y')),month(STR_TO_DATE(`Date`,'%d-%M-%Y')) rows 19 preceding ),2) '20 MA',
round(AVG(`Close Price`) OVER( order by year(STR_TO_DATE(`Date`,'%d-%M-%Y')),month(STR_TO_DATE(`Date`,'%d-%M-%Y')) rows 49 preceding ),2) '50 MA' 
FROM ASSIGNMENT.tcs;

# Converting string date format to actual date formar so it will be helpful in calculation
# Calculating 20 and 50 days moving average by taking average of close price and in order to year and month of date
# Inseting required data into tvs1

INSERT INTO ASSIGNMENT.tvs1 (DATE,CLOSE_PRICE,20_Day_MA,50_Day_MA)
SELECT STR_TO_DATE(`Date`,'%d-%M-%Y') as DATE,`Close Price`,
round(AVG(`Close Price`) OVER( order by year(STR_TO_DATE(`Date`,'%d-%M-%Y')),month(STR_TO_DATE(`Date`,'%d-%M-%Y')) rows 19 preceding ),2) '20 MA',
round(AVG(`Close Price`) OVER( order by year(STR_TO_DATE(`Date`,'%d-%M-%Y')),month(STR_TO_DATE(`Date`,'%d-%M-%Y')) rows 49 preceding ),2) '50 MA' 
FROM ASSIGNMENT.`tvs motors`;


# Loading Master table after joining all the table using date

INSERT INTO ASSIGNMENT.MASTER_TABLE (DATE,Bajaj,TCS,TVS,INFOSYS,EICHER,HERO)
SELECT 
STR_TO_DATE(bajaj_auto.`Date`,'%d-%M-%Y') Date,
bajaj_auto.`Close Price` 'Bajaj',
TCS.`Close Price` 'TCS',
tvs_motors.`Close Price` 'TVS' ,
 infosys.`Close Price` as 'infosys' ,
eicher_motors.`Close Price` 'eicher' ,
hero_motocorp.`Close Price` 'hero' 
FROM 
ASSIGNMENT.`bajaj auto` bajaj_auto
left  join
 ASSIGNMENT.tcs tcs
using(date)
left join
ASSIGNMENT.`tvs motors` tvs_motors
using(date)
left join
ASSIGNMENT.infosys infosys
using(date)
left join
ASSIGNMENT.`hero motocorp` hero_motocorp
using(date)
left join 
ASSIGNMENT.`eicher motors` eicher_motors
using(date);

# Creating bajaj2 to store the signal
CREATE TABLE Assignment.bajaj2 (
    Date  date ,
    Close_Price double,
    `Signal` varchar(10)
);

# Creating Eicher2 to store the signal
CREATE TABLE Assignment.Eicher2 (
    Date  date ,
    Close_Price double,
    `Signal` varchar(10)
);


############################################################################################################################################
# 4. Create a User defined function, that takes the date as input and returns the signal for that particular day (Buy/Sell/Hold) for the Bajaj stock.
# Creating Hero2 to store the signal
CREATE TABLE Assignment.Hero2 (
    Date  date ,
    Close_Price double,
    `Signal` varchar(10)
);

# Creating Infosys2 to store the signal

CREATE TABLE Assignment.Infosys2 (
    Date  date ,
    Close_Price double,
    `Signal` varchar(10)
);

# Creating TCS2 to store the signal

CREATE TABLE Assignment.TCS2 (
   Date  date ,
    Close_Price double,
    `Signal` varchar(10)
);

# Creating TVS2 to store the signal

CREATE TABLE Assignment.TVS2 (
    Date  date ,
    Close_Price double,
    `Signal` varchar(10)
);

# Self join for the table based on Row_id and Row_ID - 1 , So we can get the next day moving average
# Case statement to decide on the signal  
# Calculating signal and loading data into bajaj2

insert into bajaj2 (Date,Close_Price,`Signal`)
SELECT 
a.Date,a.Close_Price,
case 
when a.INDI1=0 and b.INDI1=0 then 'Hold'
when a.INDI1>0 and b.INDI1>0 then 'Hold'
when a.INDI1<0 and b.INDI1<0 then 'Hold'
when a.INDI1>0 and b.INDI1<0 then 'Sell'
when a.INDI1=0 and b.INDI1>0 then 'Buy'
when a.INDI1=0 and b.INDI1<0 then 'Sell'
when a.INDI1<0 and b.INDI1>0 then 'Buy' else 'Hold' END AS SIGNAL1
FROM
(SELECT Date,Close_Price,20_Day_MA,50_Day_MA, 20_Day_MA-50_Day_MA AS INDI1 ,row_number() over() AS row_id
 FROM Bajaj1) a
 inner join
(SELECT Date,20_Day_MA,50_Day_MA, 20_Day_MA-50_Day_MA AS INDI1 ,row_number() over() AS row_id
 FROM Bajaj1) b
 on a.row_id =b.row_id-1;
 
# Self join for the table based on Row_id and Row_ID - 1 , So we can get the next day moving average
# Case statement to decide on the signal 
# Calculating signal and loading data into Eicher2

insert into Eicher2 (Date,Close_Price,`Signal`)
SELECT 
a.Date,a.Close_Price,
case 
when a.INDI1=0 and b.INDI1=0 then 'Hold'
when a.INDI1>0 and b.INDI1>0 then 'Hold'
when a.INDI1<0 and b.INDI1<0 then 'Hold'
when a.INDI1>0 and b.INDI1<0 then 'Sell'
when a.INDI1=0 and b.INDI1>0 then 'Buy'
when a.INDI1=0 and b.INDI1<0 then 'Sell'
when a.INDI1<0 and b.INDI1>0 then 'Buy' else 'Hold' END AS SIGNAL1
FROM
(SELECT Date,Close_Price,20_Day_MA,50_Day_MA, 20_Day_MA-50_Day_MA AS INDI1 ,row_number() over() AS row_id
 FROM Eicher1) a
 inner join
(SELECT Date,20_Day_MA,50_Day_MA, 20_Day_MA-50_Day_MA AS INDI1 ,row_number() over() AS row_id
 FROM Eicher1) b
 on a.row_id =b.row_id-1;
 
# Self join for the table based on Row_id and Row_ID - 1 , So we can get the next day moving average
# Case statement to decide on the signal  
# Calculating signal and loading data into Hero2

 insert into Hero2 (Date,Close_Price,`Signal`)
SELECT 
a.Date,a.Close_Price,
case 
when a.INDI1=0 and b.INDI1=0 then 'Hold'
when a.INDI1>0 and b.INDI1>0 then 'Hold'
when a.INDI1<0 and b.INDI1<0 then 'Hold'
when a.INDI1>0 and b.INDI1<0 then 'Sell'
when a.INDI1=0 and b.INDI1>0 then 'Buy'
when a.INDI1=0 and b.INDI1<0 then 'Sell'
when a.INDI1<0 and b.INDI1>0 then 'Buy' else 'Hold' END AS SIGNAL1
FROM
(SELECT Date,Close_Price,20_Day_MA,50_Day_MA, 20_Day_MA-50_Day_MA AS INDI1 ,row_number() over() AS row_id
 FROM Hero1) a
 inner join
(SELECT Date,20_Day_MA,50_Day_MA, 20_Day_MA-50_Day_MA AS INDI1 ,row_number() over() AS row_id
 FROM Hero1) b
 on a.row_id =b.row_id-1;
 
# Self join for the table based on Row_id and Row_ID - 1 , So we can get the next day moving average
# Case statement to decide on the signal 
# Calculating signal and loading data into Infosys2
   
  insert into Infosys2 (Date,Close_Price,`Signal`)
SELECT 
a.Date,a.Close_Price,
case 
when a.INDI1=0 and b.INDI1=0 then 'Hold'
when a.INDI1>0 and b.INDI1>0 then 'Hold'
when a.INDI1<0 and b.INDI1<0 then 'Hold'
when a.INDI1>0 and b.INDI1<0 then 'Sell'
when a.INDI1=0 and b.INDI1>0 then 'Buy'
when a.INDI1=0 and b.INDI1<0 then 'Sell'
when a.INDI1<0 and b.INDI1>0 then 'Buy' else 'Hold' END AS SIGNAL1
FROM
(SELECT Date,Close_Price,20_Day_MA,50_Day_MA, 20_Day_MA-50_Day_MA AS INDI1 ,row_number() over() AS row_id
 FROM Infosys1) a
 inner join
(SELECT Date,20_Day_MA,50_Day_MA, 20_Day_MA-50_Day_MA AS INDI1 ,row_number() over() AS row_id
 FROM Infosys1) b
 on a.row_id =b.row_id-1;

# Self join for the table based on Row_id and Row_ID - 1 , So we can get the next day moving average
# Case statement to decide on the signal  
# Calculating signal and loading data into TCS2

   insert into TCS2 (Date,Close_Price,`Signal`)
SELECT 
a.Date,a.Close_Price,
case 
when a.INDI1=0 and b.INDI1=0 then 'Hold'
when a.INDI1>0 and b.INDI1>0 then 'Hold'
when a.INDI1<0 and b.INDI1<0 then 'Hold'
when a.INDI1>0 and b.INDI1<0 then 'Sell'
when a.INDI1=0 and b.INDI1>0 then 'Buy'
when a.INDI1=0 and b.INDI1<0 then 'Sell'
when a.INDI1<0 and b.INDI1>0 then 'Buy' else 'Hold' END AS SIGNAL1
FROM
(SELECT Date,Close_Price,20_Day_MA,50_Day_MA, 20_Day_MA-50_Day_MA AS INDI1 ,row_number() over() AS row_id
 FROM TCS1) a
 inner join
(SELECT Date,20_Day_MA,50_Day_MA, 20_Day_MA-50_Day_MA AS INDI1 ,row_number() over() AS row_id
 FROM TCS1) b
 on a.row_id =b.row_id-1;

# Self join for the table based on Row_id and Row_ID - 1 , So we can get the next day moving average
# Case statement to decide on the signal  
# Calculating signal and loading data into TVS2

   insert into TVS2 (Date,Close_Price,`Signal`)
SELECT 
a.Date,a.Close_Price,
case 
when a.INDI1=0 and b.INDI1=0 then 'Hold'
when a.INDI1>0 and b.INDI1>0 then 'Hold'
when a.INDI1<0 and b.INDI1<0 then 'Hold'
when a.INDI1>0 and b.INDI1<0 then 'Sell'
when a.INDI1=0 and b.INDI1>0 then 'Buy'
when a.INDI1=0 and b.INDI1<0 then 'Sell'
when a.INDI1<0 and b.INDI1>0 then 'Buy' else 'Hold' END AS SIGNAL1
FROM
(SELECT Date,Close_Price,20_Day_MA,50_Day_MA, 20_Day_MA-50_Day_MA AS INDI1 ,row_number() over() AS row_id
 FROM TVS1) a
 inner join
(SELECT Date,20_Day_MA,50_Day_MA, 20_Day_MA-50_Day_MA AS INDI1 ,row_number() over() AS row_id
 FROM TVS1) b
 on a.row_id =b.row_id-1;

# Creating User defined funtion to return the signal when input will be date

DELIMITER $$
CREATE FUNCTION Signal1 (a  date ) 
RETURNS varchar(10) deterministic
begin 
	declare `signal2` varchar(10);
    select `signal` into  `signal2` from `Assignment`.bajaj2 where date = `a`; 
	RETURN `signal2`;
END$$
DELIMITER ;

select *,Signal1(date) from bajaj2;


