USE Class_Registration
GO

-- --please delete twice!
-- DELETE from Author
-- DELETE from Class
-- DELETE from Author
-- DELETE from Department
-- DELETE from DepartmentEmployee
-- DELETE from EducationAgency
-- DELETE from Employee
-- DELETE from EmployeeAccount
-- DELETE from Field
-- DELETE from MainResponsible
-- DELETE from MainTeacher
-- DELETE from Opens
-- DELETE from Publisher
-- DELETE from ReferenceBook
-- DELETE from Register
-- DELETE from Responsible
-- DELETE from Semester
-- DELETE from Student
-- DELETE from StudentAccount
-- DELETE from StudyOffice
-- DELETE from StudyOfficeEmployee
-- DELETE from StudyStatus
-- DELETE from Subject
-- DELETE from Teacher
-- DELETE from Uses
-- DELETE from Week
-- DELETE from [Write]
-- DELETE from SubjectDepartment


--                                               AUTHOR 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        0, 'D', 'Nguyen Tran'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        1, 'D', 'Mai Hua Le'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        10, 'C', 'Bui Le Nguyen'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        11, 'B', 'Mai Phung Nguyen Phung'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        12, 'A', 'Mai Vu Tran'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        13, 'D', 'Mai Le Mai Bui'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        14, 'B', 'Nguyen Vu Hua'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        15, 'E', 'Hua Nguyen Nguyen'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        16, 'D', 'Le Tran Le'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        17, 'E', 'Phung Bui Hua'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        18, 'C', 'Hua Bui Phung'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        19, 'E', 'Tran Vu Hua'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        2, 'D', 'Le Tran'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        3, 'C', 'Vu Nguyen Phung Nguyen'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        4, 'A', 'Le Bui Phung'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        5, 'E', 'Hua Phung'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        6, 'E', 'Mai Vu'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        7, 'A', 'Nguyen Bui Nguyen'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        8, 'A', 'Phung Le Vu Hua'
);

INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        9, 'A', 'Tran Tran Nguyen'
);

--                                               EducationAgency 
-----------------------------------------------------------------------------------------------------------------------------

INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        1, 1111111101, 'A1', 'ck@hcmut.edu.vn'
);

INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        10, 1111111110, 'A10', 'cnvl@hcmut.edu.vn'
);

INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        11, 1111111111, 'A11', 'xd@hcmut.edu.vn'
);

INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        12, 1111111112, 'A12', 'cq@hcmut.edu.vn'
);

INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        13, 1111111113, 'A13', 'oisp@hcmut.edu.vn'
);

INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        2, 1111111102, 'A2', 'dk@hcmut.edu.vn'
);

INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        3, 1111111103, 'A3', 'dt@hcmut.edu.vn'
);

INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        4, 1111111104, 'A4', 'gt@hcmut.edu.vn'
);

INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        5, 1111111105, 'A5', 'hh@hcmut.edu.vn'
);

INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        6, 1111111106, 'A6', 'mt@hcmut.edu.vn'
);

INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        7, 1111111107, 'A7', 'khmt@hcmut.edu.vn'
);

INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        8, 1111111108, 'A8', 'qlcn@hcmut.edu.vn'
);

INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        9, 1111111109, 'A9', 'khud@hcmut.edu.vn'
);


--                                               DEPARTMENT 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Department
    (id, name)
VALUES
    (
        1, 'Co khi'
);

INSERT INTO Department
    (id, name)
VALUES
    (
        10, 'Cong nghe vat lieu'
);

INSERT INTO Department
    (id, name)
VALUES
    (
        11, 'Ky thuat xay dung'
);

INSERT INTO Department
    (id, name)
VALUES
    (
        2, 'Ky thuat dia chat dau khi'
);

INSERT INTO Department
    (id, name)
VALUES
    (
        3, 'Dien - dien tu'
);

INSERT INTO Department
    (id, name)
VALUES
    (
        4, 'Ky thuat giao thong'
);

INSERT INTO Department
    (id, name)
VALUES
    (
        5, 'Ky thuat hoa hoc'
);

INSERT INTO Department
    (id, name)
VALUES
    (
        6, 'Moi truong va tai nguyen'
);

INSERT INTO Department
    (id, name)
VALUES
    (
        7, 'Khoa hoc va ky thuat may tinh'
);

INSERT INTO Department
    (id, name)
VALUES
    (
        8, 'Quan ly cong nghiep'
);

INSERT INTO Department
    (id, name)
VALUES
    (
        9, 'Khoa hoc ung dung'
);


