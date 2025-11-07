/*
The Scenario I did 
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


----------------------Omar-------------------------
---------------------------------------------------
create or alter  proc Generate_ExamManually_SP
											@InstructorID int,
											@CourseID int,
											@ExamType varchar(20),
											@duration int,
											@Start datetime,
											@End datetime,
											@QID varchar(max)
as 
begin
	if exists( select 1 from Instructor_Courses where (InstructorID =@InstructorID) and (CourseID =@CourseID))
	begin
	---- create temp table 
		create table #QID ( ID int not null primary key);
		insert into #QID
		select distinct CONVERT(int,value)
		from string_split (@QID,',')
		-----CHK about ID in Question Pool
		declare @MissingID varchar(50)
		select @MissingID =string_agg(convert(varchar(10),Q.ID),',')
		from #QID Q left join Question_Pool QP
				on Q.ID =QP.QuestionID
				where QP.QuestionID is null ;
				if @MissingID is not null
				begin
					print concat(@MissingID,' not found in Question Pool')
					return;
				end
				else
				begin 
				--CHK about Question on course 
				declare @notcorrectID varchar(50)
				select @notcorrectID=string_agg(convert(varchar(10),Q.ID),',')--get ID 
				from #QID Q join Question_Pool QP
				on Q.ID =QP.QuestionID
				where CourseID !=@CourseID
				if @notcorrectID is not null
				begin
				
					print concat(@notcorrectID,' not found in Question Pool for this course')
					return;
				end
				
				-----Transaction 
				begin transaction ExamManually
					declare @Exam int,@TestInsert1 int,@TotalDegree int,@MaxDegree int,@CHKDegree int, @ExamID int
					-----------insert in Exam table
					insert into Exam (ExamType,Duration,StartTime,EndTime,CourseID,InstructorID)
					values (@ExamType,@duration,@Start,@End,@CourseID,@InstructorID)
					set @Exam=@@ERROR
					--CHK Exam 
					set @ExamID=(select top(1)ExamID from Exam order by ExamID desc)
						
					------insert data into Instructor_Question_Exam
					insert into Instructor_Question_Exam(InstructorID,QuestionID,ExamID)
					select @InstructorID ,ID,@ExamID
					from #QID
					set @TestInsert1 =@@ERROR
					---------Get Total degree of Exam 
				    set @TotalDegree= (select sum(QuestionDegree)
							from Question_Pool QP join #QID Q
							on QP.QuestionID =Q.ID)
					----------Get Max degree of Exam
					set @MaxDegree  = (select MaxDegree from Course where CourseID=@CourseID)
					
					------------CHK degree
					if @TotalDegree <= @MaxDegree
			        begin
					   ------ insert degree of Exam
						update Exam
						set Degree=@TotalDegree
						where ExamID =@ExamID
			        end
			        else 
					begin
						print'Error : the total Exam degree greater than MaxDegree of course'
						rollback;
						return;
						
					end
					
					
					-------CHK Transaction
					if (@TestInsert1 =0 and @Exam=0)
			        begin
						commit;
						print 'Exam done'
					end 
					else
					begin
						print'Error: when Choise Question:'
							 rollback;
					 end
				end
	end
	else
	begin 
		print 'Error: The instructor has not taught this course.'
	end
end;
go
--------------------------------------------------------------------------
----------------------Omar-------------------------
----------Generate The Random Exam
-----------------------
create  or alter proc Generate_EXAMRandom_SP
											@InstructorID int,
											@CourseID int,
											@ExamType varchar(20),
											@duration int,
											@Start datetime,
											@End datetime,
											@TFNumber int =0,
											@TextNumber int =0,
											@MCQNmber int =0
as 
begin
    --Check number of question are enough
	    if @TFNumber > (select count(*) from Question_Pool where QuestionType= 'TF' and (CourseID=@CourseID))
		begin
			print 'The number of TF question not enough in question pool'
			return;
		end
		if @MCqNmber > (select count(*) from Question_Pool where QuestionType= 'MCQ' and (CourseID=@CourseID))
		begin
			print 'The number of MSQ question not enough in question pool'
			return;
		end
		if @TextNumber > (select count(*) from Question_Pool where QuestionType= 'Text' and (CourseID=@CourseID))
		begin
			print 'The number of Text question not enough in question pool '
			return;
		end
	--check instructor tech this course 
	if exists( select 1 from Instructor_Courses where (InstructorID =@InstructorID) and (CourseID =@CourseID))
	begin

		begin transaction Exam
		declare @TF int, @MCQ int,@Text int ,
		@Exam int,@Total int,@MaxDegree int ,@ExamID int;

			-------------exam

			insert into Exam (ExamType,Degree,Duration,StartTime,EndTime,CourseID,InstructorID)
			values (@ExamType,@Total,@duration,@Start,@End,@CourseID,@InstructorID)
			set @Exam=@@ERROR
			------------------------------------------
			set @ExamID = (select top(1)ExamID from Exam where CourseID=@CourseID order by ExamID desc)
		    ----------------- TF Question
			insert into Instructor_Question_Exam(QuestionID,InstructorID,ExamID)
			select
				top(@TFNumber)QuestionID , @InstructorID, @ExamID 
			from Question_Pool
			where (QuestionType= 'TF') and (CourseID=@CourseID)
			order by newid();
			set @TF=@@ERROR				
			-----------------MCQ Question
			insert into Instructor_Question_Exam(QuestionID,InstructorID,ExamID)
			select
				top(@MCQNmber)QuestionID , @InstructorID, @ExamID 
			from Question_Pool
			where (QuestionType='MCQ') and (CourseID=@CourseID) 
			order by newid();
			set @MCQ=@@ERROR
			----------Text Question
			insert into Instructor_Question_Exam(QuestionID,InstructorID,ExamID)
			select
				top(@TextNumber)QuestionID , @InstructorID, @ExamID 
			from Question_Pool
			where (QuestionType= 'Text') and (CourseID=@CourseID)
			order by newid();
			set @Text=@@ERROR
			--------------CHK total degree
			set @Total= (select sum(QuestionDegree)
						  from Instructor_Question_Exam IQE join Question_Pool Q
						  on IQE.QuestionID = Q.QuestionID
						  where IQE.ExamID = @ExamID )
		
			set @MaxDegree  = (select MaxDegree from Course where CourseID=@CourseID)	
			
			if @Total <= @MaxDegree
			begin
			---- update the degree
			  update Exam
			  set Degree=@Total
			  where ExamID =@ExamID
			end
			else 
			begin
				print'Error : the total Exam degree grater than MaxDegree of course'
					rollback;
					return;
			end

			if (@TF =0 and @MCQ=0 and @Text=0 and @Exam=0 )
			begin
				commit;
				print 'Exam done'
			end 
			else
			begin
				print'Error: when Choise Exam:'
				    rollback;
			end

	end
	else
	begin
		print 'Error: The instructor has not taught this course.'
	end 
end;
go
----------------------Nada-------------------------

 ----------- Put all Student in  Course In Exam  
CREATE OR ALTER PROC EnrollStudentExam_SP 
    @ExamID INT
AS 
BEGIN 
    BEGIN TRY
        -- First, get the CourseID for the given ExamID
        DECLARE @CourseID INT;
        SELECT @CourseID = CourseID 
        FROM Exam 
        WHERE ExamID = @ExamID;

        -- Check if exam exists
        IF @CourseID IS NULL
        BEGIN
            SELECT 'Exam with ID ' + CAST(@ExamID AS VARCHAR(10)) + ' does not exist' AS ErrorMessage;
            RETURN;
        END

        -- Enroll all students from the same course into this exam
        INSERT INTO Student_Exam_Questions (StudentID, ExamID, QuestionID, StudentDegree)
        SELECT 
            S.StudentID,
            @ExamID,
            iqe.QuestionID,
            0 AS StudentDegree -- Initialize

        FROM Student S
        INNER JOIN Track_Course TC ON S.TrackID = TC.TrackID
        INNER JOIN Instructor_Question_Exam iqe ON iqe.ExamID = @ExamID
        INNER JOIN Question_Pool qp ON qp.QuestionID = iqe.QuestionID
        WHERE TC.CourseID = @CourseID
          AND NOT EXISTS (
              -- Prevent duplicate enrollments for same student+exam+question
              SELECT 1 
              FROM Student_Exam_Questions SEQ 
              WHERE SEQ.StudentID = S.StudentID 
                AND SEQ.ExamID = @ExamID
                AND SEQ.QuestionID = iqe.QuestionID
          );

        -- Return success message with row count
        SELECT 
            'Success' AS Status,
            --@@ROWCOUNT AS StudentsEnrolled,
            @ExamID AS ExamID;

    END TRY
    BEGIN CATCH
        SELECT 
            ERROR_MESSAGE() AS ErrorMessage, 
            ERROR_PROCEDURE() AS ErrorProcedure,
            ERROR_LINE() AS ErrorLine,
            ERROR_NUMBER() AS ErrorNumber;
    END CATCH
END;
GO
----------------------------------------------------------------------------------------------------

----------------------Abdallah-------------------------
-------------------- Get The Exam To stuent Can read it----------------------
CREATE or alter PROCEDURE Get_Exam_ForStudent_SP
    @ExamID INT
AS
BEGIN
    SELECT 
        iqe.ExamID,
        qp.QuestionID,
        qp.Questions,
        qp.QuestionType,
        qp.QuestionDegree,
        am.AnswerID,
        qo.QuestionOption
    FROM Instructor_Question_Exam iqe
    JOIN Question_Pool qp ON iqe.QuestionID = qp.QuestionID
    left JOIN Answer_MCQ am ON  qp.QuestionID = am.QuestionID
    left JOIN Question_Option qo ON am.AnswerID = qo.AnswerID
    WHERE iqe.ExamID = @ExamID
    ORDER BY  qp.QuestionType
END;
go
-----------------------------------------------------------------------------------------

--************************************************************
----------------------- table Type For Add The Question with the Student Answers 
/*
Used For Stored *Add_All_StudentAnswers*
*/
 ----------------------Abdallah-------------------------
