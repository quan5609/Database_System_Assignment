-- 												(i) PDT
-- *****************************************************************************************************************

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
	FROM Responsible
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
			
	FROM Responsible,Employee,Class c,Opens o
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

-- 												(ii) Khoa
-- *****************************************************************************************************************

--ii.1
GO
CREATE PROCEDURE UpdateSubject(
	@semesterId AS varchar(10),
	@departmentId AS VARCHAR(10),
	@subjectId AS VARCHAR(10)
)
AS
BEGIN
	INSERT INTO dbo.Opens VALUES(@semesterId, @subjectId, @departmentId)
END;
--ii.2
GO

CREATE PROCEDURE UpdateTeacherOfClass(
	@teacherSsn AS varchar(10),
	@classId AS VARCHAR(10),
	@subjectId AS VARCHAR(10),
	@semesterId AS VARCHAR(10),
	@weekId AS VARCHAR(10)
)
AS
BEGIN
	INSERT INTO dbo.Responsible VALUES(@semesterId, @subjectId, @classId, @weekId, @semesterId, @teacherSsn)
END;
--ii.3
GO
CREATE PROCEDURE SubjectOnSemester(
	@semesterId AS varchar(10)
)
AS
BEGIN
	SELECT Id Ma_mon
	FROM dbo.Subject JOIN dbo.Opens ON Opens.Subject_id = Subject.id
	WHERE dbo.Opens.Semester_id = @semesterId
END;

GO
--ii.4
CREATE PROCEDURE TeacherOnSemester(
	@semesterId AS varchar(10)
)
AS
BEGIN
	SELECT DISTINCT Teacher_ssn Ma_giang_vien
	FROM dbo.Responsible
	WHERE Semester_id = @semesterId
END;

GO
--ii.5
CREATE PROCEDURE ClassOfTeacher(
	@teacherSsn AS VARCHAR(10),
	@semesterId AS varchar(10)
)
AS
BEGIN
	SELECT DISTINCT Class_id Ma_lop, Semester_id Ma_hoc_ky, Subject_id Ma_mon
	FROM dbo.Responsible
	WHERE Semester_id = @semesterId AND Teacher_ssn = @teacherSsn
END;

GO
--ii.6
CREATE PROCEDURE TeacherOfClass(
	@semesterId AS varchar(10)
)
AS
BEGIN
	SELECT DISTINCT Class_id Ma_lop, Semester_id Ma_hoc_ky, Subject_id Ma_mon, Teacher_ssn Ma_giang_vien
	FROM dbo.Responsible
	WHERE Semester_id = @semesterId
END;

GO
--ii.7
CREATE PROCEDURE BookOfSubject(
	@semesterId AS varchar(10)
)
AS
BEGIN
	SELECT DISTINCT Subject_id Ma_mon, ReferenceBook_id Ma_giao_trinh
	FROM dbo.Uses
	WHERE Subject_id = (SELECT Subject_id FROM dbo.Opens WHERE Semester_id = @semesterId)
END;

GO
--ii.8
CREATE PROCEDURE StudentOfClass(
	@semesterId AS varchar(10)
)
AS
BEGIN
	SELECT Class_id Ma_lop, Subject_id Ma_mon, Student_id Ma_sinh_vien
	FROM dbo.Register
	WHERE Semester_id = @semesterId
END;

GO
--ii.9
CREATE PROCEDURE NumStudentOfSemester(
	@semesterId AS varchar(10)
)
AS
BEGIN
	SELECT COUNT(DISTINCT Student_id) Tong_sinh_vien
	FROM dbo.Register
	WHERE Semester_id = @semesterId
END;

GO
--ii.10
CREATE PROCEDURE NumClassOfSemester(
	@semesterId AS varchar(10)
)
AS
BEGIN
	SELECT COUNT(*) Tong_lop
	FROM dbo.Class
	WHERE Semester_id = @semesterId
END;

--ii.11
GO
CREATE PROCEDURE SubjectHavingMaxTeacher(
	@semesterId AS varchar(10)
)
AS
BEGIN
	SELECT Subject_id 
	FROM (SELECT Subject_id, COUNT(DISTINCT Teacher_ssn) AS Num_Of_Tea
			FROM dbo.Responsible
			WHERE Semester_id = @semesterId
			GROUP BY Subject_id) a
	WHERE a.Num_Of_Tea = (SELECT MAX(Num_Of_Tea) 
							FROM (SELECT Subject_id, COUNT(DISTINCT Teacher_ssn) AS Num_Of_Tea
									FROM dbo.Responsible
									WHERE Semester_id = @semesterId
									GROUP BY Subject_id) b)
END;