--                                               Employee 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar00003', 9517994782, 'emaibuihuaphung@hcmut.edu.vn', 'E', 'Mai Bui Hua Phung'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar00006', 8187131417, 'abuibuibuihua@hcmut.edu.vn', 'A', 'Bui Bui Bui Hua'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar00017', 2819739124, 'ahuaphungmaiphung@hcmut.edu.vn', 'A', 'Hua Phung Mai Phung'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar10005', 8514446634, 'dhuanguyenvuphung@hcmut.edu.vn', 'D', 'Hua Nguyen Vu Phung'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar20013', 9838715259, 'etranbuinguyennguyen@hcmut.edu.vn', 'E', 'Tran Bui Nguyen Nguyen'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar30008', 9742103827, 'bmaiphunghuamai@hcmut.edu.vn', 'B', 'Mai Phung Hua Mai'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar30010', 5438097318, 'dtranphung@hcmut.edu.vn', 'D', 'Tran Phung'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar40000', 4413155757, 'atranbui@hcmut.edu.vn', 'A', 'Tran Bui'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar40002', 5139592557, 'aphunghuabuiphung@hcmut.edu.vn', 'A', 'Phung Hua Bui Phung'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar40007', 7834708442, 'chuavuvutran@hcmut.edu.vn', 'C', 'Hua Vu Vu Tran'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar40014', 2261010423, 'enguyenlephung@hcmut.edu.vn', 'E', 'Nguyen Le Phung'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar40019', 8394129832, 'dvuvu@hcmut.edu.vn', 'D', 'Vu Vu'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar50004', 9681647062, 'enguyenvumaile@hcmut.edu.vn', 'E', 'Nguyen Vu Mai Le'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar50012', 9193430687, 'enguyennguyen@hcmut.edu.vn', 'E', 'Nguyen Nguyen'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar60009', 329183521, 'ephunglevu@hcmut.edu.vn', 'E', 'Phung Le Vu'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar60015', 5623954261, 'cnguyenle@hcmut.edu.vn', 'C', 'Nguyen Le'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar70016', 3520698831, 'cvulemaivu@hcmut.edu.vn', 'C', 'Vu Le Mai Vu'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar70018', 7948978968, 'dhualetran@hcmut.edu.vn', 'D', 'Hua Le Tran'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar90001', 692590314, 'dtrantran@hcmut.edu.vn', 'D', 'Tran Tran'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar90011', 5181753721, 'aphungbuile@hcmut.edu.vn', 'A', 'Phung Bui Le'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic00005', 8169646681, 'anguyenletran@hcmut.edu.vn', 'A', 'Nguyen Le Tran'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic10002', 785264597, 'dlehua@hcmut.edu.vn', 'D', 'Le Hua'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic10004', 147480869, 'ahuavutranle@hcmut.edu.vn', 'A', 'Hua Vu Tran Le'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic20000', 1351731936, 'alephung@hcmut.edu.vn', 'A', 'Le Phung'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic30019', 4691146550, 'evubuile@hcmut.edu.vn', 'E', 'Vu Bui Le'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic40012', 2446925605, 'bnguyenbuilebui@hcmut.edu.vn', 'B', 'Nguyen Bui Le Bui'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic50014', 9809765360, 'dtranvu@hcmut.edu.vn', 'D', 'Tran Vu'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic50018', 3331177746, 'btranphung@hcmut.edu.vn', 'B', 'Tran Phung'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic60007', 1765828657, 'avubui@hcmut.edu.vn', 'A', 'Vu Bui'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic60011', 4524153890, 'emainguyen@hcmut.edu.vn', 'E', 'Mai Nguyen'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic60013', 4746383165, 'dtranlelephung@hcmut.edu.vn', 'D', 'Tran Le Le Phung'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic70006', 5399793441, 'etranhuahua@hcmut.edu.vn', 'E', 'Tran Hua Hua'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic70009', 1460428220, 'ephungvuphung@hcmut.edu.vn', 'E', 'Phung Vu Phung'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic80001', 5428927881, 'ctranmaitranhua@hcmut.edu.vn', 'C', 'Tran Mai Tran Hua'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic80003', 6945101122, 'dtrannguyen@hcmut.edu.vn', 'D', 'Tran Nguyen'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic80015', 3929728018, 'bmaivuphung@hcmut.edu.vn', 'B', 'Mai Vu Phung'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic80016', 995056844, 'dlephunghuamai@hcmut.edu.vn', 'D', 'Le Phung Hua Mai'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic80017', 4638983672, 'ephungnguyenbuitran@hcmut.edu.vn', 'E', 'Phung Nguyen Bui Tran'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic90008', 6966271428, 'bvuvulemai@hcmut.edu.vn', 'B', 'Vu Vu Le Mai'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic90010', 5068249426, 'evunguyenmaivu@hcmut.edu.vn', 'E', 'Vu Nguyen Mai Vu'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach00003', 5999780506, 'dtrannguyenmai@hcmut.edu.vn', 'D', 'Tran Nguyen Mai'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach10005', 8004647192, 'bnguyenmainguyen@hcmut.edu.vn', 'B', 'Nguyen Mai Nguyen'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach10018', 9894195059, 'abuitran@hcmut.edu.vn', 'A', 'Bui Tran'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach30009', 5424885120, 'bhualehua@hcmut.edu.vn', 'B', 'Hua Le Hua'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach30013', 8564302715, 'cphungtranbuibui@hcmut.edu.vn', 'C', 'Phung Tran Bui Bui'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach40004', 5858885473, 'ctrannguyen@hcmut.edu.vn', 'C', 'Tran Nguyen'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach40008', 6886468814, 'dhuanguyenmaile@hcmut.edu.vn', 'D', 'Hua Nguyen Mai Le'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach40016', 9517650574, 'dnguyenvulehua@hcmut.edu.vn', 'D', 'Nguyen Vu Le Hua'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach50000', 692047554, 'ebuinguyenhuaphung@hcmut.edu.vn', 'E', 'Bui Nguyen Hua Phung'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach50010', 7803342469, 'bnguyenphung@hcmut.edu.vn', 'B', 'Nguyen Phung'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach60006', 8904796013, 'dmaile@hcmut.edu.vn', 'D', 'Mai Le'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach60017', 1960657721, 'ephungvubuivu@hcmut.edu.vn', 'E', 'Phung Vu Bui Vu'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach70001', 6668579783, 'bnguyenhuanguyen@hcmut.edu.vn', 'B', 'Nguyen Hua Nguyen'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach70002', 5362419573, 'anguyenbuinguyen@hcmut.edu.vn', 'A', 'Nguyen Bui Nguyen'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach70007', 8890360283, 'dvubuitran@hcmut.edu.vn', 'D', 'Vu Bui Tran'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach80011', 4152485920, 'atranbuitranhua@hcmut.edu.vn', 'A', 'Tran Bui Tran Hua'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach80014', 9610204574, 'ehuabuinguyen@hcmut.edu.vn', 'E', 'Hua Bui Nguyen'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach90012', 9879745754, 'cmaivuvu@hcmut.edu.vn', 'C', 'Mai Vu Vu'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach90015', 8754989327, 'ehuatranbui@hcmut.edu.vn', 'E', 'Hua Tran Bui'
);

INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach90019', 5046541146, 'anguyenphung@hcmut.edu.vn', 'A', 'Nguyen Phung'
);

--                                               EmployeeAccount 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO EmployeeAccount
    (ssn, password)
VALUES
    (
        'depar00003', '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke'
);

INSERT INTO EmployeeAccount
    (ssn, password)
VALUES
    (
        'depar00006', '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke'
);

--                                               DepartmentEmployee 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar00003', 1
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar00006', 1
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar00017', 2
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar10005', 2
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar20013', 3
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar30008', 3
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar30010', 4
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar40000', 4
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar40002', 5
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar40007', 5
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar40014', 6
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar40019', 6
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar50004', 7
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar50012', 7
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar60009', 8
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar60015', 8
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar70016', 9
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar70018', 10
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar90001', 10
);

INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar90011', 11
);

--                                               Semester 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq171', '2017-09-24', '2018-01-24'
);

INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq172', '2018-02-20', '2018-06-20'
);

INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq173', '2018-06-26', '2018-08-26'
);

INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq181', '2018-09-25', '2019-01-25'
);

INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq182', '2019-02-26', '2019-06-26'
);

INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq183', '2019-06-30', '2019-08-30'
);

INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq191', '2019-09-21', '2020-01-21'
);

INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq192', '2020-02-22', '2020-06-22'
);

INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq193', '2020-06-28', '2020-08-28'
);

INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq201', '2020-09-21', '2021-01-21'
);

INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq202', '2021-02-22', '2021-06-22'
);

INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq203', '2021-06-28', '2021-08-28'
);


