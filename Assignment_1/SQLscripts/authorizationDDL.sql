CREATE TABLE StudentAccount(
	ssn varchar(10) PRIMARY KEY,
	[password] varchar(MAX) NOT NULL
);

CREATE TABLE EmployeeAccount(
	ssn varchar(10) PRIMARY KEY,
	[password] varchar(MAX) NOT NULL
);

INSERT INTO StudentAccount VALUES ('1600002', '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke')
INSERT INTO EmployeeAccount VALUES ('depar00003', '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke')