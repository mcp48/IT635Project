CREATE DATABASE flights;
USE flights;
CREATE TABLE routes (
  flight_number VARCHAR 6,
  origin VARCHAR 255,
  destination VARCHAR 255,
  PRIMARY KEY (flight_number)
  );

CREATE TABLE schedules (
  flight_number VARCHAR 6,
  date DATE,
  depart_scheduled DATETIME,
  depart_actual DATETIME,
  arrival_scheduled DATETIME,
  arrival_actual DATETIME
  PRIMARY KEY (flight_number, date)
  );
  
CREATE TABLE airlines (
  airline_code CHAR(2),
  airline_name VARCHAR(255),
  PRIMARY KEY (airline_code)
  );