--                                               Student 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600002, 'D', 'Phung Tran', 6
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600012, 'E', 'Vu Le Bui', 11
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600026, 'D', 'Mai Vu Phung', 3
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600045, 'A', 'Bui Nguyen', 1
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600047, 'A', 'Hua Bui Phung', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600050, 'C', 'Mai Hua', 5
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600057, 'A', 'Hua Mai Vu Vu', 9
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600063, 'A', 'Phung Tran Nguyen', 7
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600070, 'C', 'Le Hua Vu', 9
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600079, 'C', 'Hua Vu Tran', 1
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600098, 'C', 'Bui Hua Vu Nguyen', 2
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610008, 'C', 'Nguyen Mai Vu Le', 1
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610025, 'D', 'Bui Bui Hua', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610028, 'A', 'Hua Phung Bui', 10
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610035, 'B', 'Phung Hua', 1
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610053, 'C', 'Le Bui Bui Mai', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610082, 'E', 'Phung Vu Vu Hua', 9
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610086, 'A', 'Mai Nguyen Phung', 10
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610091, 'E', 'Nguyen Tran Phung', 5
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610093, 'D', 'Tran Mai Le Phung', 3
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610095, 'E', 'Tran Le', 4
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620007, 'B', 'Hua Nguyen Hua', 1
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620032, 'D', 'Tran Le Tran Hua', 9
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620041, 'D', 'Nguyen Bui Vu Bui', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620044, 'A', 'Hua Bui Mai', 3
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620051, 'D', 'Vu Bui', 5
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620052, 'C', 'Hua Mai Phung', 4
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620054, 'B', 'Hua Phung Mai', 7
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620072, 'D', 'Phung Nguyen', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620085, 'A', 'Hua Nguyen', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630001, 'C', 'Tran Vu Le Vu', 11
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630003, 'C', 'Le Vu', 3
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630016, 'C', 'Phung Phung', 9
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630023, 'B', 'Nguyen Bui', 7
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630034, 'A', 'Mai Phung Phung Nguyen', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630038, 'E', 'Vu Phung Hua', 6
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630040, 'C', 'Hua Tran Le', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630055, 'E', 'Le Le Vu', 2
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630062, 'D', 'Vu Mai', 6
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630066, 'A', 'Hua Hua Hua Vu', 10
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630076, 'B', 'Mai Phung', 3
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630080, 'E', 'Hua Nguyen Vu Vu', 11
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640004, 'B', 'Phung Vu', 7
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640010, 'D', 'Bui Le Phung Nguyen', 4
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640011, 'C', 'Le Nguyen', 4
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640014, 'A', 'Mai Bui Tran', 10
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640031, 'D', 'Mai Hua', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640036, 'E', 'Phung Bui', 2
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640059, 'D', 'Hua Vu Bui Mai', 11
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640064, 'C', 'Hua Nguyen', 10
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640067, 'C', 'Tran Nguyen', 3
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640077, 'D', 'Phung Mai', 1
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640090, 'A', 'Mai Nguyen Phung Le', 11
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640094, 'B', 'Mai Vu', 11
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650015, 'E', 'Mai Bui Vu', 1
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650018, 'C', 'Bui Nguyen Hua', 3
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650027, 'D', 'Bui Phung Vu Bui', 10
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650046, 'B', 'Phung Le Tran', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650049, 'A', 'Tran Tran Mai', 7
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650056, 'B', 'Nguyen Le Tran', 5
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650068, 'D', 'Nguyen Tran', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650069, 'D', 'Le Phung Hua Bui', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650074, 'C', 'Hua Tran Vu Le', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650078, 'A', 'Mai Phung Phung Nguyen', 1
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650089, 'A', 'Bui Bui Nguyen', 6
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660005, 'C', 'Mai Bui Nguyen', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660013, 'D', 'Mai Tran', 1
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660019, 'C', 'Bui Mai Vu Vu', 4
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660033, 'C', 'Le Mai Vu', 7
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660043, 'B', 'Phung Le Tran Mai', 7
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660061, 'B', 'Tran Vu Bui', 4
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660075, 'D', 'Hua Hua', 3
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660084, 'A', 'Bui Vu Bui Vu', 4
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670021, 'B', 'Hua Nguyen Phung Mai', 9
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670022, 'C', 'Vu Phung', 6
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670037, 'D', 'Bui Nguyen', 5
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670048, 'A', 'Nguyen Le Mai Bui', 3
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670087, 'D', 'Nguyen Bui Vu', 4
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670088, 'D', 'Phung Mai', 7
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670096, 'B', 'Bui Tran Hua Le', 5
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670097, 'B', 'Nguyen Tran Phung', 7
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680000, 'E', 'Tran Nguyen Phung Mai', 1
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680020, 'D', 'Vu Vu', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680024, 'D', 'Nguyen Phung', 6
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680029, 'C', 'Vu Phung Vu', 1
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680042, 'C', 'Le Nguyen', 4
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680065, 'B', 'Vu Nguyen Le Phung', 6
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680073, 'D', 'Le Phung Phung', 1
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680081, 'D', 'Phung Mai Le Nguyen', 11
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680083, 'A', 'Nguyen Hua Bui Le', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680092, 'A', 'Bui Nguyen Nguyen Nguyen', 9
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690006, 'E', 'Bui Hua Nguyen Tran', 8
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690009, 'E', 'Phung Vu Phung', 4
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690017, 'A', 'Le Le Le Hua', 5
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690030, 'C', 'Le Tran', 5
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690039, 'E', 'Vu Hua Vu', 5
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690058, 'D', 'Bui Phung Mai', 10
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690060, 'B', 'Le Bui', 3
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690071, 'B', 'Phung Vu Vu Vu', 9
);

INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690099, 'C', 'Phung Tran Vu', 4
);

--                                               StudentAccount 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO StudentAccount
    (ssn, password)
VALUES
    (
        1600002, '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke'
);

INSERT INTO StudentAccount
    (ssn, password)
VALUES
    (
        1600012, '$2b$05$fPaf0jZjkbquExZMiZb3GuTds.FJeVjiEnCxuiGBDdVCmzKRs9fbG'
);


--                                               StudyOffice 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO StudyOffice
    (id)
VALUES
    (
        12
);

INSERT INTO StudyOffice
    (id)
VALUES
    (
        13
);


--                                               StudyOfficeEmployee 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic00005', 12
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic10002', 12
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic10004', 13
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic20000', 13
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic30019', 12
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic40012', 13
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic50014', 13
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic50018', 12
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic60007', 12
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic60011', 13
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic60013', 12
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic70006', 12
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic70009', 13
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic80001', 13
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic80003', 12
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic80015', 13
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic80016', 12
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic80017', 13
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic90008', 12
);

INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic90010', 13
);


--                                               Teacher 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach00003', '', 1
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach10005', '', 1
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach10018', '', 2
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach30009', '', 2
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach30013', '', 3
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach40004', '', 3
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach40008', '', 4
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach40016', '', 4
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach50000', '', 5
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach50010', '', 5
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach60006', '', 6
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach60017', '', 6
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach70001', '', 7
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach70002', '', 7
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach70007', '', 8
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach80011', '', 9
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach80014', '', 10
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach90012', '', 10
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach90015', '', 11
);

INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach90019', '', 11
);

--                                               Publisher 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        0, 'pub0', 'UK'
);

INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        1, 'pub1', 'America'
);

INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        2, 'pub2', 'UK'
);

INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        3, 'pub3', 'UK'
);

INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        4, 'pub4', 'America'
);

INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        5, 'pub5', 'America'
);

INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        6, 'pub6', 'Vietnam'
);

INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        7, 'pub7', 'America'
);

INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        8, 'pub8', 'UK'
);

INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        9, 'pub9', 'Vietnam'
);

ALTER TABLE ReferenceBook DISABLE TRIGGER ALL
GO
--                                               ReferenceBook 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
0, 'Physics', '2013-07-16', 3
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
1, 'Social', '2019-12-25', 7
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
10, 'Electricity Electricity', '2015-09-06', 0
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
11, 'Language', '2014-05-17', 7
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
12, 'Mechanic', '2019-05-21', 3
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
13, 'Physics', '2015-05-22', 6
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
14, 'Mechanic', '2015-10-09', 7
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
15, 'Mechanic', '2013-12-02', 6
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
16, 'Electricity', '2013-10-09', 5
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
17, 'Computer Social', '2015-06-07', 7
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
18, 'Chemistry Chemistry', '2020-09-15', 5
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
19, 'Physics Language', '2012-01-23', 3
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
2, 'Music Chemistry', '2019-10-30', 0
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
20, 'Language', '2014-03-14', 9
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
21, 'Mechanic Language', '2020-03-14', 2
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
22, 'Physics', '2019-02-19', 4
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
23, 'Language', '2015-07-26', 0
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
24, 'Computer', '2019-07-24', 5
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
25, 'Language', '2013-10-18', 4
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
26, 'Language Music', '2018-06-30', 3
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
27, 'Social', '2014-06-26', 6
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
28, 'Chemistry Language', '2019-06-19', 8
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
29, 'Mechanic', '2018-08-17', 4
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
3, 'Mechanic Electricity', '2018-03-17', 4
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
4, 'Music', '2018-05-29', 6
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
5, 'Music', '2017-04-13', 0
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
6, 'Mechanic', '2017-05-02', 9
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
7, 'Chemistry', '2012-12-06', 4
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
8, 'Physics', '2019-10-09', 5
);

INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
VALUES
(
9, 'Electricity', '2014-02-03', 5
);

ALTER TABLE ReferenceBook ENABLE TRIGGER ALL
GO

--                                               Write 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
2, 0
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
4, 0
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
15, 1
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
5, 2
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
7, 3
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
17, 4
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
4, 5
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
15, 6
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
10, 7
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
10, 8
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
3, 9
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
6, 10
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
0, 11
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
1, 11
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
8, 12
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
11, 13
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
17, 13
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
17, 13
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
0, 14
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
5, 15
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
5, 16
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
11, 17
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
5, 18
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
10, 19
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
2, 19
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
14, 20
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
2, 21
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
6, 22
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
0, 23
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
12, 24
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
4, 24
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
9, 24
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
12, 25
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
15, 26
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
16, 27
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
11, 28
);

INSERT INTO Write(Author_ssn, Book_id)
VALUES
(
10, 29
);

-------------------------------------------- Week --------------------------------------------------------------------
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq171', '9/1/16'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq171', '9/8/16'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
3, 'cq171', '9/15/17'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq172', '2/1/18'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq172', '2/8/18'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
3, 'cq172', '2/15/18'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq173', '6/1/18'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq173', '6/8/18'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
3, 'cq173', '6/15/18'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq181', '9/1/18'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq181', '9/8/18'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
3, 'cq181', '9/15/18'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq182', '2/1/19'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq182', '2/8/19'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq183', '6/1/19'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq183', '6/8/19'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq191', '9/1/19'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq191', '9/8/19'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq192', '2/1/20'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq192', '2/8/20'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq193', '6/1/20'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq201', '9/1/20'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq201', '9/8/20'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
3, 'cq201', '9/15/21'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq202', '2/1/21'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq202', '2/8/21'
);

INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq203', '6/1/21'
);


-------------------------------------------- MainTeacher --------------------------------------------------------------------
INSERT INTO MainTeacher(ssn)
VALUES
(
'teach10005'
);

INSERT INTO MainTeacher(ssn)
VALUES
(
'teach10018'
);

INSERT INTO MainTeacher(ssn)
VALUES
(
'teach30009'
);

INSERT INTO MainTeacher(ssn)
VALUES
(
'teach30013'
);

INSERT INTO MainTeacher(ssn)
VALUES
(
'teach40004'
);

INSERT INTO MainTeacher(ssn)
VALUES
(
'teach40008'
);

INSERT INTO MainTeacher(ssn)
VALUES
(
'teach40016'
);
--          |

INSERT INTO MainTeacher(ssn)
VALUES
(
'teach50000'
);

INSERT INTO MainTeacher(ssn)
VALUES
(
'teach70001'
);

INSERT INTO MainTeacher(ssn)
VALUES
(
'teach70002'
);

----------------------------------------- Uses --------------------------------------------------------
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq171', 'AS1003', 'L01', 'teach40016', 0
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq171', 'CI2003', 'L01', 'teach50000', 1
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq171', 'EE1011', 'L01', 'teach50010', 2
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq171', 'CI2003', 'L01', 'teach70001', 3
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq171', 'CO2007', 'L01', 'teach70002', 4
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq172', 'CH2021', 'L01', 'teach70007', 5
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq172', 'AS2001', 'L01', 'teach80011', 6
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq172', 'CI1033', 'L01', 'teach80014', 7
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq172', 'IM3047', 'L01', 'teach90012', 8
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq173', 'EE1015', 'L01', 'teach90015', 0
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq173', 'AS1003', 'L01', 'teach90019', 1
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq181', 'CI2003', 'L01', 'teach40016', 2
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq181', 'EE1011', 'L01', 'teach50000', 9
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq181', 'CI2003', 'L01', 'teach50010', 10
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq181', 'CO2007', 'L01', 'teach40016', 12
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq182', 'CI2003', 'L01', 'teach50010', 13
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq182', 'IM3047', 'L01', 'teach60006', 14
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq182', 'EE1011', 'L01', 'teach60017', 15
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq183', 'CO2007', 'L01', 'teach00003', 16
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq183', 'CH2021', 'L01', 'teach10005', 17
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq191', 'AS2001', 'L01', 'teach10018', 18
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq191', 'CI1033', 'L01', 'teach30009', 19
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq192', 'IM3047', 'L01', 'teach30013', 0
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq193', 'EE1015', 'L01', 'teach40004', 1
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq201', 'AS1003', 'L01', 'teach70001', 1
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq201', 'CI2003', 'L01', 'teach90015', 3
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq202', 'EE1011', 'L01', 'teach90019', 5
);

INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq203', 'CI2003', 'L01', 'teach00003', 8
);

--------------------------------------- Responsible --------------------------------
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq171', 'AS1003', 'L01', 1, 'cq171', 'teach00003'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq171', 'CH1007', 'L01', 2, 'cq171', 'teach10005'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq172', 'CH2021', 'L01', 1, 'cq172', 'teach10018'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq172', 'CI1007', 'L01', 2, 'cq172', 'teach30009'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq173', 'CI1033', 'L01', 1, 'cq173', 'teach30013'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq181', 'CI2003', 'L01', 1, 'cq181', 'teach40004'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq181', 'CO1009', 'L01', 2, 'cq181', 'teach40008'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq182', 'CO2007', 'L01', 1, 'cq182', 'teach40016'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq182', 'EE2007', 'L01', 2, 'cq182', 'teach50000'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq183', 'GE2009', 'L01', 1, 'cq183', 'teach50010'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq191', 'IM3047', 'L01', 1, 'cq191', 'teach60006'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq191', 'IM3051', 'L01', 2, 'cq191', 'teach60017'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq192', 'AS1003', 'L01', 1, 'cq192', 'teach70001'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq192', 'CH1007', 'L01', 2, 'cq192', 'teach70002'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq193', 'CH2021', 'L01', 1, 'cq193', 'teach70007'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq201', 'CI1007', 'L01', 1, 'cq201', 'teach80011'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq201', 'CI1033', 'L01', 2, 'cq201', 'teach80014'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq202', 'CI2003', 'L01', 1, 'cq202', 'teach90012'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq202', 'CO1009', 'L01', 2, 'cq202', 'teach50000'
);

INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq203', 'CO2007', 'L01', 1, 'cq203', 'teach50010'
);

---------------------------------------- MainResponsible ------------------------------------------

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq171', 'AS1003', 'teach10005'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq171', 'CH1007', 'teach10018'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq172', 'CH2021', 'teach30009'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq172', 'CI1007', 'teach30013'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq173', 'CI1033', 'teach40004'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq181', 'CI2003', 'teach40008'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq181', 'CO1009', 'teach40016'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq182', 'CO2007', 'teach50000'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq182', 'EE2007', 'teach70001'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq183', 'GE2009', 'teach70002'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq191', 'IM3047', 'teach70001'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq191', 'IM3051', 'teach70002'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq192', 'AS1003', 'teach10005'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq192', 'CH1007', 'teach10018'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq193', 'CH2021', 'teach30009'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq201', 'CI1007', 'teach30013'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq201', 'CI1033', 'teach40004'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq202', 'CI2003', 'teach40008'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq202', 'CO1009', 'teach40016'
);

INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq203', 'CO2007', 'teach50000'
);

--                                               SubjectDepartment 
-- -----------------------------------------------------------------------------------------------------------------------------
INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'AS1003', 1
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CH1007', 2
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CH2021', 3
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CI1007', 4
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CI1033', 5
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CI2003', 6
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CO1009', 7
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CO2007', 8
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CO2017', 9
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'EE1011', 10
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'EE1015', 11
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'AS2001', 1
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CH2013', 2
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'EE2007', 3
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'GE2009', 4
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'IM3047', 5
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'IM3051', 6
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'IM3061', 7
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'ME2003', 8
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'ME2007', 9
);

--                                               Subject 
-- -----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Subject(id, name, credit)
VALUES
(
'AS1003', 'co ly thuyet', 3
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'AS2001', 'co hoc ung dung', 2
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'CH1007', 'phat trien ben vung', 2
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'CH2013', 'hoa vo co', 2
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'CH2021', 'hoa huu co', 2
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'CI1007', 'trac dia dai cuong', 2
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'CI1033', 've ky thuat', 2
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'CI2003', 'co luu chat', 2
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'CO1009', 'he thong so', 3
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'CO2007', 'kien truc may tinh', 3
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'CO2017', 'he dieu hanh', 2
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'EE1011', 'giai tich mach', 1
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'EE1015', 'ky thuat so', 3
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'EE2007', 'mach dien', 3
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'GE2009', 'co hoc da', 3
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'IM3047', 'giao tiep trong kinh doanh', 3
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'IM3051', 'dao duc kinh doanh', 3
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'IM3061', 'anh van trong kinh doanh', 2
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'ME2003', 'nguyen ly may', 3
);

INSERT INTO Subject(id, name, credit)
VALUES
(
'ME2007', 'chi tiet may', 1
);

--                                               Class 
-- -----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'AS1003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'AS1003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L02', 60, 'cq172', 'AS1003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L03', 60, 'cq172', 'AS1003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'AS1003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'AS1003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'AS1003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'AS1003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'AS1003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'AS1003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'AS1003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'AS1003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'AS1003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'AS1003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'AS2001'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'AS2001'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'AS2001'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'AS2001'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'AS2001'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'AS2001'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'AS2001'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'AS2001'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L02', 60, 'cq192', 'AS2001'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'AS2001'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'AS2001'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'AS2001'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'AS2001'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'CH1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'CH1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'CH1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'CH1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'CH1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'CH1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'CH1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'CH1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'CH1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'CH1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'CH1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'CH1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'CH2013'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'CH2013'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'CH2013'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'CH2013'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'CH2013'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'CH2013'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'CH2013'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'CH2013'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'CH2013'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'CH2013'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'CH2013'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'CH2013'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'CH2021'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'CH2021'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'CH2021'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'CH2021'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'CH2021'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'CH2021'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'CH2021'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'CH2021'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'CH2021'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'CH2021'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'CH2021'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'CH2021'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'CI1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'CI1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'CI1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'CI1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'CI1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'CI1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'CI1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'CI1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'CI1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'CI1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'CI1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'CI1007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'CI1033'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'CI1033'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'CI1033'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'CI1033'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'CI1033'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'CI1033'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'CI1033'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'CI1033'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'CI1033'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'CI1033'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'CI1033'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'CI1033'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'CI2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'CI2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'CI2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'CI2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'CI2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'CI2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'CI2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'CI2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'CI2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'CI2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'CI2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'CI2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'CO1009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'CO1009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'CO1009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'CO1009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'CO1009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'CO1009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'CO1009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'CO1009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'CO1009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'CO1009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'CO1009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'CO1009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'CO2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'CO2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'CO2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'CO2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'CO2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'CO2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'CO2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'CO2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'CO2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'CO2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'CO2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'CO2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'CO2017'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'CO2017'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'CO2017'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'CO2017'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'CO2017'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'CO2017'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'CO2017'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'CO2017'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'CO2017'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'CO2017'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'CO2017'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'CO2017'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'EE1011'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'EE1011'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'EE1011'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'EE1011'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'EE1011'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'EE1011'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'EE1011'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'EE1011'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'EE1011'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'EE1011'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'EE1011'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'EE1011'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'EE1015'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'EE1015'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'EE1015'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'EE1015'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'EE1015'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'EE1015'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'EE1015'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'EE1015'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'EE1015'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'EE1015'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'EE1015'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'EE1015'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'EE2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'EE2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'EE2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'EE2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'EE2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'EE2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'EE2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'EE2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'EE2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'EE2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'EE2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'EE2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'GE2009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'GE2009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'GE2009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'GE2009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'GE2009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'GE2009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'GE2009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'GE2009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'GE2009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'GE2009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'GE2009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'GE2009'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'IM3047'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'IM3047'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'IM3047'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'IM3047'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'IM3047'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'IM3047'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'IM3047'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'IM3047'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'IM3047'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'IM3047'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'IM3047'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'IM3047'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'IM3051'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'IM3051'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'IM3051'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'IM3051'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'IM3051'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'IM3051'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'IM3051'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'IM3051'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'IM3051'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'IM3051'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'IM3051'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'IM3051'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'IM3061'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'IM3061'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'IM3061'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'IM3061'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'IM3061'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'IM3061'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'IM3061'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'IM3061'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'IM3061'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'IM3061'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'IM3061'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'IM3061'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'ME2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'ME2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'ME2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'ME2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'ME2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'ME2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'ME2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'ME2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'ME2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'ME2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'ME2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'ME2003'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq171', 'ME2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq172', 'ME2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq173', 'ME2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq181', 'ME2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq182', 'ME2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq183', 'ME2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq191', 'ME2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq192', 'ME2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq193', 'ME2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq201', 'ME2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq202', 'ME2007'
);

INSERT INTO Class(id, maxStudent, Semester_id, Subject_id)
VALUES
(
'L01', 60, 'cq203', 'ME2007'
);

--                                               Field 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Field(Book_id, Field)
VALUES
(
0, 'Physics'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
1, 'Social'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
2, 'Music Chemistry'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
3, 'Mechanic Electricity'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
4, 'Music'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
5, 'Music'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
6, 'Mechanic'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
7, 'Chemistry'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
8, 'Physics'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
9, 'Electricity'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
10, 'Electricity Electricity'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
11, 'Language'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
12, 'Mechanic'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
13, 'Physics'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
14, 'Mechanic'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
15, 'Mechanic'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
16, 'Electricity'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
17, 'Computer Social'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
18, 'Chemistry Chemistry'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
19, 'Physics Language'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
20, 'Language'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
21, 'Mechanic Language'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
22, 'Physics'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
23, 'Language'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
24, 'Computer'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
25, 'Language'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
26, 'Language Music'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
27, 'Social'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
28, 'Chemistry Language'
);

INSERT INTO Field(Book_id, Field)
VALUES
(
29, 'Mechanic'
);