CREATE TYPE StudentAnswersType AS TABLE
(
    QuestionID INT,
    Answer NVARCHAR(MAX)
);
--************************************************************
--************************************************************


 --------------------------------- Student Can Take and Answer The Exam
CREATE PROCEDURE Add_All_StudentAnswers
    @StudentID INT,
    @ExamID INT,
    @Answers StudentAnswersType READONLY
AS
BEGIN
    BEGIN TRY
        -- Check if The exam Exists in the Track and Course for the Student 
        IF NOT EXISTS (
            SELECT 1
            FROM Student S
            JOIN Track_Course TC ON S.TrackID = TC.TrackID
            JOIN Course C ON TC.CourseID = C.CourseID
            JOIN Exam E ON E.CourseID = C.CourseID
            WHERE E.ExamID = @ExamID AND S.StudentID = @StudentID
        )
        BEGIN
            RAISERROR('Exam ID is not correct for this student', 16, 1);
            RETURN;
        END;

        -- Insert All Answers IN one Time 
        INSERT INTO Student_Answer (StudentID, ExamID, QuestionID, StudentAnswer)
        SELECT @StudentID, @ExamID, A.QuestionID, A.Answer
        FROM @Answers A
        WHERE EXISTS (
            SELECT 1 FROM Instructor_Question_Exam iqe
            WHERE iqe.ExamID = @ExamID AND iqe.QuestionID = A.QuestionID
        );

    END TRY
    BEGIN CATCH
        SELECT ERROR_MESSAGE() AS ErrorMessage, ERROR_PROCEDURE() AS ErrorProcedure;
    END CATCH
