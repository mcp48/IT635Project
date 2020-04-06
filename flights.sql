CREATE DATABASE flights;
USE flights;
CREATE TABLE routes (
  flight_number VARCHAR(6),
  origin VARCHAR(255),
  destination VARCHAR(255),
  PRIMARY KEY (flight_number)
  );
  
CREATE TABLE airports (
  airport_code VARCHAR(3),
  airport_name VARCHAR(255),
  PRIMARY KEY (airport_code)
  );

CREATE TABLE schedules (
  flight_number VARCHAR(6),
  date DATE,
  depart_scheduled VARCHAR(10),
  depart_actual VARCHAR(10),
  arrival_scheduled VARCHAR(10),
  arrival_actual VARCHAR(10),
  PRIMARY KEY (flight_number, date)
  );
  
CREATE TABLE delays (
  flight_number VARCHAR(6),
  date DATE,
  delay_reason VARCHAR(255),
  PRIMARY KEY (flight_number, date)
  );
  
INSERT INTO airports
VALUES ('EWR', 'Newark International Aiport');
INSERT INTO airports
VALUES ('ATL', 'Hartsfield-Jackson Atlanta International Airport');
INSERT INTO airports
VALUES ('SFO', 'San Francisco International Airport');
  
INSERT INTO routes
VALUES ('UA475', 'EWR', 'ATL');
INSERT INTO routes
VALUES ('UA3409', 'EWR', 'ATL');
INSERT INTO routes
VALUES ('UA3509', 'ATL', 'EWR');
INSERT INTO routes
VALUES ('UA739', 'ATL', 'EWR');
INSERT INTO routes
VALUES ('UA2239', 'SFO', 'EWR');
INSERT INTO routes
VALUES ('UA535', 'SFO', 'EWR');
INSERT INTO routes
VALUES ('UA2143', 'EWR', 'SFO');

INSERT INTO schedules
VALUES ('UA475', 2020-03-15, '7:29 am', '7:24 am', '9:56 am', '9:56 am');
INSERT INTO schedules
VALUES ('UA475', 2020-03-16, '7:29 am', '7:18 am', '9:56 am', '9:43 am');
INSERT INTO schedules
VALUES ('UA475', 2020-03-17, '7:29 am', '7:23 am', '9:56 am', '9:52 am');
INSERT INTO schedules
VALUES ('UA475', 2020-03-18, '7:29 am', '7:23 am', '9:56 am', '9:44 am');
INSERT INTO schedules
VALUES ('UA475', 2020-03-19, '7:29 am', '7:23 am', '9:56 am', '10:00 am');
INSERT INTO schedules
VALUES ('UA475', 2020-03-20, '7:29 am', 'CANCELLED', '9:56 am', 'CANCELLED');
INSERT INTO schedules
VALUES ('UA3479', 2020-03-21, '6:00 am', '5:54 am', '8:34 am', '8:21 am');

INSERT INTO delays
VALUES ('UA475', 2020-03-20, 'Temporary change in operations');

INSERT INTO schedules
VALUES ('UA3509', 2020-03-15, '10:55 am', '10:54 am', '1:13 pm', '12:59 pm');
INSERT INTO schedules
VALUES ('UA739', 2020-03-16, '10:55 am', '10:50 am', '1:07 pm', '12:49 pm');
INSERT INTO schedules
VALUES ('UA739', 2020-03-17, '10:55 am', '11:15 am', '1:07 pm', '1:15 pm');
INSERT INTO schedules
VALUES ('UA739', 2020-03-18, '10:55 am', '10:48 am', '1:07 pm', '12:43 pm');
INSERT INTO schedules
VALUES ('UA739', 2020-03-19, '10:55 am', '11:04 am', '1:07 pm', '1:04 pm');
INSERT INTO schedules
VALUES ('UA739', 2020-03-20, '10:55 am', '11:23 am', '1:07 pm', '1:29 pm');
INSERT INTO schedules
VALUES ('UA3509', 2020-03-21, '10:55 am', 'CANCELLED', '1:07 pm', 'CANCELLED');

