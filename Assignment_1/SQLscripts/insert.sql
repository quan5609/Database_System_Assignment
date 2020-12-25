USE Class_Registration
GO

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
--                                               AUTHOR 
-----------------------------------------------------------------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        0, 'D', 'Nguyen Tran'
);

/* INSERT QUERY NO: 2 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        1, 'D', 'Mai Hua Le'
);

/* INSERT QUERY NO: 3 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        10, 'C', 'Bui Le Nguyen'
);

/* INSERT QUERY NO: 4 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        11, 'B', 'Mai Phung Nguyen Phung'
);

/* INSERT QUERY NO: 5 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        12, 'A', 'Mai Vu Tran'
);

/* INSERT QUERY NO: 6 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        13, 'D', 'Mai Le Mai Bui'
);

/* INSERT QUERY NO: 7 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        14, 'B', 'Nguyen Vu Hua'
);

/* INSERT QUERY NO: 8 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        15, 'E', 'Hua Nguyen Nguyen'
);

/* INSERT QUERY NO: 9 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        16, 'D', 'Le Tran Le'
);

/* INSERT QUERY NO: 10 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        17, 'E', 'Phung Bui Hua'
);

/* INSERT QUERY NO: 11 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        18, 'C', 'Hua Bui Phung'
);

/* INSERT QUERY NO: 12 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        19, 'E', 'Tran Vu Hua'
);

/* INSERT QUERY NO: 13 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        2, 'D', 'Le Tran'
);

/* INSERT QUERY NO: 14 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        3, 'C', 'Vu Nguyen Phung Nguyen'
);

/* INSERT QUERY NO: 15 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        4, 'A', 'Le Bui Phung'
);

/* INSERT QUERY NO: 16 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        5, 'E', 'Hua Phung'
);

/* INSERT QUERY NO: 17 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        6, 'E', 'Mai Vu'
);

/* INSERT QUERY NO: 18 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        7, 'A', 'Nguyen Bui Nguyen'
);

/* INSERT QUERY NO: 19 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        8, 'A', 'Phung Le Vu Hua'
);

/* INSERT QUERY NO: 20 */
INSERT INTO Author
    (ssn, firstName, lastName)
VALUES
    (
        9, 'A', 'Tran Tran Nguyen'
);

--                                               EducationAgency 
-----------------------------------------------------------------------------------------------------------------------------
/* INSERT QUERY NO: 1 */

INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        1, 1111111101, 'A1', 'ck@hcmut.edu.vn'
);

/* INSERT QUERY NO: 2 */
INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        10, 1111111110, 'A10', 'cnvl@hcmut.edu.vn'
);

/* INSERT QUERY NO: 3 */
INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        11, 1111111111, 'A11', 'xd@hcmut.edu.vn'
);

/* INSERT QUERY NO: 4 */
INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        12, 1111111112, 'A12', 'cq@hcmut.edu.vn'
);

/* INSERT QUERY NO: 5 */
INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        13, 1111111113, 'A13', 'oisp@hcmut.edu.vn'
);

/* INSERT QUERY NO: 6 */
INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        2, 1111111102, 'A2', 'dk@hcmut.edu.vn'
);

/* INSERT QUERY NO: 7 */
INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        3, 1111111103, 'A3', 'dt@hcmut.edu.vn'
);

/* INSERT QUERY NO: 8 */
INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        4, 1111111104, 'A4', 'gt@hcmut.edu.vn'
);

/* INSERT QUERY NO: 9 */
INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        5, 1111111105, 'A5', 'hh@hcmut.edu.vn'
);

/* INSERT QUERY NO: 10 */
INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        6, 1111111106, 'A6', 'mt@hcmut.edu.vn'
);

/* INSERT QUERY NO: 11 */
INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        7, 1111111107, 'A7', 'khmt@hcmut.edu.vn'
);

/* INSERT QUERY NO: 12 */
INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        8, 1111111108, 'A8', 'qlcn@hcmut.edu.vn'
);

/* INSERT QUERY NO: 13 */
INSERT INTO EducationAgency
    (id, phone, departmentLocation, email)
VALUES
    (
        9, 1111111109, 'A9', 'khud@hcmut.edu.vn'
);


--                                               DEPARTMENT 
-----------------------------------------------------------------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO Department
    (id, name)
VALUES
    (
        1, 'Co khi'
);

/* INSERT QUERY NO: 2 */
INSERT INTO Department
    (id, name)
VALUES
    (
        10, 'Cong nghe vat lieu'
);

/* INSERT QUERY NO: 3 */
INSERT INTO Department
    (id, name)
VALUES
    (
        11, 'Ky thuat xay dung'
);

/* INSERT QUERY NO: 4 */
INSERT INTO Department
    (id, name)
VALUES
    (
        2, 'Ky thuat dia chat dau khi'
);

/* INSERT QUERY NO: 5 */
INSERT INTO Department
    (id, name)
VALUES
    (
        3, 'Dien - dien tu'
);

/* INSERT QUERY NO: 6 */
INSERT INTO Department
    (id, name)
VALUES
    (
        4, 'Ky thuat giao thong'
);

/* INSERT QUERY NO: 7 */
INSERT INTO Department
    (id, name)
VALUES
    (
        5, 'Ky thuat hoa hoc'
);

/* INSERT QUERY NO: 8 */
INSERT INTO Department
    (id, name)
VALUES
    (
        6, 'Moi truong va tai nguyen'
);

/* INSERT QUERY NO: 9 */
INSERT INTO Department
    (id, name)
VALUES
    (
        7, 'Khoa hoc va ky thuat may tinh'
);

/* INSERT QUERY NO: 10 */
INSERT INTO Department
    (id, name)
VALUES
    (
        8, 'Quan ly cong nghiep'
);

/* INSERT QUERY NO: 11 */
INSERT INTO Department
    (id, name)
VALUES
    (
        9, 'Khoa hoc ung dung'
);


--                                               Employee 
-----------------------------------------------------------------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar00003', 9517994782, 'emaibuihuaphung@hcmut.edu.vn', 'E', 'Mai Bui Hua Phung'
);

/* INSERT QUERY NO: 2 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar00006', 8187131417, 'abuibuibuihua@hcmut.edu.vn', 'A', 'Bui Bui Bui Hua'
);

/* INSERT QUERY NO: 3 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar00017', 2819739124, 'ahuaphungmaiphung@hcmut.edu.vn', 'A', 'Hua Phung Mai Phung'
);

/* INSERT QUERY NO: 4 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar10005', 8514446634, 'dhuanguyenvuphung@hcmut.edu.vn', 'D', 'Hua Nguyen Vu Phung'
);

/* INSERT QUERY NO: 5 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar20013', 9838715259, 'etranbuinguyennguyen@hcmut.edu.vn', 'E', 'Tran Bui Nguyen Nguyen'
);

/* INSERT QUERY NO: 6 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar30008', 9742103827, 'bmaiphunghuamai@hcmut.edu.vn', 'B', 'Mai Phung Hua Mai'
);

/* INSERT QUERY NO: 7 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar30010', 5438097318, 'dtranphung@hcmut.edu.vn', 'D', 'Tran Phung'
);

/* INSERT QUERY NO: 8 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar40000', 4413155757, 'atranbui@hcmut.edu.vn', 'A', 'Tran Bui'
);

/* INSERT QUERY NO: 9 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar40002', 5139592557, 'aphunghuabuiphung@hcmut.edu.vn', 'A', 'Phung Hua Bui Phung'
);

/* INSERT QUERY NO: 10 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar40007', 7834708442, 'chuavuvutran@hcmut.edu.vn', 'C', 'Hua Vu Vu Tran'
);

/* INSERT QUERY NO: 11 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar40014', 2261010423, 'enguyenlephung@hcmut.edu.vn', 'E', 'Nguyen Le Phung'
);

/* INSERT QUERY NO: 12 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar40019', 8394129832, 'dvuvu@hcmut.edu.vn', 'D', 'Vu Vu'
);

/* INSERT QUERY NO: 13 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar50004', 9681647062, 'enguyenvumaile@hcmut.edu.vn', 'E', 'Nguyen Vu Mai Le'
);

/* INSERT QUERY NO: 14 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar50012', 9193430687, 'enguyennguyen@hcmut.edu.vn', 'E', 'Nguyen Nguyen'
);

/* INSERT QUERY NO: 15 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar60009', 329183521, 'ephunglevu@hcmut.edu.vn', 'E', 'Phung Le Vu'
);

/* INSERT QUERY NO: 16 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar60015', 5623954261, 'cnguyenle@hcmut.edu.vn', 'C', 'Nguyen Le'
);

/* INSERT QUERY NO: 17 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar70016', 3520698831, 'cvulemaivu@hcmut.edu.vn', 'C', 'Vu Le Mai Vu'
);

/* INSERT QUERY NO: 18 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar70018', 7948978968, 'dhualetran@hcmut.edu.vn', 'D', 'Hua Le Tran'
);

/* INSERT QUERY NO: 19 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar90001', 692590314, 'dtrantran@hcmut.edu.vn', 'D', 'Tran Tran'
);

/* INSERT QUERY NO: 20 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'depar90011', 5181753721, 'aphungbuile@hcmut.edu.vn', 'A', 'Phung Bui Le'
);

/* INSERT QUERY NO: 21 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic00005', 8169646681, 'anguyenletran@hcmut.edu.vn', 'A', 'Nguyen Le Tran'
);

/* INSERT QUERY NO: 22 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic10002', 785264597, 'dlehua@hcmut.edu.vn', 'D', 'Le Hua'
);

/* INSERT QUERY NO: 23 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic10004', 147480869, 'ahuavutranle@hcmut.edu.vn', 'A', 'Hua Vu Tran Le'
);

/* INSERT QUERY NO: 24 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic20000', 1351731936, 'alephung@hcmut.edu.vn', 'A', 'Le Phung'
);

/* INSERT QUERY NO: 25 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic30019', 4691146550, 'evubuile@hcmut.edu.vn', 'E', 'Vu Bui Le'
);

/* INSERT QUERY NO: 26 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic40012', 2446925605, 'bnguyenbuilebui@hcmut.edu.vn', 'B', 'Nguyen Bui Le Bui'
);

/* INSERT QUERY NO: 27 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic50014', 9809765360, 'dtranvu@hcmut.edu.vn', 'D', 'Tran Vu'
);

/* INSERT QUERY NO: 28 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic50018', 3331177746, 'btranphung@hcmut.edu.vn', 'B', 'Tran Phung'
);

/* INSERT QUERY NO: 29 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic60007', 1765828657, 'avubui@hcmut.edu.vn', 'A', 'Vu Bui'
);

/* INSERT QUERY NO: 30 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic60011', 4524153890, 'emainguyen@hcmut.edu.vn', 'E', 'Mai Nguyen'
);

/* INSERT QUERY NO: 31 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic60013', 4746383165, 'dtranlelephung@hcmut.edu.vn', 'D', 'Tran Le Le Phung'
);

/* INSERT QUERY NO: 32 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic70006', 5399793441, 'etranhuahua@hcmut.edu.vn', 'E', 'Tran Hua Hua'
);

/* INSERT QUERY NO: 33 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic70009', 1460428220, 'ephungvuphung@hcmut.edu.vn', 'E', 'Phung Vu Phung'
);

/* INSERT QUERY NO: 34 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic80001', 5428927881, 'ctranmaitranhua@hcmut.edu.vn', 'C', 'Tran Mai Tran Hua'
);

/* INSERT QUERY NO: 35 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic80003', 6945101122, 'dtrannguyen@hcmut.edu.vn', 'D', 'Tran Nguyen'
);

/* INSERT QUERY NO: 36 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic80015', 3929728018, 'bmaivuphung@hcmut.edu.vn', 'B', 'Mai Vu Phung'
);

/* INSERT QUERY NO: 37 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic80016', 995056844, 'dlephunghuamai@hcmut.edu.vn', 'D', 'Le Phung Hua Mai'
);

/* INSERT QUERY NO: 38 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic80017', 4638983672, 'ephungnguyenbuitran@hcmut.edu.vn', 'E', 'Phung Nguyen Bui Tran'
);

/* INSERT QUERY NO: 39 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic90008', 6966271428, 'bvuvulemai@hcmut.edu.vn', 'B', 'Vu Vu Le Mai'
);

/* INSERT QUERY NO: 40 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'offic90010', 5068249426, 'evunguyenmaivu@hcmut.edu.vn', 'E', 'Vu Nguyen Mai Vu'
);

/* INSERT QUERY NO: 41 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach00003', 5999780506, 'dtrannguyenmai@hcmut.edu.vn', 'D', 'Tran Nguyen Mai'
);

/* INSERT QUERY NO: 42 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach10005', 8004647192, 'bnguyenmainguyen@hcmut.edu.vn', 'B', 'Nguyen Mai Nguyen'
);

/* INSERT QUERY NO: 43 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach10018', 9894195059, 'abuitran@hcmut.edu.vn', 'A', 'Bui Tran'
);

/* INSERT QUERY NO: 44 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach30009', 5424885120, 'bhualehua@hcmut.edu.vn', 'B', 'Hua Le Hua'
);

/* INSERT QUERY NO: 45 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach30013', 8564302715, 'cphungtranbuibui@hcmut.edu.vn', 'C', 'Phung Tran Bui Bui'
);

/* INSERT QUERY NO: 46 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach40004', 5858885473, 'ctrannguyen@hcmut.edu.vn', 'C', 'Tran Nguyen'
);

/* INSERT QUERY NO: 47 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach40008', 6886468814, 'dhuanguyenmaile@hcmut.edu.vn', 'D', 'Hua Nguyen Mai Le'
);

/* INSERT QUERY NO: 48 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach40016', 9517650574, 'dnguyenvulehua@hcmut.edu.vn', 'D', 'Nguyen Vu Le Hua'
);

/* INSERT QUERY NO: 49 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach50000', 692047554, 'ebuinguyenhuaphung@hcmut.edu.vn', 'E', 'Bui Nguyen Hua Phung'
);

/* INSERT QUERY NO: 50 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach50010', 7803342469, 'bnguyenphung@hcmut.edu.vn', 'B', 'Nguyen Phung'
);

/* INSERT QUERY NO: 51 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach60006', 8904796013, 'dmaile@hcmut.edu.vn', 'D', 'Mai Le'
);

/* INSERT QUERY NO: 52 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach60017', 1960657721, 'ephungvubuivu@hcmut.edu.vn', 'E', 'Phung Vu Bui Vu'
);

/* INSERT QUERY NO: 53 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach70001', 6668579783, 'bnguyenhuanguyen@hcmut.edu.vn', 'B', 'Nguyen Hua Nguyen'
);

/* INSERT QUERY NO: 54 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach70002', 5362419573, 'anguyenbuinguyen@hcmut.edu.vn', 'A', 'Nguyen Bui Nguyen'
);

/* INSERT QUERY NO: 55 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach70007', 8890360283, 'dvubuitran@hcmut.edu.vn', 'D', 'Vu Bui Tran'
);

/* INSERT QUERY NO: 56 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach80011', 4152485920, 'atranbuitranhua@hcmut.edu.vn', 'A', 'Tran Bui Tran Hua'
);

/* INSERT QUERY NO: 57 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach80014', 9610204574, 'ehuabuinguyen@hcmut.edu.vn', 'E', 'Hua Bui Nguyen'
);

/* INSERT QUERY NO: 58 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach90012', 9879745754, 'cmaivuvu@hcmut.edu.vn', 'C', 'Mai Vu Vu'
);

/* INSERT QUERY NO: 59 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach90015', 8754989327, 'ehuatranbui@hcmut.edu.vn', 'E', 'Hua Tran Bui'
);

/* INSERT QUERY NO: 60 */
INSERT INTO Employee
    (ssn, phone, email, firstName, lastName)
VALUES
    (
        'teach90019', 5046541146, 'anguyenphung@hcmut.edu.vn', 'A', 'Nguyen Phung'
);

--                                               EmployeeAccount 
-----------------------------------------------------------------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO EmployeeAccount
    (ssn, password)
VALUES
    (
        'depar00003', '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke'
);

/* INSERT QUERY NO: 2 */
INSERT INTO EmployeeAccount
    (ssn, password)
VALUES
    (
        'depar00006', '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke'
);

--                                               DepartmentEmployee 
-----------------------------------------------------------------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar00003', 1
);

/* INSERT QUERY NO: 2 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar00006', 1
);

/* INSERT QUERY NO: 3 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar00017', 2
);

/* INSERT QUERY NO: 4 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar10005', 2
);

/* INSERT QUERY NO: 5 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar20013', 3
);

/* INSERT QUERY NO: 6 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar30008', 3
);

/* INSERT QUERY NO: 7 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar30010', 4
);

/* INSERT QUERY NO: 8 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar40000', 4
);

/* INSERT QUERY NO: 9 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar40002', 5
);

/* INSERT QUERY NO: 10 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar40007', 5
);

/* INSERT QUERY NO: 11 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar40014', 6
);

/* INSERT QUERY NO: 12 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar40019', 6
);

/* INSERT QUERY NO: 13 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar50004', 7
);

/* INSERT QUERY NO: 14 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar50012', 7
);

/* INSERT QUERY NO: 15 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar60009', 8
);

/* INSERT QUERY NO: 16 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar60015', 8
);

/* INSERT QUERY NO: 17 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar70016', 9
);

/* INSERT QUERY NO: 18 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar70018', 10
);

/* INSERT QUERY NO: 19 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar90001', 10
);

/* INSERT QUERY NO: 20 */
INSERT INTO DepartmentEmployee
    (ssn, dId)
VALUES
    (
        'depar90011', 11
);

-- --                                               Semester 
-- -----------------------------------------------------------------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq171', '2017-09-24', '2018-01-24'
);

/* INSERT QUERY NO: 2 */
INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq172', '2018-02-20', '2018-06-20'
);

/* INSERT QUERY NO: 3 */
INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq173', '2018-06-26', '2018-08-26'
);

/* INSERT QUERY NO: 4 */
INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq181', '2018-09-25', '2019-01-25'
);

/* INSERT QUERY NO: 5 */
INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq182', '2019-02-26', '2019-06-26'
);

/* INSERT QUERY NO: 6 */
INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq183', '2019-06-30', '2019-08-30'
);

/* INSERT QUERY NO: 7 */
INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq191', '2019-09-21', '2020-01-21'
);

/* INSERT QUERY NO: 8 */
INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq192', '2020-02-22', '2020-06-22'
);

/* INSERT QUERY NO: 9 */
INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq193', '2020-06-28', '2020-08-28'
);

/* INSERT QUERY NO: 10 */
INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq201', '2020-09-21', '2021-01-21'
);

/* INSERT QUERY NO: 11 */
INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq202', '2021-02-22', '2021-06-22'
);

/* INSERT QUERY NO: 12 */
INSERT INTO Semester(id, startDate, endDate)
VALUES
(
'cq203', '2021-06-28', '2021-08-28'
);


--                                               Student 
-----------------------------------------------------------------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600002, 'D', 'Phung Tran', 6
);

/* INSERT QUERY NO: 2 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600012, 'E', 'Vu Le Bui', 11
);

/* INSERT QUERY NO: 3 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600026, 'D', 'Mai Vu Phung', 3
);

/* INSERT QUERY NO: 4 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600045, 'A', 'Bui Nguyen', 1
);

/* INSERT QUERY NO: 5 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600047, 'A', 'Hua Bui Phung', 8
);

/* INSERT QUERY NO: 6 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600050, 'C', 'Mai Hua', 5
);

/* INSERT QUERY NO: 7 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600057, 'A', 'Hua Mai Vu Vu', 9
);

/* INSERT QUERY NO: 8 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600063, 'A', 'Phung Tran Nguyen', 7
);

/* INSERT QUERY NO: 9 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600070, 'C', 'Le Hua Vu', 9
);

/* INSERT QUERY NO: 10 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600079, 'C', 'Hua Vu Tran', 1
);

/* INSERT QUERY NO: 11 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1600098, 'C', 'Bui Hua Vu Nguyen', 2
);

/* INSERT QUERY NO: 12 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610008, 'C', 'Nguyen Mai Vu Le', 1
);

/* INSERT QUERY NO: 13 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610025, 'D', 'Bui Bui Hua', 8
);

/* INSERT QUERY NO: 14 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610028, 'A', 'Hua Phung Bui', 10
);

/* INSERT QUERY NO: 15 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610035, 'B', 'Phung Hua', 1
);

/* INSERT QUERY NO: 16 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610053, 'C', 'Le Bui Bui Mai', 8
);

/* INSERT QUERY NO: 17 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610082, 'E', 'Phung Vu Vu Hua', 9
);

/* INSERT QUERY NO: 18 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610086, 'A', 'Mai Nguyen Phung', 10
);

/* INSERT QUERY NO: 19 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610091, 'E', 'Nguyen Tran Phung', 5
);

/* INSERT QUERY NO: 20 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610093, 'D', 'Tran Mai Le Phung', 3
);

/* INSERT QUERY NO: 21 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1610095, 'E', 'Tran Le', 4
);

/* INSERT QUERY NO: 22 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620007, 'B', 'Hua Nguyen Hua', 1
);

/* INSERT QUERY NO: 23 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620032, 'D', 'Tran Le Tran Hua', 9
);

/* INSERT QUERY NO: 24 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620041, 'D', 'Nguyen Bui Vu Bui', 8
);

/* INSERT QUERY NO: 25 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620044, 'A', 'Hua Bui Mai', 3
);

/* INSERT QUERY NO: 26 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620051, 'D', 'Vu Bui', 5
);

/* INSERT QUERY NO: 27 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620052, 'C', 'Hua Mai Phung', 4
);

/* INSERT QUERY NO: 28 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620054, 'B', 'Hua Phung Mai', 7
);

/* INSERT QUERY NO: 29 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620072, 'D', 'Phung Nguyen', 8
);

/* INSERT QUERY NO: 30 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1620085, 'A', 'Hua Nguyen', 8
);

/* INSERT QUERY NO: 31 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630001, 'C', 'Tran Vu Le Vu', 11
);

/* INSERT QUERY NO: 32 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630003, 'C', 'Le Vu', 3
);

/* INSERT QUERY NO: 33 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630016, 'C', 'Phung Phung', 9
);

/* INSERT QUERY NO: 34 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630023, 'B', 'Nguyen Bui', 7
);

/* INSERT QUERY NO: 35 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630034, 'A', 'Mai Phung Phung Nguyen', 8
);

/* INSERT QUERY NO: 36 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630038, 'E', 'Vu Phung Hua', 6
);

/* INSERT QUERY NO: 37 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630040, 'C', 'Hua Tran Le', 8
);

/* INSERT QUERY NO: 38 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630055, 'E', 'Le Le Vu', 2
);

/* INSERT QUERY NO: 39 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630062, 'D', 'Vu Mai', 6
);

/* INSERT QUERY NO: 40 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630066, 'A', 'Hua Hua Hua Vu', 10
);

/* INSERT QUERY NO: 41 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630076, 'B', 'Mai Phung', 3
);

/* INSERT QUERY NO: 42 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1630080, 'E', 'Hua Nguyen Vu Vu', 11
);

/* INSERT QUERY NO: 43 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640004, 'B', 'Phung Vu', 7
);

/* INSERT QUERY NO: 44 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640010, 'D', 'Bui Le Phung Nguyen', 4
);

/* INSERT QUERY NO: 45 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640011, 'C', 'Le Nguyen', 4
);

/* INSERT QUERY NO: 46 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640014, 'A', 'Mai Bui Tran', 10
);

/* INSERT QUERY NO: 47 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640031, 'D', 'Mai Hua', 8
);

/* INSERT QUERY NO: 48 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640036, 'E', 'Phung Bui', 2
);

/* INSERT QUERY NO: 49 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640059, 'D', 'Hua Vu Bui Mai', 11
);

/* INSERT QUERY NO: 50 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640064, 'C', 'Hua Nguyen', 10
);

/* INSERT QUERY NO: 51 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640067, 'C', 'Tran Nguyen', 3
);

/* INSERT QUERY NO: 52 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640077, 'D', 'Phung Mai', 1
);

/* INSERT QUERY NO: 53 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640090, 'A', 'Mai Nguyen Phung Le', 11
);

/* INSERT QUERY NO: 54 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1640094, 'B', 'Mai Vu', 11
);

/* INSERT QUERY NO: 55 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650015, 'E', 'Mai Bui Vu', 1
);

/* INSERT QUERY NO: 56 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650018, 'C', 'Bui Nguyen Hua', 3
);

/* INSERT QUERY NO: 57 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650027, 'D', 'Bui Phung Vu Bui', 10
);

/* INSERT QUERY NO: 58 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650046, 'B', 'Phung Le Tran', 8
);

/* INSERT QUERY NO: 59 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650049, 'A', 'Tran Tran Mai', 7
);

/* INSERT QUERY NO: 60 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650056, 'B', 'Nguyen Le Tran', 5
);

/* INSERT QUERY NO: 61 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650068, 'D', 'Nguyen Tran', 8
);

/* INSERT QUERY NO: 62 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650069, 'D', 'Le Phung Hua Bui', 8
);

/* INSERT QUERY NO: 63 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650074, 'C', 'Hua Tran Vu Le', 8
);

/* INSERT QUERY NO: 64 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650078, 'A', 'Mai Phung Phung Nguyen', 1
);

/* INSERT QUERY NO: 65 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1650089, 'A', 'Bui Bui Nguyen', 6
);

/* INSERT QUERY NO: 66 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660005, 'C', 'Mai Bui Nguyen', 8
);

/* INSERT QUERY NO: 67 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660013, 'D', 'Mai Tran', 1
);

/* INSERT QUERY NO: 68 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660019, 'C', 'Bui Mai Vu Vu', 4
);

/* INSERT QUERY NO: 69 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660033, 'C', 'Le Mai Vu', 7
);

/* INSERT QUERY NO: 70 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660043, 'B', 'Phung Le Tran Mai', 7
);

/* INSERT QUERY NO: 71 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660061, 'B', 'Tran Vu Bui', 4
);

/* INSERT QUERY NO: 72 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660075, 'D', 'Hua Hua', 3
);

/* INSERT QUERY NO: 73 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1660084, 'A', 'Bui Vu Bui Vu', 4
);

/* INSERT QUERY NO: 74 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670021, 'B', 'Hua Nguyen Phung Mai', 9
);

/* INSERT QUERY NO: 75 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670022, 'C', 'Vu Phung', 6
);

/* INSERT QUERY NO: 76 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670037, 'D', 'Bui Nguyen', 5
);

/* INSERT QUERY NO: 77 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670048, 'A', 'Nguyen Le Mai Bui', 3
);

/* INSERT QUERY NO: 78 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670087, 'D', 'Nguyen Bui Vu', 4
);

/* INSERT QUERY NO: 79 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670088, 'D', 'Phung Mai', 7
);

/* INSERT QUERY NO: 80 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670096, 'B', 'Bui Tran Hua Le', 5
);

/* INSERT QUERY NO: 81 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1670097, 'B', 'Nguyen Tran Phung', 7
);

/* INSERT QUERY NO: 82 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680000, 'E', 'Tran Nguyen Phung Mai', 1
);

/* INSERT QUERY NO: 83 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680020, 'D', 'Vu Vu', 8
);

/* INSERT QUERY NO: 84 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680024, 'D', 'Nguyen Phung', 6
);

/* INSERT QUERY NO: 85 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680029, 'C', 'Vu Phung Vu', 1
);

/* INSERT QUERY NO: 86 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680042, 'C', 'Le Nguyen', 4
);

/* INSERT QUERY NO: 87 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680065, 'B', 'Vu Nguyen Le Phung', 6
);

/* INSERT QUERY NO: 88 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680073, 'D', 'Le Phung Phung', 1
);

/* INSERT QUERY NO: 89 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680081, 'D', 'Phung Mai Le Nguyen', 11
);

/* INSERT QUERY NO: 90 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680083, 'A', 'Nguyen Hua Bui Le', 8
);

/* INSERT QUERY NO: 91 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1680092, 'A', 'Bui Nguyen Nguyen Nguyen', 9
);

/* INSERT QUERY NO: 92 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690006, 'E', 'Bui Hua Nguyen Tran', 8
);

/* INSERT QUERY NO: 93 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690009, 'E', 'Phung Vu Phung', 4
);

/* INSERT QUERY NO: 94 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690017, 'A', 'Le Le Le Hua', 5
);

/* INSERT QUERY NO: 95 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690030, 'C', 'Le Tran', 5
);

/* INSERT QUERY NO: 96 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690039, 'E', 'Vu Hua Vu', 5
);

/* INSERT QUERY NO: 97 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690058, 'D', 'Bui Phung Mai', 10
);

/* INSERT QUERY NO: 98 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690060, 'B', 'Le Bui', 3
);

/* INSERT QUERY NO: 99 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690071, 'B', 'Phung Vu Vu Vu', 9
);

/* INSERT QUERY NO: 100 */
INSERT INTO Student
    (ssn, firstName, lastName, dId)
VALUES
    (
        1690099, 'C', 'Phung Tran Vu', 4
);

--                                               StudentAccount 
-----------------------------------------------------------------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO StudentAccount
    (ssn, password)
VALUES
    (
        1600002, '$2b$05$iyllBYFvHiA8skgzZrD16O2AQBUjjrODVg1e5PMQayvnArLc5l4ke'
);

/* INSERT QUERY NO: 2 */
INSERT INTO StudentAccount
    (ssn, password)
VALUES
    (
        1600012, '$2b$05$fPaf0jZjkbquExZMiZb3GuTds.FJeVjiEnCxuiGBDdVCmzKRs9fbG'
);


--                                               StudyOffice 
-----------------------------------------------------------------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO StudyOffice
    (id)
VALUES
    (
        12
);

/* INSERT QUERY NO: 2 */
INSERT INTO StudyOffice
    (id)
VALUES
    (
        13
);


--                                               StudyOfficeEmployee 
-----------------------------------------------------------------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic00005', 12
);

/* INSERT QUERY NO: 2 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic10002', 12
);

/* INSERT QUERY NO: 3 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic10004', 13
);

/* INSERT QUERY NO: 4 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic20000', 13
);

/* INSERT QUERY NO: 5 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic30019', 12
);

/* INSERT QUERY NO: 6 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic40012', 13
);

/* INSERT QUERY NO: 7 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic50014', 13
);

/* INSERT QUERY NO: 8 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic50018', 12
);

/* INSERT QUERY NO: 9 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic60007', 12
);

/* INSERT QUERY NO: 10 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic60011', 13
);

/* INSERT QUERY NO: 11 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic60013', 12
);

/* INSERT QUERY NO: 12 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic70006', 12
);

/* INSERT QUERY NO: 13 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic70009', 13
);

/* INSERT QUERY NO: 14 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic80001', 13
);

/* INSERT QUERY NO: 15 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic80003', 12
);

/* INSERT QUERY NO: 16 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic80015', 13
);

/* INSERT QUERY NO: 17 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic80016', 12
);

/* INSERT QUERY NO: 18 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic80017', 13
);

/* INSERT QUERY NO: 19 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic90008', 12
);

/* INSERT QUERY NO: 20 */
INSERT INTO StudyOfficeEmployee
    (ssn, soId)
