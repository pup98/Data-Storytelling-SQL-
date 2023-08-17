CREATE SCHEMA fuel_consumption;

USE fuel_consumption;

/* -------------------------------- */
/*
Engine 
4WD/4X4 = Four-wheel drive
AWD = All-wheel drive
CNG = Compressed natural gas
FFV = Flexible-fuel vehicle
NGV = Natural gas vehicle
# = High output engine that provides more power than the standard engine of the same size
Transmission
A = Automatic
AM = Automated manual
AS = Automatic with select shift
AV = Continuously variable
M = Manual
3 - 10 = Number of gears
Fuel Type
X = Regular gasoline
Z = Premium gasoline
D = Diesel
E = Ethanol (E85)
N = Natural Gas */

/* Create Tables */
CREATE TABLE consumption(
	YEAR varchar (50),
    MAKE varchar (50),
    MODEL varchar (50),
	VEHICLE_CLASS varchar (50),
    ENGINE_SIZE decimal (2,1),
    CYLINDERS integer,
    TRANSMISSION varchar (10),
    FUEL varchar (10),
    FUEL_CONSUMPTION decimal (3,1),
    milage_highway decimal (2,1)
);

/* -------------------------------- */
/* Load Data */
LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/Fuel_Consumption_2000-2022.csv'
INTO TABLE consumption
FIELDS TERMINATED BY ','
/*ENCLOSED BY '"'*/
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


/* I have renamed some columns  ..... so there might be some difference in naming */