GO
--ii.12
CREATE PROCEDURE AvgNumStudent(
	@subjectId AS VARCHAR(10)
)
AS
BEGIN
	SELECT AVG(a.So_sinh_vien) 
	FROM (SELECT 100 Semester_id, dbo.Semester.startDate Ngay_bat_dau, COUNT(DISTINCT Student_id) So_sinh_vien
			FROM dbo.Register JOIN dbo.Semester ON Semester_id = dbo.Semester.id
			WHERE Subject_id = @subjectId AND DATEDIFF(YEAR, startDate, GETDATE()) <= 3
			GROUP BY Semester_id, startDate) a
END;

-- 												(iii) Giang vien
-- *****************************************************************************************************************
-- (iii.1). Cap nhat giao trinh chinh cho mon hoc do minh phu trach.
GO
CREATE PROCEDURE UpdateReferenceBook(
	@teacherSsn AS varchar(10),
	@subjectId AS varchar(10),
	@bookId AS varchar(10),
	@semesterId AS varchar(10)
	)
AS
BEGIN
	IF (SELECT COUNT(*) FROM Uses WHERE Subject_id = @subjectId) < 3
		INSERT INTO Uses 
		(Subject_id,MainTeacher_ssn,ReferenceBook_id)
		VALUES (@subjectId, @teacherSsn, @bookId)
	ELSE 
		RAISERROR('This subject can not have more than 3 reference books',-1,-1);
END;

-- (iii.2). Xem danh sach lop hoc cua moi mon hoc do minh phu trach o mot hoc ky.
GO
CREATE PROCEDURE responsibleClasses 
	(@teacherSsn AS varchar(10),
	 @semesterId AS varchar(10)
	)
AS
BEGIN
	SELECT Subject_id Ma_mon_hoc,Class_id Ma_lop_hoc
	FROM Responsible
	WHERE Teacher_ssn = @teacherSsn AND Semester_id = @semesterId
	GROUP BY Subject_id,Class_id
END;

-- (iii.3). Xem danh sach sinh vien cua moi lop hoc do minh phu trach o mot hoc ky.
GO
CREATE PROCEDURE studentOfResopnsibleClass 
	(@teacherSsn AS varchar(10),
	 @semesterId AS varchar(10)
	)
AS
BEGIN
	SELECT rp.Class_id Ma_lop_hoc,Student_id Ma_sinh_vien, firstName Ten, lastName Ho
	FROM Responsible rp, Register rg, Student st
	WHERE rp.Class_id = rg.Class_id
		AND rg.Student_id = st.id
		AND Teacher_ssn = @teacherSsn
		AND rp.Semester_id = @semesterId
	GROUP BY rp.Class_id,Student_id, firstName, lastName
END;

-- (iii.4). Xem danh sach mon hoc va giao trinh chinh cho moi mon hoc do minh phu trach o mot hoc ky.
GO
CREATE PROCEDURE referenceBookOfResponsibleSubject 
	(@teacherSsn AS varchar(10),
	 @semesterId AS varchar(10)
	)
AS
BEGIN
	SELECT rp.Class_id Ma_lop_hoc,Student_id Ma_sinh_vien, firstName Ten, lastName Ho
	FROM Responsible rp, Register rg, Student st
	WHERE rp.Class_id = rg.Class_id
		AND rg.Student_id = st.id
		AND Teacher_ssn = @teacherSsn
		AND rp.Semester_id = @semesterId
	GROUP BY rp.Class_id,Student_id, firstName, lastName
END;

-- (iii.5). Xem tong so sinh vien cua moi lop hoc do minh phu trach o mot hoc ky.
GO
CREATE PROCEDURE numOfStudents_ofResponsiblesClass 
	(@teacherSsn AS varchar(10),
	 @semesterId AS varchar(10)
	)
AS
BEGIN
	SELECT rp.Class_id Ma_lop_hoc, COUNT(*) tong_so_sinh_vien
	FROM Responsible rp, Register rg
	WHERE rp.Class_id = rg.Class_id
		AND Teacher_ssn = @teacherSsn
		AND rp.Semester_id = @semesterId
	GROUP BY rp.Class_id
END;

-- (iii.6). Xem so lop hoc do minh phu trach o moi hoc ky trong 3 nam lien tiep gan day nhat.
GO
CREATE PROCEDURE numOfResponsibleClass_3RecentYear
	(@teacherSsn AS varchar(10))
AS
BEGIN
	SELECT s.id Ma_hoc_ky,COUNT(*) Tong_so_lop
	FROM Responsible r, Semester s
	WHERE	r.Semester_id = s.id 
		AND (DATEDIFF(YEAR,s.startDate,GETDATE())) <= 3
		AND Teacher_ssn = @teacherSsn
	GROUP BY s.id
END;