VALUES
    (
        'offic90010', 13
);


--                                               Teacher 
-----------------------------------------------------------------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach00003', '', 1
);

/* INSERT QUERY NO: 2 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach10005', '', 1
);

/* INSERT QUERY NO: 3 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach10018', '', 2
);

/* INSERT QUERY NO: 4 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach30009', '', 2
);

/* INSERT QUERY NO: 5 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach30013', '', 3
);

/* INSERT QUERY NO: 6 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach40004', '', 3
);

/* INSERT QUERY NO: 7 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach40008', '', 4
);

/* INSERT QUERY NO: 8 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach40016', '', 4
);

/* INSERT QUERY NO: 9 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach50000', '', 5
);

/* INSERT QUERY NO: 10 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach50010', '', 5
);

/* INSERT QUERY NO: 11 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach60006', '', 6
);

/* INSERT QUERY NO: 12 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach60017', '', 6
);

/* INSERT QUERY NO: 13 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach70001', '', 7
);

/* INSERT QUERY NO: 14 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach70002', '', 7
);

/* INSERT QUERY NO: 15 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach70007', '', 8
);

/* INSERT QUERY NO: 16 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach80011', '', 9
);

/* INSERT QUERY NO: 17 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach80014', '', 10
);

/* INSERT QUERY NO: 18 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach90012', '', 10
);

/* INSERT QUERY NO: 19 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach90015', '', 11
);

/* INSERT QUERY NO: 20 */
INSERT INTO Teacher
    (ssn, studyDegree, dId)
VALUES
    (
        'teach90019', '', 11
);

--                                               Publisher 
-----------------------------------------------------------------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        0, 'pub0', 'UK'
);

/* INSERT QUERY NO: 2 */
INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        1, 'pub1', 'America'
);

/* INSERT QUERY NO: 3 */
INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        2, 'pub2', 'UK'
);

/* INSERT QUERY NO: 4 */
INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        3, 'pub3', 'UK'
);

/* INSERT QUERY NO: 5 */
INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        4, 'pub4', 'America'
);

/* INSERT QUERY NO: 6 */
INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        5, 'pub5', 'America'
);

/* INSERT QUERY NO: 7 */
INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        6, 'pub6', 'Vietnam'
);

/* INSERT QUERY NO: 8 */
INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        7, 'pub7', 'America'
);

/* INSERT QUERY NO: 9 */
INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        8, 'pub8', 'UK'
);

/* INSERT QUERY NO: 10 */
INSERT INTO Publisher
    (id, name, nation)
VALUES
    (
        9, 'pub9', 'Vietnam'
);


-- --                                               ReferenceBook 
-- -----------------------------------------------------------------------------------------------------------------------------
-- /* INSERT QUERY NO: 1 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 0, 'Physics', '2013-07-16', 3
-- );

-- /* INSERT QUERY NO: 2 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 1, 'Social', '2019-12-25', 7
-- );

-- /* INSERT QUERY NO: 3 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 10, 'Electricity Electricity', '2015-09-06', 0
-- );

-- /* INSERT QUERY NO: 4 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 11, 'Language', '2014-05-17', 7
-- );

-- /* INSERT QUERY NO: 5 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 12, 'Mechanic', '2019-05-21', 3
-- );

-- /* INSERT QUERY NO: 6 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 13, 'Physics', '2015-05-22', 6
-- );

-- /* INSERT QUERY NO: 7 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 14, 'Mechanic', '2015-10-09', 7
-- );

-- /* INSERT QUERY NO: 8 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 15, 'Mechanic', '2013-12-02', 6
-- );

-- /* INSERT QUERY NO: 9 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 16, 'Electricity', '2013-10-09', 5
-- );

-- /* INSERT QUERY NO: 10 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 17, 'Computer Social', '2015-06-07', 7
-- );

-- /* INSERT QUERY NO: 11 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 18, 'Chemistry Chemistry', '2020-09-15', 5
-- );

-- /* INSERT QUERY NO: 12 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 19, 'Physics Language', '2012-01-23', 3
-- );

-- /* INSERT QUERY NO: 13 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 2, 'Music Chemistry', '2019-10-30', 0
-- );

-- /* INSERT QUERY NO: 14 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 20, 'Language', '2014-03-14', 9
-- );

-- /* INSERT QUERY NO: 15 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 21, 'Mechanic Language', '2020-03-14', 2
-- );

-- /* INSERT QUERY NO: 16 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 22, 'Physics', '2019-02-19', 4
-- );

-- /* INSERT QUERY NO: 17 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 23, 'Language', '2015-07-26', 0
-- );

-- /* INSERT QUERY NO: 18 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 24, 'Computer', '2019-07-24', 5
-- );

-- /* INSERT QUERY NO: 19 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 25, 'Language', '2013-10-18', 4
-- );

-- /* INSERT QUERY NO: 20 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 26, 'Language Music', '2018-06-30', 3
-- );

-- /* INSERT QUERY NO: 21 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 27, 'Social', '2014-06-26', 6
-- );

-- /* INSERT QUERY NO: 22 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 28, 'Chemistry Language', '2019-06-19', 8
-- );

-- /* INSERT QUERY NO: 23 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 29, 'Mechanic', '2018-08-17', 4
-- );

-- /* INSERT QUERY NO: 24 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 3, 'Mechanic Electricity', '2018-03-17', 4
-- );

-- /* INSERT QUERY NO: 25 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 4, 'Music', '2018-05-29', 6
-- );

-- /* INSERT QUERY NO: 26 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 5, 'Music', '2017-04-13', 0
-- );

-- /* INSERT QUERY NO: 27 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 6, 'Mechanic', '2017-05-02', 9
-- );

-- /* INSERT QUERY NO: 28 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 7, 'Chemistry', '2012-12-06', 4
-- );

-- /* INSERT QUERY NO: 29 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 8, 'Physics', '2019-10-09', 5
-- );

-- /* INSERT QUERY NO: 30 */
-- INSERT INTO ReferenceBook(id, name, releasedDate, Publisher_id)
-- VALUES
-- (
-- 9, 'Electricity', '2014-02-03', 5
-- );

