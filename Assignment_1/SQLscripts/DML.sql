USE Class_Registration
GO
--SECTION (i) PDT
-- *****************************************************************************************************************

--(i.1). Cap nhat dang ki mon hoc cua cac lop.
-- Them
DROP PROCEDURE addRegister
GO
CREATE PROCEDURE addRegister(
    @newStudentId AS varchar(10),
    @newClassId AS varchar(10),
    @newSemesterId AS varchar(10),
    @newSubjectId AS varchar(10)
    )
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Student WHERE ssn = @newStudentId)
        RAISERROR('Invalid StudentID',16,0)
    ELSE
        IF NOT EXISTS (SELECT 1 FROM Class WHERE id = @newClassId AND semester_id = @newSemesterId AND subject_id = @newSubjectId)
            RAISERROR('Invalid Class',16,0)
        ELSE
            IF EXISTS (
                SELECT 1 FROM Register
                WHERE student_id = @newStudentId
                    AND class_id = @newClassId
                    AND semester_id = @newSemesterId
                    AND subject_id = @newSubjectId
            )
                RAISERROR('Existed Register',16,0)
            ELSE
                INSERT INTO Register
                VALUES 
                    (@newStudentId, @newClassId, @newSemesterId, @newSubjectId)
END;

-- Xoa
GO
CREATE PROCEDURE removeRegister(
    @oldStudentId AS varchar(10),
    @oldClassId AS varchar(10),
    @oldSemesterId AS varchar(10),
    @oldSubjectId AS varchar(10)
    )
AS
BEGIN
    DELETE FROM Register
    WHERE 
        Student_id = @oldStudentId
        AND Class_id = @oldClassId
        AND Semester_id = @oldSemesterId
        AND Subject_id = @oldSubjectId
END;

-- Sua
GO
CREATE PROCEDURE updateRegister(
    @oldStudentId AS varchar(10),
    @oldClassId AS varchar(10),
    @oldSemesterId AS varchar(10),
    @oldSubjectId AS varchar(10),

    @newStudentId AS varchar(10),
    @newClassId AS varchar(10),
    @newSemesterId AS varchar(10),
    @newSubjectId AS varchar(10)
    )
AS
BEGIN
    UPDATE Register
    SET 
        Student_id = @newStudentId,
        Class_id = @newClassId,
        Semester_id = @newSemesterId,
        Subject_id = @newSubjectId
    WHERE 
        Student_id = @oldStudentId
        AND Class_id = @oldClassId
        AND Semester_id = @oldSemesterId
        AND Subject_id = @oldSubjectId
END;


GO
--(i.2). Xem danh sach lop da duoc dang ky boi mot sinh vien o mot hoc ky.
CREATE PROCEDURE registeredClass(
    @studentId AS varchar(10),
    @semesterId AS varchar(10)
    )
AS
BEGIN
    SELECT DISTINCT Class_id Ma_lop_hoc, Subject_id Ma_mon_hoc
    FROM REGISTER 
    WHERE Student_id = @studentId
        AND Semester_id = @semesterId
END;

