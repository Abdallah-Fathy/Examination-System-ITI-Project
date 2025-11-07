/*
        The Scenario I did 
        Make The Exam
        Generate mauall or random Exam
        Studet Enroll on this Exam
         -- first Student See The Exam  * Get_Exam_ForStudent * (Student)
         -- then student Answer The Exam (Student)
                                           1- make Table Type StudentAnswersType
                                           2- Excute * Add_All_StudentAnswers * 
        -- Auto Correct Answer (Instructor) 
        --  Get All Question Didn't correct Yet (Instructor) 
        -- Get Student Text Answer Valiad or not (Instructor) 
        --- The Instructor Correct The EXam (Student)
                                            1- make Table Type StudentAnswersTable
                                           2- Excute * Correct_AllTextAnswers * 
*/

---Genrate Exam---

 /*Generate The Exam Manually byinstructor enter 
 the Question ID for the Question need to put into Exam and this question belong to course*/
exec Generate_ExamManually_SP
@InstructorID =11 ,
@CourseID =1,@ExamType ='E',
@duration=2,
@Start ='2025-08-25 12:00:00',
@End ='2025-08-25 17:00:00', 
@QID='5, 6, 10, 12, 13, 14, 15, 16, 24, 26'

------------------------------------------------------------------------------
----------Generate The Random Exam
exec Generate_EXAMRandom_SP @InstructorID =11 ,@CourseID =1,@ExamType ='E',@duration=2,@Start ='2025-08-20 12:00:00',
@End ='2025-08-20 17:00:00',@TFNumber =10 ,@TextNumber =10,@MCQNmber=10
select *from Instructor_Question_Exam
where ExamID =(select top(1)ExamID from Exam order by ExamID desc)
---Student See The Exam---
EXEC Get_Exam_ForStudent 8
GO

-- All Student enroll in exam
EXEC EnrollStudentExam_SP 12
------------------------------
---Student SEE The Exam---

EXEC Get_Exam_ForStudent_SP @ExamID = 12
select * from Student_Exam_Questions
-------------


---Student Answer The Exam---
DECLARE @StudentAnswers StudentAnswersType;

INSERT INTO @StudentAnswers (QuestionID, Answer)
VALUES (5, '17'), -- right
       (6, '21'), -- right
       (10, '37'), -- right
       (12, '1'), -- right
       (13, '0'),--wrong
       (15, '1'), -- right
       (16, '0'), --wrong
       (24,'You can create a responsive layout by using relative units like percentages, flexible grids, media queries, and responsive frameworks such as Bootstrap.'),--right
        (26, 'The provided statements accurately describe three fundamental CSS positioning properties'); --wrong;


EXEC Add_All_StudentAnswers 
    @StudentID = 39,
    @ExamID = 12,
    @Answers = @StudentAnswers;




GO
-----------------------------
---Auto correct Exam---
EXEC Correct_Auto 12;
GO
------------------------------ 
 ---Get All Question Didn't correct Yet---
EXEC Get_UncorrectedQuestions_SP @ExamID = 12;
GO
------------------------------
 ---Get Student Answer Valiad or not---
EXEC Review_Student_TextAnswers_SP @ExamID = 11, @StudentID = 35;
GO
------------------------------
---Excute The Stored make Text Correction---
/**
first Declare Table Type 'StudentAnswersTable'
take questionID and The Mark
then insert all qestion with the marks into it 
finally excute the stored * Correct_AllTextAnswers *
*/
DECLARE @ans StudentAnswersTable;

INSERT INTO @ans (QuestionID, Mark)
VALUES 
(24, 5),
(26, 2);
 

EXEC Correct_AllTextAnswers 
     @ExamID = 11, 
     @StudentID = 35, 
     @Answers = @ans;
GO 
------------------------------


select * from Student_Exam_Questions    
where ExamID = 11
and StudentID = 35

go
select * from vw_StudentExamTotal
where StudentID = 35
and ExamID = 11

go
------------------------------------------------------------------------------------


------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

--------------------------Database Backup  ------------------------------------------------------------
DECLARE @BackupPath NVARCHAR(500);
DECLARE @FileName NVARCHAR(500);

SET @FileName = 'Examination_System' + CONVERT(VARCHAR(8), GETDATE(), 112) + '.bak';
SET @BackupPath = 'D:\DB_Backups\' + @FileName;

DECLARE @SQL NVARCHAR(MAX);
SET @SQL = 'BACKUP DATABASE Examination_System TO DISK = ''' + @BackupPath + ''' WITH FORMAT, INIT, NAME = ''Full Backup'';';

EXEC (@SQL);