--                                               Register 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600002, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600012, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600026, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600045, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600047, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600050, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600057, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600063, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600070, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600079, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600098, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610008, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610025, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610028, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610035, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610053, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610082, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610086, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610091, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610093, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610095, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620007, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620032, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620041, 'L01', 'cq171', 'CO1009'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600050, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600057, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600063, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600070, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600079, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600098, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610008, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610025, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610028, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610035, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610053, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610082, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610086, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610091, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610093, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610095, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620007, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620032, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620041, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620044, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620051, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620052, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620054, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620072, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620085, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630001, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630003, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630016, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630023, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630034, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630038, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630040, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630055, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630062, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630066, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630076, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630080, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640004, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640010, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640011, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640014, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640031, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640036, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640059, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640064, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640067, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640077, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640090, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640094, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650015, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650018, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650027, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650046, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650049, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650056, 'L01', 'cq201', 'EE1015'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600045, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600047, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600050, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600057, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600063, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600070, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600079, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1600098, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610008, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610025, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610028, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610035, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610053, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610082, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610086, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610091, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610093, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1610095, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620007, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620032, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620041, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620044, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620051, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620052, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620054, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620072, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1620085, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630001, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630003, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630016, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630023, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630034, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630038, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630040, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630055, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630062, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630066, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630076, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1630080, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640004, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640010, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640011, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640014, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640031, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640036, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640059, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640064, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640067, 'L01', 'cq171', 'IM3061'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1680000, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1680020, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1680024, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1680029, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1680042, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1680065, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1680073, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1680081, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1680083, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1680092, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1690006, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1690009, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1690017, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1690030, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1690039, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1690058, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1690060, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1690071, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1690099, 'L01', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640090, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1640094, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650015, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650018, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650027, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650046, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650049, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650056, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650068, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650069, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650074, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650078, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1650089, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1660005, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1660013, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1660019, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1660033, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1660043, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1660061, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1660075, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1660084, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1670021, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1670022, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1670037, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1670048, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1670087, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1670088, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1670096, 'L02', 'cq172', 'AS1003'
);

INSERT INTO Register(Student_id, Class_id, Semester_id, Subject_id)
VALUES
(
1670097, 'L02', 'cq172', 'AS1003'
);

--                                               Opens 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'AS1003', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'AS1003', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'AS1003', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'AS1003', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'AS1003', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq183', 'AS1003', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'AS1003', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'AS1003', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'AS1003', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'AS1003', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'AS2001', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'AS2001', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'AS2001', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'AS2001', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'AS2001', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'AS2001', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'AS2001', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'AS2001', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'AS2001', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'AS2001', 1
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'CH1007', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'CH1007', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'CH1007', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'CH1007', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq183', 'CH1007', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'CH1007', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'CH1007', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'CH1007', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'CH1007', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'CH1007', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'CH1007', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'CH2013', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'CH2013', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'CH2013', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'CH2013', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'CH2013', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq183', 'CH2013', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'CH2013', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'CH2013', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'CH2013', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'CH2013', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'CH2013', 2
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'CH2021', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'CH2021', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'CH2021', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'CH2021', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'CH2021', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq183', 'CH2021', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'CH2021', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'CH2021', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'CH2021', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'CH2021', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'CH2021', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'CI1007', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'CI1007', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'CI1007', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'CI1007', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'CI1007', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'CI1007', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'CI1007', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'CI1007', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'CI1007', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'CI1007', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'CI1033', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'CI1033', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'CI1033', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'CI1033', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'CI1033', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq183', 'CI1033', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'CI1033', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'CI1033', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'CI1033', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'CI1033', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'CI1033', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'CI1033', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'CI2003', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'CI2003', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'CI2003', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'CI2003', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'CI2003', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq183', 'CI2003', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'CI2003', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'CI2003', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'CI2003', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'CI2003', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'CI2003', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'CI2003', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'CO1009', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'CO1009', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'CO1009', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'CO1009', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'CO1009', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq183', 'CO1009', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'CO1009', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'CO1009', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'CO1009', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'CO1009', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'CO1009', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'CO1009', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'CO2007', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'CO2007', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'CO2007', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'CO2007', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'CO2007', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'CO2007', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'CO2007', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'CO2007', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'CO2007', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'CO2007', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'CO2017', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'CO2017', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'CO2017', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'CO2017', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq183', 'CO2017', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'CO2017', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'CO2017', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'CO2017', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'CO2017', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'CO2017', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'CO2017', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'EE1011', 10
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'EE1011', 10
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'EE1011', 10
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'EE1011', 10
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'EE1011', 10
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq183', 'EE1011', 10
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'EE1011', 10
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'EE1011', 10
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'EE1011', 10
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'EE1011', 10
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'EE1011', 10
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'EE1011', 10
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'EE1015', 11
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'EE1015', 11
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'EE1015', 11
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'EE1015', 11
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'EE1015', 11
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq183', 'EE1015', 11
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'EE1015', 11
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'EE1015', 11
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'EE1015', 11
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'EE1015', 11
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'EE1015', 11
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'EE1015', 11
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'EE2007', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'EE2007', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'EE2007', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'EE2007', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'EE2007', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq183', 'EE2007', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'EE2007', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'EE2007', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'EE2007', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'EE2007', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'EE2007', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'EE2007', 3
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'GE2009', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'GE2009', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'GE2009', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'GE2009', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'GE2009', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq183', 'GE2009', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'GE2009', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'GE2009', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'GE2009', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'GE2009', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'GE2009', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'GE2009', 4
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'IM3047', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'IM3047', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'IM3047', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'IM3047', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'IM3047', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq183', 'IM3047', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'IM3047', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'IM3047', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'IM3047', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'IM3047', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'IM3047', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'IM3047', 5
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'IM3051', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'IM3051', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'IM3051', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'IM3051', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'IM3051', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq183', 'IM3051', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'IM3051', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'IM3051', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'IM3051', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'IM3051', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'IM3051', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'IM3051', 6
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'IM3061', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'IM3061', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'IM3061', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'IM3061', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'IM3061', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq183', 'IM3061', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'IM3061', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'IM3061', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'IM3061', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'IM3061', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'IM3061', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'IM3061', 7
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'ME2003', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'ME2003', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq173', 'ME2003', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'ME2003', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'ME2003', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'ME2003', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'ME2003', 8
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq171', 'ME2007', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq172', 'ME2007', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq181', 'ME2007', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq182', 'ME2007', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq191', 'ME2007', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq192', 'ME2007', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq193', 'ME2007', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq201', 'ME2007', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq202', 'ME2007', 9
);

INSERT INTO Opens(Semester_id, Subject_id, Department_id)
VALUES
(
'cq203', 'ME2007', 9
);


--                                               SubjectDepartment 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'AS1003', 1
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CH1007', 2
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CH2021', 3
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CI1007', 4
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CI1033', 5
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CI2003', 6
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CO1009', 7
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CO2007', 8
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CO2017', 9
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'EE1011', 10
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'EE1015', 11
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'AS2001', 1
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'CH2013', 2
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'EE2007', 3
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'GE2009', 4
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'IM3047', 5
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'IM3051', 6
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'IM3061', 7
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'ME2003', 8
);

INSERT INTO SubjectDepartment(subject_id, did)
VALUES
(
'ME2007', 9
);