GO
--(i.3). Xem danh sach lop duoc phu trach boi mot giang vien o mot hoc ky.
CREATE PROCEDURE responsibleClass(
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
CREATE PROCEDURE listSubject
AS
BEGIN
    SELECT DISTINCT Department_id Ma_khoa, Semester_id Ma_hoc_ky, Subject_id Ma_mon_hoc
    FROM Opens
END;

GO
--(i.5). Xem danh sach sinh vien dang ky o moi lop o moi hoc ky o moi khoa.
CREATE PROCEDURE listStudent
AS
BEGIN
    SELECT DISTINCT Department_id Ma_khoa, c.Semester_id Ma_hoc_ky, c.id Ma_lop,
            s.ssn,firstName Ten, lastName Ho
            
    FROM Student s, Register, Class c, Opens o
    WHERE s.ssn = Student_id 
        AND Class_id = c.id
        AND c.Semester_id = o.Semester_id
        AND c.Subject_id = o.Subject_id
    ORDER BY Department_id, c.Semester_id, c.id, s.ssn,firstName,lastName
END;

GO
--(i.6). Xem danh sach giang vien phu trach o moi lop o moi hoc ky o moi khoa.
CREATE PROCEDURE listTeacher
AS
BEGIN
    SELECT DISTINCT Department_id Ma_Khoa, c.Semester_id Ma_hoc_ky, c.Subject_id Ma_mon_hoc, Class_id Ma_lop, 
        Teacher_ssn SSN, firstName Ten, lastName Ho
            
    FROM Responsible,Employee,Class c,Opens o
    WHERE Teacher_ssn = ssn 
        AND Class_id = c.id
        AND c.Subject_id = o.Subject_id
    ORDER BY Department_id, c.Semester_id, c.Subject_id, Class_id, Teacher_ssn, firstName, lastName
END;

GO
--(i.7). Xem cac giao trinh duoc chi dinh cho moi mon hoc o moi hoc ky o moi khoa
CREATE PROCEDURE listReferenceBook
AS
BEGIN
    SELECT DISTINCT dId Ma_khoa, u.Semester_id Ma_hoc_ky, u.Subject_id Ma_mon_hoc, ReferenceBook_id Ma_sach, [name] Ten_sach
    FROM Uses u JOIN SubjectDepartment s ON u.Subject_id = s.Subject_id JOIN ReferenceBook r ON u.Referencebook_id = r.id
    ORDER BY did,u.Semester_id,u.Subject_id,ReferenceBook_id,[name]
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
    ORDER BY Department_id , Semester_id
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
    ORDER BY Department_id, o.Semester_id
END;

GO
--(i.10). Xem tong so sinh vien dang ky o moi lop cua mot mon hoc o mot hoc ky.
CREATE PROCEDURE numOfStudents_class_sem(
    @subject_id varchar(10),
    @semester_id varchar(10)
)
AS
BEGIN
    SELECT DISTINCT c.id Ma_lop_hoc, COUNT(r.Student_id) Tong_sinh_vien
    FROM Register r JOIN Class c ON r.Class_id = c.id AND r.Semester_id = c.Semester_id AND r.Subject_id = c.Subject_id
    WHERE r.Subject_id = @subject_id AND r.Semester_id = @semester_id
    GROUP BY c.id
    ORDER BY c.id
END;

GO
--(i.11). Xem so sinh vien dang ky o moi mon hoc o mot hoc ky.
CREATE PROCEDURE numOfStudents_sub_sem(
    @semester_id varchar(10)
)
AS
BEGIN
    SELECT c.Subject_id Ma_mon_hoc, COUNT(DISTINCT r.Student_id) Tong_sinh_vien
    FROM Register r JOIN Class c ON r.Class_id = c.id AND r.Semester_id = c.Semester_id AND r.Subject_id = c.Subject_id
    WHERE r.Semester_id = @semester_id
    GROUP BY c.Subject_id
END;

GO
--(i.12). Xem tong so sinh vien dang ky o moi mon hoc o moi khoa.
CREATE PROCEDURE numOfStudents_sub_dep
AS
BEGIN
    SELECT sd.did Ma_khoa, c.Subject_id Ma_mon_hoc,
            COUNT(r.Student_id) Tong_sinh_vien
    FROM Register r JOIN Class c ON r.Class_id = c.id AND r.Semester_id = c.Semester_id AND r.Subject_id = c.Subject_id
        JOIN SubjectDepartment sd ON r.Subject_id = sd.subject_id
    GROUP BY sd.did, c.Subject_id
    ORDER BY sd.did, c.Subject_id
END;
--!SECTION
--SECTION (ii) Khoa
-- *****************************************************************************************************************
--ii.1: Cap nhat danh sach mon hoc duoc mo truoc dau moi hoc ky.
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
--ii.2: Cap nhat danh sach giang vien phu trach moi lop hoc duoc mo truoc dau moi hoc ky.
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
--ii.3: Xem danh sach mon hoc o mot hoc ky.
GO
CREATE PROCEDURE SubjectOnSemester(
    @semesterId AS varchar(10),
    @departmentId AS VARCHAR(10)
)
AS
BEGIN
    SELECT DISTINCT Id Ma_mon
    FROM dbo.Subject JOIN dbo.Opens ON Opens.Subject_id = Subject.id
    WHERE dbo.Opens.Semester_id = @semesterId AND dbo.Opens.Department_id = @departmentId
END;

GO
--ii.4: Xem danh sach giang vien o mot hoc ky.
CREATE PROCEDURE TeacherOnSemester(
    @semesterId AS varchar(10),
    @departmentId AS VARCHAR(10)
)
AS
BEGIN
    SELECT DISTINCT Teacher_ssn Ma_giang_vien
    FROM dbo.Responsible JOIN dbo.Teacher ON Teacher.ssn = Responsible.Teacher_ssn
    WHERE Semester_id = @semesterId AND dId = @departmentId
END;

GO
--ii.5: Xem danh sach lop duoc phu trach boi mot giang vien o mot hoc ky.
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
--ii.6: Xem danh sach giang vien phu trach o moi lop o mot hoc ky.
CREATE PROCEDURE TeacherOfClass(
    @semesterId AS varchar(10),
    @departmentId AS VARCHAR(10)
)
AS
BEGIN
    SELECT DISTINCT Class_id Ma_lop, dbo.Responsible.Semester_id Ma_hoc_ky, dbo.Responsible.Subject_id Ma_mon, Teacher_ssn Ma_giang_vien, lastName Ho, firstName Ten
    FROM dbo.Responsible JOIN dbo.Opens ON Opens.Semester_id = Responsible.Semester_id AND Opens.Subject_id = Responsible.Subject_id
        JOIN dbo.Employee ON Teacher_ssn = ssn
    WHERE dbo.Responsible.Semester_id = @semesterId AND Department_id = @departmentId
END;

GO
--ii.7: Xem cac giao trinh duoc chi dinh cho moi mon hoc o mot hoc ky.
CREATE PROCEDURE BookOfSubject(
    @semesterId AS varchar(10),
    @departmentId AS VARCHAR(10)
)
AS
BEGIN
    SELECT DISTINCT Subject_id Ma_mon, ReferenceBook_id Ma_giao_trinh, [name] Ten_giao_trinh
    FROM dbo.Uses JOIN dbo.ReferenceBook ON ReferenceBook_id = id
    WHERE Subject_id IN (SELECT Subject_id FROM dbo.SubjectDepartment WHERE did = @departmentId)
END;

GO
--ii.8: Xem danh sach sinh vien dang ky cho moi lop o mot hoc ky.
CREATE PROCEDURE StudentOfClass(
    @semesterId AS varchar(10),
    @departmentId AS VARCHAR(10)
)
AS
BEGIN
    SELECT DISTINCT Class_id Ma_lop, dbo.Register.Subject_id Ma_mon, Student_id Ma_sinh_vien
    FROM dbo.Register JOIN dbo.Opens ON Opens.Semester_id = Register.Semester_id AND Opens.Subject_id = Register.Subject_id
    WHERE dbo.Register.Semester_id = @semesterId AND Department_id = @departmentId
END;

GO
--ii.9: Xem tong so sinh vien dang ky o mot hoc ky.
CREATE PROCEDURE NumStudentOfSemester(
    @semesterId AS varchar(10),
    @departmentId AS VARCHAR(10)
)
AS
BEGIN
    SELECT COUNT(DISTINCT Student_id) Tong_sinh_vien
    FROM dbo.Register JOIN dbo.Student ON Student.ssn = Register.Student_id
    WHERE Semester_id = @semesterId AND dId = @departmentId
END;

GO
--ii.10: Xem tong so lop duoc mo o mot hoc ky.
CREATE PROCEDURE NumClassOfSemester(
    @semesterId AS varchar(10),
    @departmentId AS VARCHAR(10)
)
AS
BEGIN
    SELECT COUNT(*) Tong_lop
    FROM dbo.Class JOIN dbo.Opens ON Opens.Semester_id = Class.Semester_id AND Opens.Subject_id = Class.Subject_id
    WHERE dbo.Class.Semester_id = @semesterId AND Department_id = @departmentId
END;

--ii.11: Xem nhung mon co nhieu giang vien cung phu trach nhat o mot hoc ky.
GO
CREATE PROCEDURE SubjectHavingMaxTeacher(
    @semesterId AS varchar(10),
    @departmentId AS VARCHAR(10)
)
AS
BEGIN
    SELECT Subject_id 
    FROM (SELECT dbo.Responsible.Subject_id, COUNT(DISTINCT Teacher_ssn) AS Num_Of_Tea
            FROM dbo.Responsible JOIN dbo.Opens ON Opens.Subject_id = Responsible.Subject_id AND Opens.Semester_id = Responsible.Semester_id 
            WHERE dbo.Responsible.Semester_id = @semesterId AND Department_id = @departmentId
            GROUP BY dbo.Responsible.Subject_id) a
    WHERE a.Num_Of_Tea = (SELECT MAX(Num_Of_Tea) 
                            FROM (SELECT dbo.Responsible.Subject_id, COUNT(DISTINCT Teacher_ssn) AS Num_Of_Tea
                                    FROM dbo.Responsible JOIN dbo.Opens ON Opens.Subject_id = Responsible.Subject_id AND Opens.Semester_id = Responsible.Semester_id
                                    WHERE dbo.Responsible.Semester_id = @semesterId AND Department_id = @departmentId
                                    GROUP BY dbo.Responsible.Subject_id) b)
END;

GO
--ii.12: Xem so sinh vien dang ky trung binh trong 3 nam gan nhat cho mot mon hoc o mot hoc ky.
CREATE PROCEDURE AvgNumStudent(
    @subjectId AS VARCHAR(10)
)
AS
BEGIN
    SELECT AVG(a.So_sinh_vien) So_sinh_vien_trung_binh_trong_3_nam_gan_nhat
    FROM (SELECT Semester_id, dbo.Semester.startDate Ngay_bat_dau, COUNT(DISTINCT Student_id) So_sinh_vien
            FROM dbo.Register JOIN dbo.Semester ON Semester_id = dbo.Semester.id
            WHERE Subject_id = @subjectId AND DATEDIFF(YEAR, startDate, GETDATE()) <= 3
            GROUP BY Semester_id, startDate) a
END;

--!SECTION
--SECTION (iii) Giang vien
-- *****************************************************************************************************************
-- (iii.1). Cap nhat giao trinh chinh cho mon hoc do minh phu trach.
GO
CREATE PROCEDURE UpdateReferenceBook(
    @teacherSsn AS varchar(10),
    @subjectId AS varchar(10),
    @bookId AS varchar(10),
    @semesterId AS varchar(10),
    @classId AS varchar(10)
    )
AS
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM MainResponsible
        Where MainTeacher_ssn = @teacherSsn
            AND Subject_id = @subjectId
            AND Semester_id = @semesterId
    )
        RAISERROR('Only update book for your responsible subject',16,0)
    ELSE
        IF (SELECT COUNT(*) FROM Uses 
            WHERE Subject_id = @subjectId 
                AND Semester_id = @semesterId) < 3
            INSERT INTO Uses 
            (Subject_id,Semester_id, Class_id ,ReferenceBook_id, MainTeacher_ssn)
            VALUES (@subjectId,@semesterId, @classId,  @bookId, @teacherSsn)
        ELSE 
            RAISERROR('This subject can not have more than 3 reference books',16,0);