END

GO


 ----------------------Abdallah-------------------------
---------------Auto Correct Answer
CREATE OR ALTER PROCEDURE Correct_Auto_SP
    @ExamID INT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CorrectedCount INT;
    -- Update MCQ & TF Questions
    UPDATE SEQ
    SET SEQ.StudentDegree = 
        CASE 
            WHEN CONVERT(NVARCHAR(MAX), SA.StudentAnswer) = CAST(A.AnswerID AS NVARCHAR(MAX))
                 AND A.IsCorrect = 1 
            THEN QP.QuestionDegree
            ELSE 0
        END
    FROM Student_Exam_Questions SEQ
    INNER JOIN Question_Pool QP 
        ON SEQ.QuestionID = QP.QuestionID
    INNER JOIN Student_Answer SA 
        ON SEQ.StudentID = SA.StudentID 
       AND SEQ.ExamID   = SA.ExamID 
       AND SEQ.QuestionID = SA.QuestionID
    LEFT JOIN Answer_MCQ A 
        ON QP.QuestionID = A.QuestionID
       AND CONVERT(NVARCHAR(MAX), SA.StudentAnswer) = CAST(A.AnswerID AS NVARCHAR(MAX))
    WHERE SEQ.ExamID = @ExamID
      AND QP.QuestionType IN ('MCQ', 'TF');
    -- Count corrected answers
    SELECT @CorrectedCount = COUNT(*)
    FROM Student_Exam_Questions
    WHERE ExamID = @ExamID
      AND StudentDegree IS NOT NULL;
    PRINT 'Exam ' + CAST(@ExamID AS NVARCHAR(10)) + ' corrected successfully. Total corrected answers: ' + CAST(@CorrectedCount AS NVARCHAR(10));