--                                               StudyStatus 
-----------------------------------------------------------------------------------------------------------------------------
INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600002, 'cq171', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600002, 'cq172', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600002, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600002, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600002, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600002, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600002, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600002, 'cq192', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600002, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600002, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600002, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600002, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600012, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600012, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600012, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600012, 'cq181', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600012, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600012, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600012, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600012, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600012, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600012, 'cq201', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600012, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600012, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600026, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600026, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600026, 'cq173', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600026, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600026, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600026, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600026, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600026, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600026, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600026, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600026, 'cq202', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600026, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600045, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600045, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600045, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600045, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600045, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600045, 'cq183', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600045, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600045, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600045, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600045, 'cq201', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600045, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600045, 'cq203', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600047, 'cq171', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600047, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600047, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600047, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600047, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600047, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600047, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600047, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600047, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600047, 'cq201', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600047, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600047, 'cq203', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600050, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600050, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600050, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600050, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600050, 'cq182', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600050, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600050, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600050, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600050, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600050, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600050, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600050, 'cq203', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600057, 'cq171', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600057, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600057, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600057, 'cq181', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600057, 'cq182', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600057, 'cq183', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600057, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600057, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600057, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600057, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600057, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600057, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600063, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600063, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600063, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600063, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600063, 'cq182', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600063, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600063, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600063, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600063, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600063, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600063, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600063, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600070, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600070, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600070, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600070, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600070, 'cq182', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600070, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600070, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600070, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600070, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600070, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600070, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600070, 'cq203', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600079, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600079, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600079, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600079, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600079, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600079, 'cq183', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600079, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600079, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600079, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600079, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600079, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600079, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600098, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600098, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600098, 'cq173', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600098, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600098, 'cq182', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600098, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600098, 'cq191', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600098, 'cq192', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600098, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600098, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600098, 'cq202', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1600098, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610008, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610008, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610008, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610008, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610008, 'cq182', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610008, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610008, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610008, 'cq192', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610008, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610008, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610008, 'cq202', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610008, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610025, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610025, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610025, 'cq173', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610025, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610025, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610025, 'cq183', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610025, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610025, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610025, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610025, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610025, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610025, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610028, 'cq171', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610028, 'cq172', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610028, 'cq173', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610028, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610028, 'cq182', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610028, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610028, 'cq191', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610028, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610028, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610028, 'cq201', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610028, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610028, 'cq203', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610035, 'cq171', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610035, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610035, 'cq173', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610035, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610035, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610035, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610035, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610035, 'cq192', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610035, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610035, 'cq201', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610035, 'cq202', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610035, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610053, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610053, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610053, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610053, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610053, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610053, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610053, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610053, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610053, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610053, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610053, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610053, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610082, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610082, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610082, 'cq173', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610082, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610082, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610082, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610082, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610082, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610082, 'cq193', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610082, 'cq201', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610082, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610082, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610086, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610086, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610086, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610086, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610086, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610086, 'cq183', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610086, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610086, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610086, 'cq193', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610086, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610086, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610086, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610091, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610091, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610091, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610091, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610091, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610091, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610091, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610091, 'cq192', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610091, 'cq193', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610091, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610091, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610091, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610093, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610093, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610093, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610093, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610093, 'cq182', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610093, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610093, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610093, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610093, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610093, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610093, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610093, 'cq203', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610095, 'cq171', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610095, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610095, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610095, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610095, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610095, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610095, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610095, 'cq192', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610095, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610095, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610095, 'cq202', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1610095, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620007, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620007, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620007, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620007, 'cq181', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620007, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620007, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620007, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620007, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620007, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620007, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620007, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620007, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620032, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620032, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620032, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620032, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620032, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620032, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620032, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620032, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620032, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620032, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620032, 'cq202', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620032, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620041, 'cq171', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620041, 'cq172', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620041, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620041, 'cq181', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620041, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620041, 'cq183', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620041, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620041, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620041, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620041, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620041, 'cq202', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620041, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620044, 'cq171', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620044, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620044, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620044, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620044, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620044, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620044, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620044, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620044, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620044, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620044, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620044, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620051, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620051, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620051, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620051, 'cq181', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620051, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620051, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620051, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620051, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620051, 'cq193', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620051, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620051, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620051, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620052, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620052, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620052, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620052, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620052, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620052, 'cq183', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620052, 'cq191', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620052, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620052, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620052, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620052, 'cq202', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620052, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620054, 'cq171', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620054, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620054, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620054, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620054, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620054, 'cq183', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620054, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620054, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620054, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620054, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620054, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620054, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620072, 'cq171', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620072, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620072, 'cq173', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620072, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620072, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620072, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620072, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620072, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620072, 'cq193', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620072, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620072, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620072, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620085, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620085, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620085, 'cq173', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620085, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620085, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620085, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620085, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620085, 'cq192', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620085, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620085, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620085, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1620085, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630001, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630001, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630001, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630001, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630001, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630001, 'cq183', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630001, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630001, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630001, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630001, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630001, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630001, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630003, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630003, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630003, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630003, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630003, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630003, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630003, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630003, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630003, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630003, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630003, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630003, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630016, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630016, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630016, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630016, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630016, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630016, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630016, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630016, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630016, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630016, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630016, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630016, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630023, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630023, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630023, 'cq173', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630023, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630023, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630023, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630023, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630023, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630023, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630023, 'cq201', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630023, 'cq202', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630023, 'cq203', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630034, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630034, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630034, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630034, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630034, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630034, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630034, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630034, 'cq192', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630034, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630034, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630034, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630034, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630038, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630038, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630038, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630038, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630038, 'cq182', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630038, 'cq183', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630038, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630038, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630038, 'cq193', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630038, 'cq201', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630038, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630038, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630040, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630040, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630040, 'cq173', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630040, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630040, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630040, 'cq183', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630040, 'cq191', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630040, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630040, 'cq193', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630040, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630040, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630040, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630055, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630055, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630055, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630055, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630055, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630055, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630055, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630055, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630055, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630055, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630055, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630055, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630062, 'cq171', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630062, 'cq172', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630062, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630062, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630062, 'cq182', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630062, 'cq183', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630062, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630062, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630062, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630062, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630062, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630062, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630066, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630066, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630066, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630066, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630066, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630066, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630066, 'cq191', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630066, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630066, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630066, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630066, 'cq202', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630066, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630076, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630076, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630076, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630076, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630076, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630076, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630076, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630076, 'cq192', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630076, 'cq193', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630076, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630076, 'cq202', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630076, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630080, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630080, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630080, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630080, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630080, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630080, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630080, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630080, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630080, 'cq193', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630080, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630080, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1630080, 'cq203', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640004, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640004, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640004, 'cq173', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640004, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640004, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640004, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640004, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640004, 'cq192', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640004, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640004, 'cq201', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640004, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640004, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640010, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640010, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640010, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640010, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640010, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640010, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640010, 'cq191', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640010, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640010, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640010, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640010, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640010, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640011, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640011, 'cq172', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640011, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640011, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640011, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640011, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640011, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640011, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640011, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640011, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640011, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640011, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640014, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640014, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640014, 'cq173', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640014, 'cq181', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640014, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640014, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640014, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640014, 'cq192', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640014, 'cq193', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640014, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640014, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640014, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640031, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640031, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640031, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640031, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640031, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640031, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640031, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640031, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640031, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640031, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640031, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640031, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640036, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640036, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640036, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640036, 'cq181', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640036, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640036, 'cq183', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640036, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640036, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640036, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640036, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640036, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640036, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640059, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640059, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640059, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640059, 'cq181', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640059, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640059, 'cq183', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640059, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640059, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640059, 'cq193', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640059, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640059, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640059, 'cq203', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640064, 'cq171', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640064, 'cq172', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640064, 'cq173', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640064, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640064, 'cq182', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640064, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640064, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640064, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640064, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640064, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640064, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640064, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640067, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640067, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640067, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640067, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640067, 'cq182', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640067, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640067, 'cq191', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640067, 'cq192', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640067, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640067, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640067, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640067, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640077, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640077, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640077, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640077, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640077, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640077, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640077, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640077, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640077, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640077, 'cq201', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640077, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640077, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640090, 'cq171', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640090, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640090, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640090, 'cq181', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640090, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640090, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640090, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640090, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640090, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640090, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640090, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640090, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640094, 'cq171', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640094, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640094, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640094, 'cq181', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640094, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640094, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640094, 'cq191', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640094, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640094, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640094, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640094, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1640094, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650015, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650015, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650015, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650015, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650015, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650015, 'cq183', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650015, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650015, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650015, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650015, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650015, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650015, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650018, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650018, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650018, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650018, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650018, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650018, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650018, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650018, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650018, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650018, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650018, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650018, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650027, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650027, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650027, 'cq173', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650027, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650027, 'cq182', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650027, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650027, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650027, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650027, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650027, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650027, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650027, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650046, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650046, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650046, 'cq173', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650046, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650046, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650046, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650046, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650046, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650046, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650046, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650046, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650046, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650049, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650049, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650049, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650049, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650049, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650049, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650049, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650049, 'cq192', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650049, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650049, 'cq201', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650049, 'cq202', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650049, 'cq203', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650056, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650056, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650056, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650056, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650056, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650056, 'cq183', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650056, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650056, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650056, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650056, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650056, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650056, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650068, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650068, 'cq172', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650068, 'cq173', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650068, 'cq181', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650068, 'cq182', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650068, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650068, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650068, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650068, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650068, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650068, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650068, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650069, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650069, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650069, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650069, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650069, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650069, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650069, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650069, 'cq192', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650069, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650069, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650069, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650069, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650074, 'cq171', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650074, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650074, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650074, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650074, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650074, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650074, 'cq191', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650074, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650074, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650074, 'cq201', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650074, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650074, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650078, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650078, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650078, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650078, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650078, 'cq182', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650078, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650078, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650078, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650078, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650078, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650078, 'cq202', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650078, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650089, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650089, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650089, 'cq173', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650089, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650089, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650089, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650089, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650089, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650089, 'cq193', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650089, 'cq201', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650089, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1650089, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660005, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660005, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660005, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660005, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660005, 'cq182', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660005, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660005, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660005, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660005, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660005, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660005, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660005, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660013, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660013, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660013, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660013, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660013, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660013, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660013, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660013, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660013, 'cq193', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660013, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660013, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660013, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660019, 'cq171', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660019, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660019, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660019, 'cq181', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660019, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660019, 'cq183', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660019, 'cq191', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660019, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660019, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660019, 'cq201', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660019, 'cq202', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660019, 'cq203', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660033, 'cq171', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660033, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660033, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660033, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660033, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660033, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660033, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660033, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660033, 'cq193', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660033, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660033, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660033, 'cq203', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660043, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660043, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660043, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660043, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660043, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660043, 'cq183', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660043, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660043, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660043, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660043, 'cq201', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660043, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660043, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660061, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660061, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660061, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660061, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660061, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660061, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660061, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660061, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660061, 'cq193', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660061, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660061, 'cq202', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660061, 'cq203', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660075, 'cq171', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660075, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660075, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660075, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660075, 'cq182', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660075, 'cq183', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660075, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660075, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660075, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660075, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660075, 'cq202', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660075, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660084, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660084, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660084, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660084, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660084, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660084, 'cq183', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660084, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660084, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660084, 'cq193', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660084, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660084, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1660084, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670021, 'cq171', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670021, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670021, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670021, 'cq181', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670021, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670021, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670021, 'cq191', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670021, 'cq192', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670021, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670021, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670021, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670021, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670022, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670022, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670022, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670022, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670022, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670022, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670022, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670022, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670022, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670022, 'cq201', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670022, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670022, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670037, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670037, 'cq172', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670037, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670037, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670037, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670037, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670037, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670037, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670037, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670037, 'cq201', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670037, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670037, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670048, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670048, 'cq172', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670048, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670048, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670048, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670048, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670048, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670048, 'cq192', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670048, 'cq193', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670048, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670048, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670048, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670087, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670087, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670087, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670087, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670087, 'cq182', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670087, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670087, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670087, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670087, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670087, 'cq201', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670087, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670087, 'cq203', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670088, 'cq171', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670088, 'cq172', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670088, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670088, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670088, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670088, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670088, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670088, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670088, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670088, 'cq201', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670088, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670088, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670096, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670096, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670096, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670096, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670096, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670096, 'cq183', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670096, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670096, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670096, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670096, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670096, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670096, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670097, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670097, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670097, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670097, 'cq181', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670097, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670097, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670097, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670097, 'cq192', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670097, 'cq193', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670097, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670097, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1670097, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680000, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680000, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680000, 'cq173', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680000, 'cq181', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680000, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680000, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680000, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680000, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680000, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680000, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680000, 'cq202', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680000, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680020, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680020, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680020, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680020, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680020, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680020, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680020, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680020, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680020, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680020, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680020, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680020, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680024, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680024, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680024, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680024, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680024, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680024, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680024, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680024, 'cq192', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680024, 'cq193', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680024, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680024, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680024, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680029, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680029, 'cq172', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680029, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680029, 'cq181', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680029, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680029, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680029, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680029, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680029, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680029, 'cq201', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680029, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680029, 'cq203', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680042, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680042, 'cq172', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680042, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680042, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680042, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680042, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680042, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680042, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680042, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680042, 'cq201', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680042, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680042, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680065, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680065, 'cq172', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680065, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680065, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680065, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680065, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680065, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680065, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680065, 'cq193', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680065, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680065, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680065, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680073, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680073, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680073, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680073, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680073, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680073, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680073, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680073, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680073, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680073, 'cq201', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680073, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680073, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680081, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680081, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680081, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680081, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680081, 'cq182', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680081, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680081, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680081, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680081, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680081, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680081, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680081, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680083, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680083, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680083, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680083, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680083, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680083, 'cq183', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680083, 'cq191', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680083, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680083, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680083, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680083, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680083, 'cq203', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680092, 'cq171', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680092, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680092, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680092, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680092, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680092, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680092, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680092, 'cq192', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680092, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680092, 'cq201', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680092, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1680092, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690006, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690006, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690006, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690006, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690006, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690006, 'cq183', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690006, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690006, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690006, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690006, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690006, 'cq202', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690006, 'cq203', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690009, 'cq171', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690009, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690009, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690009, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690009, 'cq182', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690009, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690009, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690009, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690009, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690009, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690009, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690009, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690017, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690017, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690017, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690017, 'cq181', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690017, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690017, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690017, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690017, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690017, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690017, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690017, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690017, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690030, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690030, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690030, 'cq173', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690030, 'cq181', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690030, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690030, 'cq183', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690030, 'cq191', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690030, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690030, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690030, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690030, 'cq202', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690030, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690039, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690039, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690039, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690039, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690039, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690039, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690039, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690039, 'cq192', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690039, 'cq193', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690039, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690039, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690039, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690058, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690058, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690058, 'cq173', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690058, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690058, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690058, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690058, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690058, 'cq192', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690058, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690058, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690058, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690058, 'cq203', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690060, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690060, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690060, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690060, 'cq181', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690060, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690060, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690060, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690060, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690060, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690060, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690060, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690060, 'cq203', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690071, 'cq171', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690071, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690071, 'cq173', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690071, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690071, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690071, 'cq183', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690071, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690071, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690071, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690071, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690071, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690071, 'cq203', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690099, 'cq171', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690099, 'cq172', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690099, 'cq173', 'pause'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690099, 'cq181', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690099, 'cq182', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690099, 'cq183', 'stop'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690099, 'cq191', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690099, 'cq192', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690099, 'cq193', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690099, 'cq201', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690099, 'cq202', 'normal'
);

INSERT INTO StudyStatus(sid, semesterId, status)
VALUES
(
1690099, 'cq203', 'normal'
);