END;

-- (iii.2). Xem danh sach lop hoc cua moi mon hoc do minh phu trach o mot hoc ky.
DROP PROCEDURE responsibleClasses
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
    ORDER BY Subject_id,Class_id
END;

-- (iii.3). Xem danh sach sinh vien cua moi lop hoc do minh phu trach o mot hoc ky.
DROP PROCEDURE studentOfResopnsibleClass
GO
CREATE PROCEDURE studentOfResopnsibleClass 
    (@teacherSsn AS varchar(10),
     @semesterId AS varchar(10)
    )
AS
BEGIN
    SELECT DISTINCT rp.Subject_id Ma_mon_hoc,rp.Class_id Ma_lop_hoc,Student_id Ma_sinh_vien, firstName Ten, lastName Ho
    FROM Responsible rp, Register rg, Student st
    WHERE rp.Class_id = rg.Class_id
        AND rg.Student_id = st.ssn
        AND Teacher_ssn = @teacherSsn
        AND rp.Semester_id = @semesterId
    GROUP BY rp.Subject_id, rp.Class_id,Student_id, firstName, lastName
    ORDER BY rp.Subject_id, rp.Class_id,Student_id, firstName, lastName
END;

-- (iii.4). Xem danh sach mon hoc va giao trinh chinh cho moi mon hoc do minh phu trach o mot hoc ky.
GO
CREATE PROCEDURE referenceBookOfResponsibleSubject 
    (@teacherSsn AS varchar(10),
     @semesterId AS varchar(10)
    )
