-- Столы
CREATE TABLE Tables (
  TableID SERIAL PRIMARY KEY,
  Capacity SMALLINT,
  IsActive BOOLEAN
);

-- Клиенты
CREATE TABLE Customers (
  CustomerID SERIAL PRIMARY KEY,
  FirstName VARCHAR(30),
  LastName VARCHAR(30),
  Email VARCHAR(50) UNIQUE,
  Phone VARCHAR(20) UNIQUE
);

-- Персонал
CREATE TABLE Staff (
  StaffID SERIAL PRIMARY KEY,
  FirstName VARCHAR(30),
  LastName VARCHAR(30)
);

-- Бронирования
CREATE TABLE Reservations (
  ReservationID SERIAL PRIMARY key,
  TableID INTEGER,
  CustomerID INTEGER,
  StaffID INTEGER,
  ReservationDate DATE,
  ReservationStart TIME,
  ReservationEnd TIME,
  FOREIGN KEY (TableID) REFERENCES Tables(TableID),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
  FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

INSERT INTO Tables(Capacity, IsActive)
VALUES (4, TRUE),
	   (2, TRUE),
	   (2, FALSE),
	   (6, TRUE),
	   (4, FALSE),
	   (2, FALSE),
	   (4, TRUE);

INSERT INTO Customers(FirstName, LastName, Email, Phone)
VALUES ('Artyom', 'Samoilenko', 'KillerBob237@gmail.com', '+375(29)123-45-67'),
	   ('Robert', 'Bob', 'Bobbie228@gmail.com', '+375(44)483-18-23'),
	   ('Billy', 'Herrington', 'GachiAhh@gmail.com', '+375(25)726-41-26'),
	   ('Sergey', 'Druzhko', 'HypeMLGbaldyGuy@mail.ru', '+375(29)155-48-81');

INSERT INTO Staff(FirstName, LastName)
VALUES ('Sergey', 'Burunov'),
	   ('John', 'Doe'),
	   ('Vlad','Borshch'),
	   ('Maxim', 'Lavrov'),
	   ('Guf','Umer'),
	   ('Dima','Bilan'),
	   ('Andrey', 'Petrov'),
	   ('Bob','Square Pants');

INSERT INTO Reservations(TableID, CustomerID, StaffID, ReservationDate, ReservationStart, ReservationEnd)
VALUES (1, 2, 6, '18-08-2025', '14:55', '16:35:00'),
	   (2, 4, 3, '18-08-2025', '13:30', '15:55:00'),
	   (3, 1, 4, '19-08-2025', '18:00', '20:55:00'),
	   (4, 3, 5, '19-08-2025', '16:00', '18:15:00'),
	   (5, 2, 7, '19-08-2025', '17:00', '19:55:00'),
	   (6, 1, 1, '19-08-2025', '13:15', '15:45:00'),
	   (7, 4, 8, '20-08-2025', '15:00', '18:15:00')