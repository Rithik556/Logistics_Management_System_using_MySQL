USE logistics_management;

CREATE TABLE ships(
Ship_ID INT PRIMARY KEY,
Ship_Name VARCHAR(100) NOT NULL,
Ship_Capacity INT,
Ship_Status VARCHAR(30) -- (Operational, Under Maintenance, Docked)
);

CREATE TABLE cargo(
Cargo_ID INT PRIMARY KEY,
Cargo_Name VARCHAR(100),
Cargo_Weight DECIMAL(10,2),
Destination_Port VARCHAR(100),
Ship_ID INT,
Cargo_Status VARCHAR(100), -- (Pending, Shipped, Delivered)
FOREIGN KEY (Ship_ID) REFERENCES ships(Ship_ID)
);

CREATE TABLE ports(
Port_ID INT PRIMARY KEY,
Port_Name VARCHAR(100) NOT NULL,
Port_Location VARCHAR(100)
);

CREATE TABLE shiproutes(
RouteID INT PRIMARY KEY,
Ship_ID INT,
Port_ID INT,
DeparturePort_ID INT,
ArrivalPort_ID INT,
Departure_Date DATETIME,
Arrival_Date DATETIME,
STATUS VARCHAR(20), -- (Scheduled, En Route, Completed)
FOREIGN KEY (Ship_ID) REFERENCES ships(Ship_ID),
FOREIGN KEY (DeparturePort_ID) REFERENCES ports(Port_ID),
FOREIGN KEY (ArrivalPort_ID) REFERENCES ports(Port_ID)
);

CREATE TABLE employees(
Employee_ID INT PRIMARY KEY,
Employee_Name VARCHAR(100),
Employee_Role VARCHAR(100),
Ship_ID INT,
Employee_Salary DECIMAL(10,2),
FOREIGN KEY (Ship_ID) REFERENCES ships(Ship_ID)
);

CREATE TABLE maintenancelog(
Maintenance_ID INT PRIMARY KEY,
Ship_ID INT,
Maintenance_Date DATETIME,
Maintenance_Description VARCHAR(1000),
Maintenance_Status VARCHAR(100), -- (Pending, Completed)
FOREIGN KEY(Ship_ID) REFERENCES ships(Ship_ID)
);

SELECT * FROM shiproutes;
SELECT * FROM employees;
SELECT * FROM maintenancelog;


INSERT INTO ships VALUES (1,"Ocean Explorer",5000,"Operational"),
                         (2,"Sea Voyager",8000,"Docked"),
                         (3,"Atlantic Trader",7500,"Operational"),
                         (4,"Pacific Career",6000,"Under Maintenance"),
                         (5,"Artic Navigator",7000,"Operational"),
                         (6,"Global Pioneer",9000,"Docked"),
                         (7,"Horizon Traveller",5500,"Operational"),
                         (8,"Neptune Mariner",8000,"Under Maintenance"),
                         (9,"Titan Merchant",10000,"Operational"),
                         (10,"Blue Horizon",6500,"Docked");
                         
SELECT * FROM ships;

INSERT INTO cargo VALUES (1,'Electronics',1200.50,'Port of Shanghai',1,'Shipped'),
                         (2,'Machinery',3500.00,'Port of Rotterdam',2,'Pending'),
                         (3,'Furniture',2000.75,'Port of Hamburg',3,'Delivered'),
                         (4,'Oil Drums',5000.00,'Port of Singapore',4,'Shipped'),
                         (5,'Textiles',1800.25,'Port of Dubai',1,'Pending'),
                         (6,'Grain',7000.00,'Port of Los Angeles',2,'Shipped'),
                         (7,'Vehicles',15000.00,'Port of Antwerp',3,'Delivered'),
                         (8,'Chemicals',4500.50,'Port of Houston',4,'Shipped'),
                         (9,'Pharmaceuticals',950.25,'Port of Sydney',2,'Pending'),
                         (10,'Construction Steel',2500.00,'Port of Tokyo',1,'Delivered');

SELECT * FROM cargo;

INSERT INTO Ports VALUES (1, 'Port of Shanghai', 'Shanghai, China'),
                         (2, 'Port of Rotterdam','Rotterdam, Netherlands'),
                         (3, 'Port of Hamburg', 'Hamburg, Germany'),
                         (4, 'Port of Singapor','Singapore'),
                         (5, 'Port of Dubai', 'Dubai, UAE'),
                         (6, 'Port of Los Angeles', 'Los Angeles, USA'),
                         (7, 'Port of Antwerp', 'Antwerp, Belgium'),
                         (8, 'Port of Houston', 'Houston, USA'),
                         (9, 'Port of Sydney', 'Sydney, Australia'),
                         (10,'Port of Tokyo', 'Tokyo, Japan');

SELECT * FROM ports;