AS
BEGIN
    SELECT rp.Subject_id Ma_mon_hoc, r.[name] Ten_giao_trinh
    FROM Responsible rp JOIN Uses u ON rp.Subject_id = u.Subject_id 
        JOIN ReferenceBook r ON u.ReferenceBook_id = r.id
    WHERE rp.Semester_id = @semesterId AND u.Semester_id = @semesterId
    GROUP BY rp.Subject_id,r.[name]
END;

-- (iii.5). Xem tong so sinh vien cua moi lop hoc do minh phu trach o mot hoc ky.
DROP PROCEDURE numOfStudents_ofResponsiblesClass 
GO
CREATE PROCEDURE numOfStudents_ofResponsiblesClass 
    (@teacherSsn AS varchar(10),
     @semesterId AS varchar(10)
    )
AS
BEGIN
    SELECT rp.Subject_id Ma_mon_hoc,rp.Class_id Ma_lop_hoc, COUNT(DISTINCT rg.Student_id) tong_so_sinh_vien
    FROM Responsible rp, Register rg
    WHERE rp.Class_id = rg.Class_id
        AND Teacher_ssn = @teacherSsn
        AND rp.Semester_id = @semesterId
        AND rg.Semester_id = @semesterId
    GROUP BY rp.Subject_id, rp.Class_id