INSERT INTO delays
VALUES ('UA739', 2020-03-17, 'Late arriving inbound aircraft');
INSERT INTO delays
VALUES ('UA739', 2020-03-20, 'Had to wait for crew to arrive on another inbound flight');
INSERT INTO delays
VALUES ('UA3509', 2020-03-21, 'Unexpected operational issues');
        
INSERT INTO schedules
VALUES ('UA2239', 2020-03-15, '1:15 pm', '1:11 pm', '10:02 pm', '9:25 pm');
INSERT INTO schedules
VALUES ('UA2239', 2020-03-16, '1:15 pm', '1:10 pm', '10:02 pm', '9:23 pm');
INSERT INTO schedules
VALUES ('UA2239', 2020-03-17, '1:15 pm', '1:09 pm', '10:02 pm', '9:09 pm');
INSERT INTO schedules
VALUES ('UA2239', 2020-03-18, '1:15 pm', '1:07 pm', '10:02 pm', '9:13 pm');
INSERT INTO schedules
VALUES ('UA2239', 2020-03-19, '1:15 pm', 'CANCELLED', '10:02 pm', 'CANCELLED');
INSERT INTO schedules
VALUES ('UA2239', 2020-03-20, '1:15 pm', '1:17 pm', '10:02 pm', '9:51 pm');
INSERT INTO schedules
VALUES ('UA2239', 2020-03-21, '1:15 pm', '1:07 pm', '10:02 pm', '9:37 pm');

INSERT INTO delays
VALUES ('UA2239', 2020-03-19, 'Temporary change in operations');

INSERT INTO schedules
VALUES ('UA535', 2020-03-15, '11:15 am', '11:11 am', '7:47 pm', '7:41 pm');
INSERT INTO schedules
VALUES ('UA535', 2020-03-16, '11:15 am', 'CANCELLED', '7:47 pm', 'CANCELLED');
INSERT INTO schedules
VALUES ('UA535', 2020-03-17, '11:15 am', '11:07 am', '7:47 pm', '7:11 pm');
INSERT INTO schedules
VALUES ('UA535', 2020-03-18, '11:15 am', '11:51 am', '7:47 pm', '8:37 pm');
INSERT INTO schedules
VALUES ('UA535', 2020-03-19, '11:15 am', '11:11 am', '7:47 pm', '7:08 pm');
INSERT INTO schedules
VALUES ('UA535', 2020-03-20, '11:15 am', '11:17 am', '7:47 pm', '7:38 pm');
INSERT INTO schedules
VALUES ('UA535', 2020-03-21, '11:15 am', 'CANCELLED', '7:47 pm', 'CANCELLED');

INSERT INTO delays
VALUES ('UA535', 2020-03-16, 'Schedule disruptions due to out of service aircraft');
INSERT INTO delays
VALUES ('UA535', 2020-03-18, 'Needed additional time to serve passengers at gate and / or ticket counter');
INSERT INTO delays
VALUES ('UA535', 2020-03-21, 'Temporary change in operations');

INSERT INTO schedules
VALUES ('UA2143', 2020-03-15, '9:00 am', '8:56 am', '12:23 pm', '12:20 pm');
INSERT INTO schedules
VALUES ('UA2143', 2020-03-16, '9:00 am', '8:50 am', '12:23 pm', '12:09 pm');
INSERT INTO schedules
VALUES ('UA2143', 2020-03-17, '9:00 am', '8:57 am', '12:23 pm', '12:19 pm');
INSERT INTO schedules
VALUES ('UA2143', 2020-03-18, '9:00 am', 'CANCELLED', '12:23 pm', 'CANCELLED');
INSERT INTO schedules
VALUES ('UA2143', 2020-03-19, '9:00 am', '9:02 am', '12:23 pm', '12:33 pm');
INSERT INTO schedules
VALUES ('UA2143', 2020-03-20, '9:00 am', '9:12 am', '12:23 pm', '12:32 pm');
INSERT INTO schedules
VALUES ('UA2143', 2020-03-21, '9:00 am', '8:53 am', '12:23 pm', '11:51 am');

INSERT INTO delays
VALUES ('UA2143', 2020-03-18, 'Temporary change in operations');
INSERT INTO delays
VALUES ('UA2143', 2020-03-19, 'Technical issue');
INSERT INTO delays
VALUES ('UA2143', 2020-03-20, 'Operational issue');