-------------------------------------------- Week --------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq171', '9/1/16'
);

/* INSERT QUERY NO: 2 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq171', '9/8/16'
);

/* INSERT QUERY NO: 3 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
3, 'cq171', '9/15/17'
);

/* INSERT QUERY NO: 4 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq172', '2/1/18'
);

/* INSERT QUERY NO: 5 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq172', '2/8/18'
);

/* INSERT QUERY NO: 6 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
3, 'cq172', '2/15/18'
);

/* INSERT QUERY NO: 7 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq173', '6/1/18'
);

/* INSERT QUERY NO: 8 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq173', '6/8/18'
);

/* INSERT QUERY NO: 9 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
3, 'cq173', '6/15/18'
);

/* INSERT QUERY NO: 10 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq181', '9/1/18'
);

/* INSERT QUERY NO: 11 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq181', '9/8/18'
);

/* INSERT QUERY NO: 12 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
3, 'cq181', '9/15/18'
);

/* INSERT QUERY NO: 13 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq182', '2/1/19'
);

/* INSERT QUERY NO: 14 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq182', '2/8/19'
);

/* INSERT QUERY NO: 15 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq183', '6/1/19'
);

/* INSERT QUERY NO: 16 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq183', '6/8/19'
);

/* INSERT QUERY NO: 17 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq191', '9/1/19'
);

/* INSERT QUERY NO: 18 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq191', '9/8/19'
);

/* INSERT QUERY NO: 19 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq192', '2/1/20'
);

/* INSERT QUERY NO: 20 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq192', '2/8/20'
);

/* INSERT QUERY NO: 21 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq193', '6/1/20'
);

/* INSERT QUERY NO: 22 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq201', '9/1/20'
);

/* INSERT QUERY NO: 23 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq201', '9/8/20'
);

/* INSERT QUERY NO: 24 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
3, 'cq201', '9/15/21'
);

/* INSERT QUERY NO: 25 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq202', '2/1/21'
);

/* INSERT QUERY NO: 26 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
2, 'cq202', '2/8/21'
);

/* INSERT QUERY NO: 27 */
INSERT INTO Week(id, Semester_id, startDate)
VALUES
(
1, 'cq203', '6/1/21'
);

-------------------------------------------- MainTeacher --------------------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO MainTeacher(ssn)
VALUES
(
'teach10005'
);

/* INSERT QUERY NO: 2 */
INSERT INTO MainTeacher(ssn)
VALUES
(
'teach10018'
);

/* INSERT QUERY NO: 3 */
INSERT INTO MainTeacher(ssn)
VALUES
(
'teach30009'
);

/* INSERT QUERY NO: 4 */
INSERT INTO MainTeacher(ssn)
VALUES
(
'teach30013'
);

/* INSERT QUERY NO: 5 */
INSERT INTO MainTeacher(ssn)
VALUES
(
'teach40004'
);

/* INSERT QUERY NO: 6 */
INSERT INTO MainTeacher(ssn)
VALUES
(
'teach40008'
);

/* INSERT QUERY NO: 7 */
INSERT INTO MainTeacher(ssn)
VALUES
(
'teach40016'
);

/* INSERT QUERY NO: 8 */
INSERT INTO MainTeacher(ssn)
VALUES
(
'teach50000'
);

/* INSERT QUERY NO: 9 */
INSERT INTO MainTeacher(ssn)
VALUES
(
'teach70001'
);

/* INSERT QUERY NO: 10 */
INSERT INTO MainTeacher(ssn)
VALUES
(
'teach70002'
);

----------------------------------------- Uses --------------------------------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq171', 'AS1003', 'L01', 'teach40016', 0
);

/* INSERT QUERY NO: 2 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq171', 'CI2003', 'L01', 'teach50000', 1
);

/* INSERT QUERY NO: 3 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq171', 'EE1011', 'L01', 'teach50010', 2
);

/* INSERT QUERY NO: 4 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq171', 'CI2003', 'L01', 'teach70001', 3
);

/* INSERT QUERY NO: 5 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq171', 'CO2007', 'L01', 'teach70002', 4
);

/* INSERT QUERY NO: 6 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq172', 'CH2021', 'L01', 'teach70007', 5
);

/* INSERT QUERY NO: 7 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq172', 'AS2001', 'L01', 'teach80011', 6
);

/* INSERT QUERY NO: 8 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq172', 'CI1033', 'L01', 'teach80014', 7
);

/* INSERT QUERY NO: 9 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq172', 'IM3047', 'L01', 'teach90012', 8
);

/* INSERT QUERY NO: 10 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq173', 'EE1015', 'L01', 'teach90015', 0
);

/* INSERT QUERY NO: 11 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq173', 'AS1003', 'L01', 'teach90019', 1
);

/* INSERT QUERY NO: 12 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq181', 'CI2003', 'L01', 'teach40016', 2
);

/* INSERT QUERY NO: 13 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq181', 'EE1011', 'L01', 'teach50000', 9
);

/* INSERT QUERY NO: 14 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq181', 'CI2003', 'L01', 'teach50010', 10
);

/* INSERT QUERY NO: 15 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq181', 'CO2007', 'L01', 'teach40016', 12
);

/* INSERT QUERY NO: 16 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq182', 'CI2003', 'L01', 'teach50010', 13
);

/* INSERT QUERY NO: 17 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq182', 'IM3047', 'L01', 'teach60006', 14
);

/* INSERT QUERY NO: 18 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq182', 'EE1011', 'L01', 'teach60017', 15
);

/* INSERT QUERY NO: 19 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq183', 'CO2007', 'L01', 'teach00003', 16
);

/* INSERT QUERY NO: 20 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq183', 'CH2021', 'L01', 'teach10005', 17
);

/* INSERT QUERY NO: 21 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq191', 'AS2001', 'L01', 'teach10018', 18
);

/* INSERT QUERY NO: 22 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq191', 'CI1033', 'L01', 'teach30009', 19
);

/* INSERT QUERY NO: 23 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq192', 'IM3047', 'L01', 'teach30013', 0
);

/* INSERT QUERY NO: 24 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq193', 'EE1015', 'L01', 'teach40004', 1
);

/* INSERT QUERY NO: 25 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq201', 'AS1003', 'L01', 'teach70001', 1
);

/* INSERT QUERY NO: 26 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq201', 'CI2003', 'L01', 'teach90015', 3
);

/* INSERT QUERY NO: 27 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq202', 'EE1011', 'L01', 'teach90019', 5
);

/* INSERT QUERY NO: 28 */
INSERT INTO Uses(Semester_id, Subject_id, Class_id, MainTeacher_ssn, ReferenceBook_id)
VALUES
(
'cq203', 'CI2003', 'L01', 'teach00003', 8
);