-- (iii.7). Xem 5 lop hoc co so sinh vien cao nhat ma giang vien tung phu trach.
GO
CREATE PROCEDURE top5Class_mostStudent
	(@teacherSsn AS varchar(10))
AS
BEGIN
	SELECT TOP(5) rp.Class_id Ma_lop_hoc--, COUNT(*) tong_so_sinh_vien
	FROM Responsible rp, Register rg
	WHERE rp.Class_id = rg.Class_id
		AND Teacher_ssn = @teacherSsn
	GROUP BY rp.Class_id
	ORDER BY COUNT(*) DESC
END;
-- (iii.8). Xem 5 hoc ky co so lop nhieu nhat ma giang vien tung phu trach.
GO
CREATE PROCEDURE top5Semester_mostClass
	(@teacherSsn AS varchar(10))
AS
BEGIN
	SELECT TOP(5) Semester_id Ma_hoc_ky--, COUNT(*) tong_so_sinh_vien
	FROM Responsible 
	WHERE Teacher_ssn = @teacherSsn
	GROUP BY Semester_id
	ORDER BY COUNT(*) DESC
END;

-- 												(iv) Sinh vien
-- *****************************************************************************************************************

--iv.1
GO
CREATE PROCEDURE RegisterSubject(
	@studentId AS VARCHAR(10), 
	@classId AS VARCHAR(10),
	@semesterId AS VARCHAR(10),
	@subjectId AS VARCHAR(10)
)
AS
BEGIN
	INSERT INTO dbo.Register VALUES (@studentId, @classId, @semesterId, @subjectId)
END;

--iv.2
GO
CREATE PROCEDURE SubjectClassTeacher(
	@studentId AS varchar(10)
)
AS
BEGIN
	SELECT DISTINCT Class_id Ma_lop, Subject_id Ma_mon, Teacher_ssn Ma_giang_vien
	FROM dbo.Responsible
	WHERE Semester_id IN (SELECT semesterId 
								FROM dbo.StudyStatus
								WHERE [sid] = @studentId AND [status] = 'nomal')
END;

--iv.3
GO
CREATE PROCEDURE SubjectReferenceBook(
	@studentId AS varchar(10),
	@semesterId AS VARCHAR(10)
)
AS
BEGIN
	SELECT DISTINCT Register.Subject_id Ma_mon, ReferenceBook_id Ma_giao_trinh
	FROM dbo.Register JOIN dbo.Uses ON Register.Subject_id = Uses.Subject_id
	WHERE Student_id = @studentId AND Semester_id = @semesterId
END;

--iv4
GO
CREATE PROCEDURE ClassOfSubject(
	@studentId AS VARCHAR(10),
	@semesterId AS VARCHAR(10)
)
AS
BEGIN
	SELECT Subject_id Ma_mon, id Ma_lop
	FROM dbo.Class
	WHERE Subject_id IN (SELECT DISTINCT Register.Subject_id Ma_mon
							FROM dbo.Register
							WHERE Student_id = @studentId AND Semester_id = @semesterId)
END;

--iv.5
GO
CREATE PROCEDURE ClassOfSubjectMoreThan1Teacher(
	@studentId AS VARCHAR(10),
	@semesterId AS VARCHAR(10)
)
AS
BEGIN
	SELECT Subject_id Ma_mon, Class_id Ma_lop
	FROM dbo.Responsible
	WHERE Subject_id IN (SELECT DISTINCT Register.Subject_id Ma_mon
							FROM dbo.Register
							WHERE Student_id = @studentId AND Semester_id = @semesterId)
	GROUP BY Subject_id, Class_id
	HAVING COUNT(DISTINCT Teacher_ssn) > 1
END;

--iv.6
GO
CREATE PROCEDURE SumCredit(
	@studentId AS VARCHAR(10),
	@semesterId AS VARCHAR(10)
)
AS
BEGIN
	SELECT SUM(DISTINCT credit)
	FROM dbo.Register JOIN dbo.Subject ON Subject_id = id
	WHERE Student_id = @studentId AND Semester_id = @semesterId
END;

--iv.7
GO
CREATE PROCEDURE SumSubject(
	@studentId AS VARCHAR(10),
	@semesterId AS VARCHAR(10)
)
AS
BEGIN
	SELECT SUM(DISTINCT Subject_id)
	FROM dbo.Register
	WHERE Student_id = @studentId AND Semester_id = @semesterId
END;

--iv.8
GO
CREATE PROCEDURE First3MaxCredit(
	@studentId AS VARCHAR(10)
)
AS
BEGIN
	SELECT TOP 3 Semester_id, SUM(DISTINCT credit)
	FROM dbo.Register JOIN dbo.Subject ON Subject_id = id
	WHERE Student_id = @studentId
	GROUP BY Semester_id
	ORDER BY SUM(DISTINCT credit)
END;