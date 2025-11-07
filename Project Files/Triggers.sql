---------Ahmed Ayman
/*
this trigger prevent to insert more exam at the same time 
*/

 CREATE OR ALTER TRIGGER trg_PreventMultiExamInsert
ON Student_Exam_Questions
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT StudentID
        FROM inserted
        GROUP BY StudentID
        HAVING COUNT(DISTINCT ExamID) > 1
    )
    BEGIN
        Print('insert only one exam for that student');
        ROLLBACK TRANSACTION;
        RETURN;
    END
END;

go
---------------------------------------------------------------
/*Prevent a student from having two exams that overlap */

CREATE OR ALTER TRIGGER trg_PreventExamConflict
ON Student_Exam_Questions
AFTER INSERT
AS
BEGIN
    DECLARE @StudentID INT, @ExamID INT, @StartTime DATETIME, @EndTime DATETIME;

   
    SELECT TOP 1 @StudentID = StudentID, @ExamID = ExamID
    FROM inserted;

   
    SELECT @StartTime = E.StartTime, 
           @EndTime   = E.EndTime
    FROM Exam E
    WHERE E.ExamID = @ExamID;

   
    IF EXISTS (
        SELECT 1
        FROM Student_Exam_Questions ESQ
        JOIN Exam E ON ESQ.ExamID = E.ExamID
        WHERE ESQ.StudentID = @StudentID
          AND ESQ.ExamID <> @ExamID
          AND (
                 (E.StartTime < @EndTime AND E.EndTime > @StartTime)
              )
    )
    BEGIN
        Print ('Student has Exam at the same time ');
        ROLLBACK TRANSACTION;
    END
END;

go
--------------------------------------------------------------

/*
this trigger prevent student to take the same exam more than one time 
*/

CREATE OR ALTER TRIGGER trg_PreventInvalidExamRetake
ON Student_Exam_Questions
AFTER INSERT
AS
BEGIN
    

    ----------------------------------------------------------------
    -- 1) the student can not have the exam for the same course more than one time 
    ----------------------------------------------------------------
    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN Exam e ON e.ExamID = i.ExamID
        WHERE e.ExamType = 'E'
          AND EXISTS (
                SELECT 1
                FROM Student_Exam_Questions seq
                JOIN Exam e2 ON e2.ExamID = seq.ExamID
                WHERE seq.StudentID = i.StudentID
                  AND e2.ExamType = 'E'
                  AND seq.ExamID <> i.ExamID
          )
    )
    BEGIN
       print('the student can not have the exam for the same course more than one time ');
        ROLLBACK TRANSACTION;
        RETURN;
    END

    ----------------------------------------------------------------
    -- 2) student  enter corrective exam only if he failed in the exam
    ----------------------------------------------------------------
    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN Exam ec ON ec.ExamID = i.ExamID
        WHERE ec.ExamType = 'C'
          AND NOT EXISTS (
                SELECT 1
                FROM Student_Exam_Questions seq
                JOIN Exam eFinal ON eFinal.ExamID = seq.ExamID
                WHERE seq.StudentID = i.StudentID
                  AND eFinal.ExamType = 'E'
                  AND seq.StudentDegree < (eFinal.Degree * 0.6)
          )
    )
    BEGIN
		print('student  enter corrective exam only if he failed in the exam')
        ROLLBACK TRANSACTION;
        RETURN;
    END

    ----------------------------------------------------------------
    -- 3) This Student faild in corrective exam so he cant enter any thing in this course
    ----------------------------------------------------------------
    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN Exam e ON e.ExamID = i.ExamID
        WHERE EXISTS (
            SELECT 1
            FROM Student_Exam_Questions seq
            JOIN Exam eC ON eC.ExamID = seq.ExamID
            WHERE seq.StudentID = i.StudentID
              AND eC.CourseID = e.CourseID
              AND eC.ExamType = 'C'
              AND seq.ExamID <> i.ExamID
        )
    )
    BEGIN
        print('This Student faild in corrective exam so he cant enter any thing in this course')
        ROLLBACK TRANSACTION;
        RETURN;
    END

END;

go
------------------------------------------------------------------
/* 
prevent student to enter the exam if it is not in the start and end time
*/

CREATE TRIGGER trg_Check_Exam_Time
ON Student_Answer
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted I
        INNER JOIN Exam E ON I.ExamID = E.ExamID
        WHERE GETDATE() NOT BETWEEN E.StartTime AND E.EndTime
    )
    BEGIN
        RAISERROR('You cannot answer outside exam start/end time window.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
go
------------------------------------------------------------------

/* 
this trigger finish the exam after the duration of the exam ends
*/
CREATE TRIGGER trg_Check_Exam_Duration
ON Student_Answer
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted I
        INNER JOIN Exam E ON I.ExamID = E.ExamID
        WHERE GETDATE() > DATEADD(MINUTE, E.Duration, (
                SELECT MIN(SA2.ID)
                FROM Student_Answer SA2
                WHERE SA2.StudentID = I.StudentID
                  AND SA2.ExamID = I.ExamID
            ))
    )
    BEGIN
        RAISERROR('You cannot answer outside your allowed duration.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
go

EXEC sp_settriggerorder  
    @triggername = 'trg_Check_Exam_Window',  
    @order = 'First',  
    @stmttype = 'INSERT';

EXEC sp_settriggerorder  
    @triggername = 'trg_Check_Exam_Duration',  
    @order = 'Last',  
    @stmttype = 'INSERT';
GO
------------------------------------------------------------------
CREATE TABLE Audit_Log
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    TableName NVARCHAR(100),
    OperationType NVARCHAR(10),
    UserName NVARCHAR(100),
    RecordID NVARCHAR(50),
    OldData NVARCHAR(MAX) NULL,
    NewData NVARCHAR(MAX) NULL,
    ChangeDate DATETIME DEFAULT GETDATE()
);
go 
------------------------------------------------------------------
/*
this trigger audit users who make any edit in the system */