--------------------------------------- Responsible --------------------------------
/* INSERT QUERY NO: 1 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq171', 'AS1003', 'L01', 1, 'cq171', 'teach00003'
);

/* INSERT QUERY NO: 2 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq171', 'CH1007', 'L01', 2, 'cq171', 'teach10005'
);

/* INSERT QUERY NO: 3 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq172', 'CH2021', 'L01', 1, 'cq172', 'teach10018'
);

/* INSERT QUERY NO: 4 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq172', 'CI1007', 'L01', 2, 'cq172', 'teach30009'
);

/* INSERT QUERY NO: 5 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq173', 'CI1033', 'L01', 1, 'cq173', 'teach30013'
);

/* INSERT QUERY NO: 6 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq181', 'CI2003', 'L01', 1, 'cq181', 'teach40004'
);

/* INSERT QUERY NO: 7 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq181', 'CO1009', 'L01', 2, 'cq181', 'teach40008'
);

/* INSERT QUERY NO: 8 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq182', 'CO2007', 'L01', 1, 'cq182', 'teach40016'
);

/* INSERT QUERY NO: 9 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq182', 'EE2007', 'L01', 2, 'cq182', 'teach50000'
);

/* INSERT QUERY NO: 10 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq183', 'GE2009', 'L01', 1, 'cq183', 'teach50010'
);

/* INSERT QUERY NO: 11 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq191', 'IM3047', 'L01', 1, 'cq191', 'teach60006'
);

/* INSERT QUERY NO: 12 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq191', 'IM3051', 'L01', 2, 'cq191', 'teach60017'
);

/* INSERT QUERY NO: 13 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq192', 'AS1003', 'L01', 1, 'cq192', 'teach70001'
);

/* INSERT QUERY NO: 14 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq192', 'CH1007', 'L01', 2, 'cq192', 'teach70002'
);

/* INSERT QUERY NO: 15 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq193', 'CH2021', 'L01', 1, 'cq193', 'teach70007'
);

/* INSERT QUERY NO: 16 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq201', 'CI1007', 'L01', 1, 'cq201', 'teach80011'
);

/* INSERT QUERY NO: 17 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq201', 'CI1033', 'L01', 2, 'cq201', 'teach80014'
);

/* INSERT QUERY NO: 18 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq202', 'CI2003', 'L01', 1, 'cq202', 'teach90012'
);

/* INSERT QUERY NO: 19 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq202', 'CO1009', 'L01', 2, 'cq202', 'teach50000'
);

/* INSERT QUERY NO: 20 */
INSERT INTO Responsible(Semester_id, Subject_id, Class_id, Week_id, Week_Semester_id, Teacher_ssn)
VALUES
(
'cq203', 'CO2007', 'L01', 1, 'cq203', 'teach50010'
);

---------------------------------------- MainResponsible ------------------------------------------

/* INSERT QUERY NO: 1 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq171', 'AS1003', 'teach10005'
);

/* INSERT QUERY NO: 2 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq171', 'CH1007', 'teach10018'
);

/* INSERT QUERY NO: 3 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq172', 'CH2021', 'teach30009'
);

/* INSERT QUERY NO: 4 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq172', 'CI1007', 'teach30013'
);

/* INSERT QUERY NO: 5 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq173', 'CI1033', 'teach40004'
);

/* INSERT QUERY NO: 6 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq181', 'CI2003', 'teach40008'
);

/* INSERT QUERY NO: 7 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq181', 'CO1009', 'teach40016'
);

/* INSERT QUERY NO: 8 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq182', 'CO2007', 'teach50000'
);

/* INSERT QUERY NO: 9 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq182', 'EE2007', 'teach70001'
);

/* INSERT QUERY NO: 10 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq183', 'GE2009', 'teach70002'
);

/* INSERT QUERY NO: 11 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq191', 'IM3047', 'teach70001'
);

/* INSERT QUERY NO: 12 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq191', 'IM3051', 'teach70002'
);

/* INSERT QUERY NO: 13 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq192', 'AS1003', 'teach10005'
);

/* INSERT QUERY NO: 14 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq192', 'CH1007', 'teach10018'
);

/* INSERT QUERY NO: 15 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq193', 'CH2021', 'teach30009'
);

/* INSERT QUERY NO: 16 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq201', 'CI1007', 'teach30013'
);

/* INSERT QUERY NO: 17 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq201', 'CI1033', 'teach40004'
);

/* INSERT QUERY NO: 18 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq202', 'CI2003', 'teach40008'
);

/* INSERT QUERY NO: 19 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq202', 'CO1009', 'teach40016'
);

/* INSERT QUERY NO: 20 */
INSERT INTO MainResponsible(Semester_id, Subject_id, MainTeacher_ssn)
VALUES
(
'cq203', 'CO2007', 'teach50000'
);