END;

-- (iii.6). Xem so lop hoc do minh phu trach o moi hoc ky trong 3 nam lien tiep gan day nhat.
GO
CREATE PROCEDURE numOfResponsibleClass_3RecentYear
    (@teacherSsn AS varchar(10))
AS
BEGIN
    SELECT s.id Ma_hoc_ky,COUNT(*) Tong_so_lop
    FROM Responsible r, Semester s
    WHERE    r.Semester_id = s.id 
        AND (DATEDIFF(YEAR,s.startDate,GETDATE())) <= 3
        AND Teacher_ssn = @teacherSsn
    GROUP BY s.id
END;

-- (iii.7). Xem 5 lop hoc co so sinh vien cao nhat ma giang vien tung phu trach.
DROP PROCEDURE top5Class_mostStudent
GO
CREATE PROCEDURE top5Class_mostStudent
    (@teacherSsn AS varchar(10))
AS
BEGIN
    SELECT TOP(5) rp.Class_id Ma_lop_hoc, COUNT(DISTINCT Student_id) Tong_so_sinh_vien
    FROM Responsible rp, Register rg
    WHERE rp.Class_id = rg.Class_id
        AND Teacher_ssn = @teacherSsn
        AND rp.Semester_id = rg.Semester_id
        AND rp.Subject_id = rg.Subject_id
    GROUP BY rp.Class_id, rp.Subject_id, rp.Semester_id
    ORDER BY COUNT(DISTINCT Student_id) DESC
END;
-- (iii.8). Xem 5 hoc ky co so lop nhieu nhat ma giang vien tung phu trach.
GO
DROP PROCEDURE top5Semester_mostClass
GO
CREATE PROCEDURE top5Semester_mostClass
    (@teacherSsn AS varchar(10))
AS
BEGIN
    SELECT TOP(5) Semester_id Ma_hoc_ky, COUNT(*) Tong_so_lop
    FROM Responsible 
    WHERE Teacher_ssn = @teacherSsn
    GROUP BY Semester_id
    ORDER BY COUNT(*) DESC
END;
--!SECTION
--SECTION (iv) Sinh vien
-- *****************************************************************************************************************

--iv.1: Dang ky mon hoc o hoc ky duoc dang ky.
GO
CREATE PROCEDURE RegisterSubject(
    @studentId AS VARCHAR(10), 
    @classId AS VARCHAR(10),
    @semesterId AS VARCHAR(10),
    @subjectId AS VARCHAR(10)
)
AS
BEGIN
    IF EXISTS( SELECT * FROM dbo.StudyStatus WHERE [sid] = @studentId AND semesterId = @semesterId AND [status] = 'normal')
        INSERT INTO dbo.Register VALUES (@studentId, @classId, @semesterId, @subjectId)
    ELSE
        RAISERROR('Invalid Study status',16,0)