CREATE OR ALTER TRIGGER trg_Audit_Users
ON Users
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @TableName NVARCHAR(100) = 'Users';
    DECLARE @UserName NVARCHAR(100) = SUSER_SNAME();

    -----------------------------------------------------------------
    -- INSERT
    -----------------------------------------------------------------
    INSERT INTO Audit_Log (TableName, OperationType, UserName, RecordID, NewData)
    SELECT 
        @TableName,
        'INSERT',
        @UserName,
        CAST(i.UserID AS NVARCHAR),
        CONCAT(
            'Name=', i.Name, ', Address=', i.Address, ', BirthDate=', CONVERT(varchar, i.BirthDate, 120),
            ', Email=', i.Email, ', Gender=', i.Gender, ', Phone=', i.Phone,
            ', UserType=', i.UserType, ', Password=', i.Password
        )
    FROM inserted i
    WHERE NOT EXISTS (SELECT 1 FROM deleted d WHERE d.UserID = i.UserID);

    -----------------------------------------------------------------
    -- DELETE
    -----------------------------------------------------------------
    INSERT INTO Audit_Log (TableName, OperationType, UserName, RecordID, OldData)
    SELECT 
        @TableName,
        'DELETE',
        @UserName,
        CAST(d.UserID AS NVARCHAR),
        CONCAT(
            'Name=', d.Name, ', Address=', d.Address, ', BirthDate=', CONVERT(varchar, d.BirthDate, 120),
            ', Email=', d.Email, ', Gender=', d.Gender, ', Phone=', d.Phone,
            ', UserType=', d.UserType, ', Password=', d.Password
        )
    FROM deleted d
    WHERE NOT EXISTS (SELECT 1 FROM inserted i WHERE i.UserID = d.UserID);

    -----------------------------------------------------------------
    -- UPDATE
    -----------------------------------------------------------------
    INSERT INTO Audit_Log (TableName, OperationType, UserName, RecordID, OldData, NewData)
    SELECT 
        @TableName,
        'UPDATE',
        @UserName,
        CAST(d.UserID AS NVARCHAR),
        CONCAT(
            'OldName=', d.Name, ', OldAddress=', d.Address, ', OldBirthDate=', CONVERT(varchar, d.BirthDate, 120),
            ', OldEmail=', d.Email, ', OldGender=', d.Gender, ', OldPhone=', d.Phone,
            ', OldUserType=', d.UserType, ', OldPassword=', d.Password
        ),
        CONCAT(
            'NewName=', i.Name, ', NewAddress=', i.Address, ', NewBirthDate=', CONVERT(varchar, i.BirthDate, 120),
            ', NewEmail=', i.Email, ', NewGender=', i.Gender, ', NewPhone=', i.Phone,
            ', NewUserType=', i.UserType, ', NewPassword=', i.Password
        )
    FROM deleted d
    JOIN inserted i ON i.UserID = d.UserID
    WHERE 
        i.Name      <> d.Name OR
        i.Address   <> d.Address OR
        i.BirthDate <> d.BirthDate OR
        ISNULL(i.Email,'') <> ISNULL(d.Email,'') OR
        i.Gender    <> d.Gender OR
        i.Phone     <> d.Phone OR
        i.UserType  <> d.UserType OR
        i.Password  <> d.Password;
END;
GO
-------------------------------------------------------------------------------

           ------------------Ahmed Ayman------------------
           ---------------------Indexes-------------------


-- Student by Intake
CREATE NONCLUSTERED INDEX IX_Student_IntakeID ON Student(IntakeID);

-- Instructor by Department
CREATE NONCLUSTERED INDEX IX_Instructor_DepartmentID ON Instructor(DepartmentID);

-- Exam by Time
CREATE NONCLUSTERED INDEX IX_Exam_Time ON Exam(StartTime, EndTime, Duration);

-- Question_Pool by Course
CREATE NONCLUSTERED INDEX IX_QuestionPool_CourseID ON Question_Pool(CourseID);

-- Instructor_Question_Exam by Exam + Question
CREATE NONCLUSTERED INDEX IX_IQE_Exam_Question ON Instructor_Question_Exam(ExamID, QuestionID);

-- Student_Answer by Exam + Student + Question
CREATE NONCLUSTERED INDEX IX_StudentAnswer_Exam_Student ON Student_Answer(ExamID, StudentID, QuestionID);
