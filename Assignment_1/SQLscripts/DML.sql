-- PDT
--(i.1). Cap nhat dang ki mon hoc cua cac lop.
--(i.2). Xem danh sach lop da duoc dang ky boi mot sinh vien o mot hoc ky.
CREATE PROCEDURE registeredClass(
	@studentId AS varchar(10),
	@semesterId AS varchar(10)
	)
AS
BEGIN
	SELECT Class_id Ma_lop_hoc, Subject_id Ma_mon_hoc
	FROM REGISTER 
	WHERE Student_id = @studentId
		AND Semester_id = @semesterId
END;

GO
--(i.3). Xem danh sach lop duoc phu trach boi mot giang vien o mot hoc ky.
CREATE PROCEDURE reponsibleClass(
	@teacherSsn AS varchar(10),
	@semesterId AS varchar(10)
)
AS
BEGIN
	SELECT DISTINCT Class_id Ma_lop_hoc,Subject_id Ma_mon_hoc
	FROM [Week]
	WHERE Teacher_ssn = @teacherSsn
		AND Semester_id = @semesterId;
END;

GO
--(i.4). Xem danh sach mon hoc duoc dang ky o moi hoc ky o moi khoa.
CREATE PROCEDURE listClass
AS
BEGIN
	SELECT DISTINCT Department_id Ma_khoa, Semester_id Ma_hoc_ky, Subject_id Ma_mon_hoc
	FROM Opens
	GROUP BY Department_id,Semester_id,Subject_id
END;

GO
--(i.5). Xem danh sach sinh vien dang ky o moi lop o moi hoc ky o moi khoa.
CREATE PROCEDURE listStudent
AS
BEGIN
	SELECT Department_id Ma_khoa, c.Semester_id Ma_hoc_ky, 
			s.Id,firstName Ten, lastName Ho
			
	FROM Student s, Register, Class c, Opens o
	WHERE s.Id = Student_id 
		AND Class_id = c.id
		AND c.Semester_id = o.Semester_id
		AND c.Subject_id = o.Subject_id
	GROUP BY Department_id, c.Semester_id,s.id,firstName,lastName
END;

GO
--(i.6). Xem danh sach giang vien phu trach o moi lop o moi hoc ky o moi khoa.
CREATE PROCEDURE listTeacher
AS
BEGIN
	SELECT Department_id Ma_Khoa, c.Semester_id Ma_hoc_ky, Class_id Ma_lop, 
		Teacher_ssn SSN, firstName Ten, lastName Ho
			
	FROM [Week],Employee,Class c,Opens o
	WHERE Teacher_ssn = ssn 
		AND Class_id = c.id
		AND c.Subject_id = o.Subject_id
	GROUP BY Department_id, c.Semester_id, Class_id, Teacher_ssn, firstName, lastName
END;

GO
--(i.7). Xem cac giao trinh duoc chi dinh cho moi mon hoc o moi hoc ky o moi khoa
CREATE PROCEDURE listReferenceBook
AS
BEGIN
	SELECT Department_id Ma_khoa, Semester_id Ma_hoc_ky, 
			o.Subject_id, [name] Ten_sach
	FROM Opens o,Uses u,ReferenceBook r
	WHERE o.Subject_id = u.Subject_id
		AND u.ReferenceBook_id = r.id
	GROUP BY Department_id , Semester_id , o.Subject_id, [name]
END;

GO
--(i.8). Xem tong so mon hoc duoc dang ky o moi hoc ky o moi khoa.
CREATE PROCEDURE numOfSubjects
AS
BEGIN
	SELECT Department_id Ma_khoa, Semester_id Ma_hoc_ky, 
			COUNT(Subject_id) So_mon_hoc
	FROM Opens o
	GROUP BY Department_id , Semester_id 
END;

GO
--(i.9). Xem tong so lop duoc mo o moi hoc ky o moi khoa.
CREATE PROCEDURE numOfClasses
AS
BEGIN
	SELECT Department_id Ma_khoa, o.Semester_id Ma_hoc_ky, 
			COUNT(c.id) So_lop_hoc
	FROM Opens o, Class c
	WHERE o.Subject_id = c.Subject_id
	GROUP BY Department_id , o.Semester_id 
END;

GO
--(i.10). Xem tong so sinh vien dang ky o moi lop cua mot mon hoc o mot hoc ky.
CREATE PROCEDURE numOfStudents_class_sem
AS
BEGIN
	SELECT c.Semester_id Ma_hoc_ky, c.id Ma_lop_hoc,
			COUNT(r.Student_id) Tong_sinh_vien
	FROM Register r,Class c
	WHERE r.Class_id = c.id
	GROUP BY c.Semester_id, c.id
END;

GO
--(i.11). Xem so sinh vien dang ky o moi mon hoc o mot hoc ky.
CREATE PROCEDURE numOfStudents_sub_sem
AS
BEGIN
	SELECT c.Semester_id Ma_hoc_ky, c.Subject_id Ma_mon_hoc,
			COUNT(r.Student_id) Tong_sinh_vien
	FROM Register r,Class c
	WHERE r.Class_id = c.id
	GROUP BY c.Semester_id, c.Subject_id
END;

GO
--(i.12). Xem tong so sinh vien dang ky o moi mon hoc o moi khoa.
CREATE PROCEDURE numOfStudents_sub_dep
AS
BEGIN
	SELECT o.Department_id Ma_khoa, c.Subject_id Ma_mon_hoc,
			COUNT(r.Student_id) Tong_sinh_vien
	FROM Register r,Class c, Opens o
	WHERE r.Class_id = c.id
		AND c.Subject_id = o.Subject_id
	GROUP BY o.Department_id, c.Subject_id
END;