END;
--iv.2: Xem danh sach mon hoc, lop hoc, va cac giang vien phu trach cho moi lop cua moi mon hoc o hoc ky duoc dang ky.
GO
CREATE PROCEDURE SubjectClassTeacher(
    @studentId AS varchar(10)
)
AS
BEGIN
    SELECT DISTINCT Semester_id Ma_hoc_ky,Class_id Ma_lop, Subject_id Ma_mon, Teacher_ssn Ma_giang_vien
    FROM dbo.Responsible
    WHERE Semester_id IN (SELECT semesterId 
                                FROM dbo.StudyStatus
                                WHERE [sid] = '1600002' AND [status] = 'normal')
END;

--iv.3: Xem danh sach mon hoc va giao trinh chinh cho moi mon hoc ma minh dang ky o mot hoc ky.
GO
CREATE PROCEDURE SubjectReferenceBook(
    @studentId AS varchar(10),
    @semesterId AS VARCHAR(10)
)
AS
BEGIN
    SELECT DISTINCT Register.Subject_id Ma_mon, ReferenceBook_id Ma_giao_trinh, [name] Ten_giao_trinh
    FROM dbo.Register JOIN dbo.Uses ON Register.Subject_id = Uses.Subject_id
        JOIN ReferenceBook ON Uses.ReferenceBook_id = ReferenceBook.id
    WHERE Student_id = @studentId AND Register.Semester_id = @semesterId
END;

--iv4: Xem danh sach lop hoc cua moi mon hoc ma minh dang ky o mot hoc ky.  
GO
CREATE PROCEDURE ClassOfSubject(
    @studentId AS VARCHAR(10),
    @semesterId AS VARCHAR(10)
)
AS
BEGIN
    SELECT DISTINCT Subject_id Ma_mon, id Ma_lop
    FROM dbo.Class
    WHERE Subject_id IN (SELECT DISTINCT Register.Subject_id Ma_mon
                            FROM dbo.Register
                            WHERE Student_id = @studentId AND Semester_id = @semesterId)
END;

--iv.5: Xem danh sach lop hoc cua moi mon hoc ma minh dang ky co nhieu hon 1 giang vien phu trach o mot hoc ky.
GO
CREATE PROCEDURE ClassOfSubjectMoreThan1Teacher(
    @studentId AS VARCHAR(10),
    @semesterId AS VARCHAR(10)
)
AS
BEGIN
    SELECT DISTINCT Subject_id Ma_mon, Class_id Ma_lop
    FROM dbo.Responsible
    WHERE Subject_id IN (SELECT DISTINCT Register.Subject_id Ma_mon
                            FROM dbo.Register
                            WHERE Student_id = @studentId AND Semester_id = @semesterId)
    GROUP BY Subject_id, Class_id
    HAVING COUNT(DISTINCT Teacher_ssn) > 1
END;

--iv.6: Xem tong so tin chi da dang ky duoc o mot hoc ky.
GO
CREATE PROCEDURE SumCredit(
    @studentId AS VARCHAR(10),
    @semesterId AS VARCHAR(10)
)
AS
BEGIN
    SELECT SUM(DISTINCT credit) Tong_so_tin_chi
    FROM dbo.Register JOIN dbo.Subject ON Subject_id = id
    WHERE Student_id = @studentId AND Semester_id = @semesterId
END;

--iv.7: Xem tong so mon hoc da dang ky duoc o mot hoc ky.
GO
CREATE PROCEDURE SumSubject(
    @studentId AS VARCHAR(10),
    @semesterId AS VARCHAR(10)
)
AS
BEGIN
    SELECT COUNT(DISTINCT Subject_id) Tong_so_mon_hoc_da_dang_ky
    FROM dbo.Register
    WHERE Student_id = @studentId AND Semester_id = @semesterId
END;

--iv.8: Xem 3 hoc ky co so tong so tin chi cao nhat ma minh da tung dang ky.
GO
CREATE PROCEDURE First3MaxCredit(
    @studentId AS VARCHAR(10)
)
AS
BEGIN
    SELECT TOP 3 Semester_id Ma_hoc_ky, SUM(DISTINCT credit) Tong_so_tin_chi
    FROM dbo.Register JOIN dbo.Subject ON Subject_id = id
    WHERE Student_id = @studentId
    GROUP BY Semester_id
    ORDER BY SUM(DISTINCT credit) DESC
END;
--!SECTION