END;
GO
---------------------------------------------------------------------------------------
 ----------------------Abdallah-------------------------
----- Get All Question Didn't correct Yet
CREATE OR ALTER PROCEDURE Get_UncorrectedQuestions_SP
    @ExamID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        SEQ.StudentID,
        SEQ.QuestionID,
        QP.QuestionType,
        CONVERT(NVARCHAR(MAX), SA.StudentAnswer) AS StudentAnswer
    FROM Student_Exam_Questions SEQ
    INNER JOIN Question_Pool QP 
        ON SEQ.QuestionID = QP.QuestionID
    LEFT JOIN Student_Answer SA
        ON SEQ.StudentID = SA.StudentID 
       AND SEQ.ExamID = SA.ExamID
       AND SEQ.QuestionID = SA.QuestionID
    WHERE SEQ.ExamID = @ExamID
      AND SEQ.StudentDegree IS NULL; ---------- didn't correct yet
END;
GO
----------------------------------------------------------------------
----------------------Abdallah-------------------------
----------------- Get Student Text Answer Valiad or not (Instructor) 
CREATE OR ALTER PROCEDURE Review_Student_TextAnswers_SP
    @ExamID INT,
    @StudentID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        SA.StudentID,
        SA.ExamID,
        SA.QuestionID,
        QP.Questions,
        CONVERT(NVARCHAR(MAX), AT.TextAnswer) AS ModelAnswer,
        CONVERT(NVARCHAR(MAX), SA.StudentAnswer) AS StudentAnswer,
        CASE 
            WHEN CONVERT(NVARCHAR(MAX), SA.StudentAnswer) LIKE '%' + CONVERT(NVARCHAR(MAX), AT.TextAnswer) + '%' 
                 OR CHARINDEX(CONVERT(NVARCHAR(MAX), AT.TextAnswer), CONVERT(NVARCHAR(MAX), SA.StudentAnswer)) > 0
            THEN 'Valid'
            ELSE 'Not Valid'
        END AS MatchStatus,
        QuestionDegree
    FROM Student_Answer SA
    INNER JOIN Question_Pool QP
        ON SA.QuestionID = QP.QuestionID
    INNER JOIN Answer_text AT
        ON QP.QuestionID = AT.QuestionID
    WHERE SA.ExamID = @ExamID
      AND SA.StudentID = @StudentID
      AND QP.QuestionType = 'Text';
END;
GO
------------------------------------------------------------

------------------------------------------------------------
--************************************************************
----------------------- table Type For Add The Question with the mark 
/*
Used For Stored *Correct_AllTextAnswers*
*/
----------------------Abdallah-------------------------
CREATE TYPE StudentAnswersTable AS TABLE
(
    QuestionID INT,
    Mark INT
);
GO 
--************************************************************

----------------------Abdallah-------------------------
----------------- Correct Text Exam Manually 
CREATE OR ALTER PROCEDURE Correct_AllTextAnswers_SP
    @ExamID INT,
    @StudentID INT,
    @Answers StudentAnswersTable READONLY
AS
BEGIN
    SET NOCOUNT ON;
    -- check for the mark
    IF EXISTS (
        SELECT 1
        FROM @Answers A
        JOIN Question_Pool QP ON A.QuestionID = QP.QuestionID
        WHERE A.Mark > QP.QuestionDegree OR A.Mark < 0
    )
    BEGIN
        PRINT 'One or more marks are invalid (less than 0 or greater than max degree).';
        RETURN;
    END;
    -- Update The result 
    UPDATE SEQ
    SET StudentDegree = A.Mark
    FROM Student_Exam_Questions SEQ
    JOIN @Answers A ON SEQ.QuestionID = A.QuestionID
    WHERE SEQ.ExamID = @ExamID
      AND SEQ.StudentID = @StudentID;

    PRINT 'All text answers corrected successfully for StudentID ' + CAST(@StudentID AS NVARCHAR(10));
END;
GO
------------------------------------------------------------
----------------------Abdallah-------------------------

--------------------View----------------------------------------
------------- View display students with degree
CREATE VIEW StudentExamTotal_VW AS
SELECT 
    SEQ.StudentID,
    SEQ.ExamID,
    SUM(ISNULL(SEQ.StudentDegree,0)) AS TotalMark
FROM Student_Exam_Questions SEQ
GROUP BY SEQ.StudentID, SEQ.ExamID;
Go
------------------------------------------------------------