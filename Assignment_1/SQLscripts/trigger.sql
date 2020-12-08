USE Class_Registration
GO
-- Check for number of students of a class less than or equal 60
DROP TRIGGER IF EXISTS numOfStudents_LEQ_60
GO
CREATE TRIGGER numOfStudents_LEQ_60 ON Register
AFTER INSERT
AS
BEGIN
    IF EXISTS
        (SELECT CLASS_ID,SEMESTER_ID,SUBJECT_ID,COUNT(*)
        FROM REGISTER
        GROUP BY CLASS_ID,SEMESTER_ID,SUBJECT_ID
        HAVING COUNT(*) > 60
        ) 
    BEGIN
        RAISERROR ('Maximum of number student is 60',-1,-1)
        ROLLBACK TRANSACTION
    END
END

-- Check for total participation of Reference Book 
DROP TRIGGER IF EXISTS total_participation_reference_book_1
GO
CREATE TRIGGER total_participation_reference_book_1 ON ReferenceBook
AFTER INSERT,DELETE,UPDATE
AS
BEGIN
    IF EXISTS
        ((SELECT DISTINCT ID FROM ReferenceBook)
        EXCEPT
        (SELECT DISTINCT BOOK_ID ID FROM WRITE))
    BEGIN
        RAISERROR ('Reference Book must be written by (an) author',-1,-1)
        ROLLBACK TRANSACTION
    END
END

DROP TRIGGER IF EXISTS total_participation_reference_book_2
GO
CREATE TRIGGER total_participation_reference_book_2 ON Author
AFTER INSERT,DELETE,UPDATE
AS
BEGIN
    IF EXISTS
        ((SELECT DISTINCT ID FROM ReferenceBook)
        EXCEPT
        (SELECT DISTINCT BOOK_ID ID FROM WRITE))
    BEGIN
        RAISERROR ('Reference Book must be written by (an) author',-1,-1)
        ROLLBACK TRANSACTION
    END
END

DROP TRIGGER IF EXISTS total_participation_reference_book_3
GO
CREATE TRIGGER total_participation_reference_book_3 ON ReferenceBook
AFTER INSERT,DELETE,UPDATE
AS
BEGIN
    IF EXISTS
        ((SELECT DISTINCT ID FROM ReferenceBook)
        EXCEPT
        (SELECT DISTINCT BOOK_ID ID FROM WRITE))
    BEGIN
        RAISERROR ('Reference Book must be written by (an) author',-1,-1)
        ROLLBACK TRANSACTION
    END
END

-- Check for total participation of Main Teacher 
-- Check for total participation of Class
