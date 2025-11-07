--											==================Omar Yehia==================
/*  Update_UserIN_OR_ST_SP  
Purpos: Updates user details (Name, Address, BirthDate, Email, Phone) 
by UserID in the Users table.*/

create or alter proc Update_UserIN_OR_ST_SP  
								@ID int,
								@name nvarchar(100),
								@address nvarchar(100),
								@birth date,
								@email varchar(100),
								@phone char(11)
as 
begin
  begin try
           -- Update user details based on the provided UserID
		update Users
		set
			Name=@name,
			address=@address,
			Email=@email,
			Phone=@phone
		where UserID = @ID
   end try
   begin catch
         -- Return error message and procedure name if an exception occurs
		select ERROR_MESSAGE() as ErrorMassage,ERROR_PROCEDURE() AS ErrorProcedure
   end catch
end;
-----------------------------------------------------
----------------------------
go
/* Update_Branch_SP
 Purpose : Updates branch details (ManagerID, BranchPhone) 
 by BranchID in the Branch table.*/
create or alter proc Update_Branch_Manager_SP
						@ID int,           -- Branch ID
						@ManagerID int   -- Manager ID

as
begin
	begin try
	   -- Update branch details based on the provided BranchID
		update Branch
		set ManagerID = @ManagerID
			where BranchID = @ID
	end try
	begin catch
	    -- Return error message and procedure name if an exception occurs
		select ERROR_MESSAGE() as ErrorMassage,ERROR_PROCEDURE() AS ErrorProcedure
	end catch
end;
----------------------------
---------------------------------------
go
/*Update_Track_Course_SP
Purpose : Adds or deletes a course from a track 
based on the @option parameter enter (add or delete).*/
create or alter proc Update_Track_Course_SP
						@TrackID int,   
						@CourseID int,
						@option varchar(10) --Action to perform ('add' or 'delete')

as
begin
     --- add course to track 
	if lower(@option) = 'add'
	begin 
		if exists(select 1 from Course where CourseID=@CourseID)
		begin
			insert into Track_Course(TrackID,CourseID)
			values(@TrackID,@CourseID)
		end
		else
		begin
			print 'The Course not exist please add course first'
		end

	end
	--delete course from track
	else if lower(@option) ='delete'
	begin
		delete from Track_Course 
		where CourseID =@CourseID
	end
	else
	begin
	      -- Invalid option
		print ' Please Enter option you need do in track (add,delete)course'
	end 
end;
go
-------------------------------------------
--------------------------------------
/*User-Defined Table Type(TrackTableType) Allows passing multiple Track records into procedures.*/
Create  Type TrackTableType AS TABLE
(
    TrackID int,
    DepartmentID int,
    Tname varchar(50) --- Track name
);
go
/*Update_Department_Track_SP :Purpose:Adds a new track to a specified department in the Track table */
create or alter proc Update_Department_Track_SP
							@TrackData TrackTableType readonly,
							@option varchar(10)
as 
begin
	begin try
	    --add new track to specify department
		if lower(@option) = 'add'
		begin
			 Insert Into Track (TrackID, DepartmentID, Tname)
			 Select TrackID, DepartmentID, Tname
		     From @TrackData;
		end
		else
		begin
		    ---delete track to specify department
			delete from Track
			where TrackID =(select TrackID from @TrackData)
		end

	end try
	begin catch
		select ERROR_MESSAGE() as ErrorMassage,ERROR_PROCEDURE() AS ErrorProcedure
	end catch
end;
go
-------------------------

-----------------------------
/* Update_Course_SP 
Purpose:update course name and description and course degree*/
create or alter proc Update_Course_SP
						@ID int,
						@Name varchar(50),
						@Description text ,
						@Max int, --max course degree
						@Min int  --in course degree
as 
begin
	begin try
		update Course
		set CourseName =@Name,
			Coursedescription = @Description,
			MaxDegree =@Max,
			MINDegree =@Min
		where CourseID =@ID
	end try
	begin catch
		select ERROR_MESSAGE() as ErrorMassage,ERROR_PROCEDURE() AS ErrorProcedure
	end catch
end;
---------------------------------------
----------------------------------------
go 
/*change the time of exam and duration */
create proc Update_ExamTime_SP
						@ID int, -- Exam ID
						@duration int,
						@start datetime,
						@end datetime
as 
begin
	begin try 
		update Exam
		set Duration=@duration,StartTime = @start, EndTime=@end
		where ExamID=@ID
	end try
	begin catch
		select ERROR_MESSAGE() as ErrorMassage,ERROR_PROCEDURE() AS ErrorProcedure
	end catch
end;
go
--											==================Nada Ehab==================
----------------------------------------------

---------------------------Insert Sp-----------------------------
-----------------------------------------------------------------
-------------------------------------------------
--1- Insert Student Sp : 
-------------------------------------------------------
     -- => Create type table to user 
	 -- => Create type table to student
	 -- => use these types table in SP to insert into
	 -- => create Sp : Insert_Students_SP 
	 -- => this sp take two parms UserTableType and StudentTableType
--table Type For Insert Student
------------------------------------------------------
-- Table type for Users data
------------------------------------------------------
Create  Type UserTableType AS TABLE
(
    Name nvarchar(100),
    Address nvarchar(100),
    BirthDate date,
    Email varchar(100),
    Gender char(1),
    Phone char(11),
    UserType char(1),
    Password varchar(20)
);
GO
--------------------------------------------
-- Table type for Student specific data
---------------------------------------------
Create Type StudentTableType AS TABLE
(
    StudentID int,
    TrackID int,
    IntakeID int
);
GO
-----------------------------------------------
---Insert Student Sp : 
-------------------------------------------
Create or Alter proc Insert_Students_SP  ---> True
@UsersData UserTableType readonly, 
@StudentsData StudentTableType readonly 
as 
Begin 
    Begin try 
        -- Insert users first (filter for students only)
        Insert Into Users (Name, Address, BirthDate, Email, Gender, Phone, UserType, Password)
        Select Name, Address, BirthDate, Email, Gender, Phone, UserType, Password 
        From @UsersData 
        Where UserType = 'S';
        
        -- Insert students
        Declare @StudentId int;
				set @StudentId = (select  top(1)  UserID from Users order by UserID desc)

        --select top(1) @StudentId = UserID from Users order by UserID desc; -- Use DESC to get the latest inserted user
        
        Insert Into Student (StudentID, TrackID, IntakeID)
        Select @StudentId, TrackID, IntakeID 
        From @StudentsData;
        
        Print 'Students inserted successfully';
    End Try
    Begin Catch
        select ERROR_MESSAGE() as ErrorMessage, ERROR_PROCEDURE() AS ErrorProcedure
    End Catch
End;
GO
------------------------------------------------------------------------------

--********************************************************************************
--********************************************************************************
--------------------------------------------------------------------------------
--2- Insert Instructors Sp : 
-------------------------------------------------------
     -- => Create type table to user 
	 -- => Create type table to Instractor
	 -- => use these types table in SP to insert into
	 -- => create Sp : Insert_Instructors_SP 
	 -- => this sp take two parms UserTableType and InstructorTableType
------------------------------------------------------------------
-- Table type for Instructor specific data
------------------------------------------------------------------
Create Type InstructorTableType AS TABLE
(
    InstructorID int,
    DepartmentID int
);
GO
------------------------------------------------------------
-- Stored Procedure to Insert Instructors  ==> true
-----------------------------------
Create or Alter Proc Insert_Instructors_SP
    @UsersData UserTableType readonly,
    @InstructorsData InstructorTableType readonly
as
Begin
    Begin try
        -- Insert users first (filter for instructors only)
        Insert Into Users ( Name, Address, BirthDate, Email, Gender, Phone, UserType, Password)
        Select   Name, Address, BirthDate, Email, Gender, Phone, UserType, Password
        From @UsersData
        Where UserType = 'I';
        
        -- Insert instructors
		Declare @InstactortId int;
		set @InstactortId = (select  top(1)  UserID from Users order by UserID desc)
        Insert Into Instructor (InstructorID, DepartmentID)
        Select @InstactortId, DepartmentID
        From @InstructorsData;
        
        Print 'Instructors inserted successfully';
    End Try
    Begin Catch
        select ERROR_MESSAGE() as ErrorMessage, ERROR_PROCEDURE() AS ErrorProcedure
    End Catch
End;
GO
------------------------------------------------------------------------------

--------------------------------------------------------------------
--3- Insert Branch Sp
------------------------------------------------------------------
	 -- => Create type table to Branch
	 -- => use this type table in SP to insert into
	 -- => create Sp : Insert_Branches_SP 
	 -- => this sp take one parm BranchTableType
----------------------------------------------------------------------
-- Table type for Branch data
----------------------------------------------------------------------
Create Type BranchTableType AS TABLE
(
    BranchID int,
    ManagerID int,
    BranchName nvarchar(100),
    BranchAddress nvarchar(100),
    BranchPhone char(11)
);
GO
---------------------------------------------------
-- Stored Procedure to insert Branches
--------------------------------------
Create or Alter proc Insert_Branches_SP
    @BranchData BranchTableType readonly
as
Begin
    Begin try
        -- Insert into Branch table
        Insert Into Branch (BranchID, ManagerID, BranchName, BranchAddress, BranchPhone)
        Select BranchID, ManagerID, BranchName, BranchAddress, BranchPhone
        From @BranchData;
        
        Print 'Branches inserted successfully';
    End Try
    Begin Catch
        select ERROR_MESSAGE() as ErrorMessage, ERROR_PROCEDURE() AS ErrorProcedure
    End Catch
End;
GO
------------------------------------------------

--*************************************************************--*************************************************************
--*************************************************************--*************************************************************
-------------------------------------------------------------------
--4- Insert Intake Sp
-----------------------------------------------------------------
	 -- => Create type table to Intake
	 -- => use this type table in SP to insert into
	 -- => create Sp : Insert_Intake_sp 
	 -- => this sp take one parm IntakeTableType
------------------------------------------------------------
-- Table type for Intake data
--------------------------------------------------------------
Create Type IntakeTableType AS TABLE
(
    IntakeID int,
    IntakeName varchar(50),
    StartDate date,
    EndDate date
);
GO
-------------------------------------------------
-- Stored Procedure to insert Intake
--------------------------------------
Create or Alter Proc Insert_Intake_sp 
   @IntakeData IntakeTableType readonly
   as 
   begin 
   Begin Try 
   Insert Into Intake(IntakeID ,IntakeName ,StartDate ,EndDate)
   Select IntakeID ,IntakeName ,StartDate ,EndDate
   From @IntakeData;
           Print 'Intake inserted successfully';

   End Try 
     Begin Catch
        select ERROR_MESSAGE() as ErrorMessage, ERROR_PROCEDURE() AS ErrorProcedure
    End Catch
   end; 
   Go
------------------------------------------------

--*************************************************************--*************************************************************
--*************************************************************--*************************************************************
-------------------------------------------------------------
--5- Insert Track Sp
------------------------------------------
     -- => Create type table to Track
	 -- => use this type table in SP to insert into
	 -- => create Sp : Insert_Tracks_SP 
	 -- => this sp take one parm TrackTableType
----------------------------------------------------------
-- Table type for Track data
-----------------------------------------------------
Create Type TrackTableType AS TABLE
(
    TrackID int,
    DepartmentID int,
    Tname varchar(50)
);
GO
----------------------------------------------
-- Stored Procedure to insert Tracks
--------------------------------------
Create or Alter proc Insert_Tracks_SP
    @TrackData TrackTableType readonly
as
Begin
    Begin try
        -- Insert into Track table
        Insert Into Track (TrackID, DepartmentID, Tname)
        Select TrackID, DepartmentID, Tname
        From @TrackData;
        
        Print 'Tracks inserted successfully';
    End Try
    Begin Catch
        select ERROR_MESSAGE() as ErrorMessage, ERROR_PROCEDURE() AS ErrorProcedure
    End Catch
End;
GO
--------------------------------------------------

go
--*************************************************************--*************************************************************
--*************************************************************--*************************************************************
--------------------------------------------------------------
--6- Insert MCQ - TF Questions in Question pool 
------------------------------------------
     -- => Create type table to QuestionPoolTableType
     -- => Create type table to OptionsMCQTableType
     -- => Create type table to AnswerMCQTableType
     -- => declare varible to @MCQ_QuestionID  
	 -- => use these types table in SP to insert into
	 -- => create Sp : Insert_MCQ_Q_pool_SP 
	 -- => this sp take four parms QuestionPoolTableType , OptionsMCQTableType , AnswerMCQTableType , MCQ_QuestionID
------------------------------------------------------
-- Stored Procedure to Insert MCQ Questions
----------------------------------------

-- Table type for Question Pool data
Create Type QuestionPoolTableType AS TABLE
(
    QuestionID int,
    CourseID int,
    QuestionDegree int,
    QuestionType varchar(4),
    Questions text
);
GO
-- Table type for MCQ Options
Create Type OptionsMCQTableType AS TABLE
(
	AnswerID int,
    QuestionOption char(50)
);
GO

-- Table type for MCQ Answers
Create Type AnswerMCQTableType AS TABLE
(
    QuestionID int,
	AnswerID int,
    IsCorrect bit
);
GO

Create or Alter Proc Insert_MCQ_Q_pool_SP
   @questionPoolData QuestionPoolTableType readonly,
   @QuestionOptionsData OptionsMCQTableType readonly,
   @MCQAnswerData AnswerMCQTableType readonly,
   @MCQ_QuestionID int
AS
Begin
    Begin Try
        -- Insert into Question Pool (MCQ Questions)
        Insert Into Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
        Select QuestionID, CourseID, QuestionDegree, QuestionType, Questions 
        From @questionPoolData
        Where QuestionType IN ('MCQ', 'TF');

        -- Insert MCQ questions and answers if provided
        IF @MCQ_QuestionID IS NOT NULL
           AND EXISTS (Select 1 From @QuestionOptionsData)
           AND EXISTS (Select 1 From @MCQAnswerData)
        Begin
            Insert Into Question_MCQ (QuestionID)
            Values (@MCQ_QuestionID);
           
            Insert Into Question_Option (AnswerID, QuestionOption)
            Select AnswerID, QuestionOption
            From @QuestionOptionsData;

            Insert Into Answer_MCQ (QuestionID, AnswerID, IsCorrect)
            Select QuestionID, AnswerID, IsCorrect
            From @MCQAnswerData;
            
            Print 'MCQ Questions inserted';
        End
    End Try
    Begin Catch
         select ERROR_MESSAGE() as ErrorMessage, ERROR_PROCEDURE() AS ErrorProcedure
    End Catch
End;
GO
---------------------------------------------------------------
----------------------------------------------------------------
--7- Insert Text questions in Question pool 
     -- => Create type table to QuestionPoolTableType
     -- => Create type table to AnswerTextTableType 
	 -- => use these types table in SP to insert into
	 -- => create Sp : Insert_Text_Q_pool_SP 
	 -- => this sp take four parms QuestionPoolTableType , AnswerTextTableType 
-------------------------------------------
-- Stored Procedure to Insert Text Questions
----------------------------------------

-- Table type for Text Answers
Create Type AnswerTextTableType AS TABLE
(
    QuestionID int,
    TextAnswer text
);
GO

Create or Alter Proc Insert_Text_Q_pool_SP
   @questionPoolData QuestionPoolTableType readonly,
   @TextAnswerData AnswerTextTableType readonly
AS
Begin
    Begin Try
        -- Insert into Question Pool (Text Questions)
        Insert Into Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
        Select QuestionID, CourseID, QuestionDegree, QuestionType, Questions 
        From @questionPoolData
        Where QuestionType = 'Text';

        -- Insert Text answers if provided
        IF  EXISTS (Select 1 From @TextAnswerData)
        Begin
           

            Insert Into Answer_text (QuestionID, TextAnswer)
            Select QuestionID ,TextAnswer 
            From @TextAnswerData;
            
            Print 'Text Questions inserted';
        End
    End Try
    Begin Catch
         select ERROR_MESSAGE() as ErrorMessage, ERROR_PROCEDURE() AS ErrorProcedure
    End Catch
End;
GO

/*
***********************************************************************************
***********************************************************************************
***********************************************************************************
***********************************************************************************
*/
----------------Display----------------------- 
--											==================Omar Yehia==================

-------------------------
/* GetQuestionCorrectAnswer ==> Get Question with its Correct Answer */
create or alter proc QuestionCorrectAnswer_SP @QID int --Question ID
as 
begin
	begin try

		select QP.Questions as'Question', AMCQ.IsCorrect  as 'Ansswer Question'
		from Question_Pool QP join Answer_MCQ AMCQ
		on AMCQ.QuestionID=QP.QuestionID
		where QP.QuestionID =@QID
	end try
	begin catch
		select ERROR_MESSAGE() as ErrorMassage,ERROR_PROCEDURE() AS ErrorProcedure
	end catch
end;

-----------------------------------------------
/*GetStudentAnswer ==> Display Exam questions With Student Answer  */
go


create or alter proc GetStudentAnswer_SP @StudentID int ,@ExamID int
as
begin
	begin try 
		select QP.Questions as'Question' ,SA.StudentAnswer as'Student Answer'
		from Instructor_Question_Exam IQE join Question_Pool QP
		on IQE.QuestionID =QP.QuestionID 
		join Student_Answer SA
		on SA.ExamID=IQE.ExamID
		where SA.StudentID=@StudentID and IQE.ExamID =@ExamID 
	end try
	begin catch
	end catch
end

-------------------------------------------------
--											==================Nada Ehab==================
--1- GetCoursesByTrack_SP ==> Get All Courses in specified track
-----------------------------------------------------------------
-- Stored Procedure to Get All Courses in specified track
------------------------------------------------------------
Create or Alter proc GetCoursesByTrack_SP
                     @TrackID int
as
Begin
    Begin try
        Select 
            c.CourseID,
            c.CourseName,
            c.Coursedescription,
            c.MaxDegree,
            c.MINDegree,
            t.TrackID,
            t.Tname as TrackName
        From Course c
        Inner Join Track_Course tc on c.CourseID = tc.CourseID
        Inner Join Track t on tc.TrackID = t.TrackID
        Where t.TrackID = @TrackID
        Order By c.CourseName;
        
        
    End Try
    Begin Catch
        select ERROR_MESSAGE() as ErrorMessage, ERROR_PROCEDURE() AS ErrorProcedure
    End Catch
End;
GO
----------------------------------------------------------------------
------------------------------------------------------------------------------------
---2- GetInstactorCourses_sp
------------------------------------------------------------------------------
-- Stored Procedure to Get all courses that Instactor tought
-------------------------------------------------
create or alter Proc GetInstactorCourses_sp 
  @instractorID int 

  as 
  begin 
    Begin try
       Select CourseName 
	   from Instructor_Courses IC, Course C
	   where IC.CourseID = C.CourseID 
	   and IC.InstructorID = @instractorID

  End Try
    Begin Catch
        select ERROR_MESSAGE() as ErrorMessage, ERROR_PROCEDURE() AS ErrorProcedure
    End Catch
  end 
  Go
  ------------------------------------------------------------------------------------------

--3- Getstudentcountbytrack_SP ===> Get All Students in All Tracks
---------------------------------------------------------------------------
-- Stored Procedure to Get All Students in All Tracks
--------------------------------------------------------
Create or Alter proc getstudentcountbytrack_SP
as
Begin
    Begin try
        Select Tname , count(s.StudentID) as totalstudents
        From Track t
		left join Student s on t.TrackID = s.TrackID
        group by t.Tname
        
    End Try
    Begin Catch
        select ERROR_MESSAGE() as ErrorMessage, ERROR_PROCEDURE() AS ErrorProcedure
    End Catch
End;
GO
-----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------
--4- GetAllStudentIntake_sp ==> Get All Student Data in Intake  ###Donee
-----------------------------------------------------------------------------------
Create or Alter Proc GetAllStudentIntake 
       @IntakeId int 
as 
begin 
    Begin try
        Select Name , address , BirthDate , Email , Gender , Phone , TrackID , IntakeID
        From Users U , Student S
		Where S.StudentID = U.UserID
        and S.IntakeID = @IntakeId
    End Try


   Begin Catch
        select ERROR_MESSAGE() as ErrorMessage, ERROR_PROCEDURE() AS ErrorProcedure
    End Catch
end
GO
---------------------------------------------------------------------------------------------
--5- Getstudentfullreport_SP => Get Student Report
----------------------------------------------------------
-- Stored Procedure to Get Student Report
------------------------------------------------------------
Create or Alter proc getstudentfullreport_SP
                     @StudentID int
as
Begin
    Begin try
        Select 
                u.Name,
                u.Email,
                u.Phone,
                c.CourseName ,
                SUM(ISNULL(SEQ.StudentDegree,0)) AS TotalMark 
        From Student s
		join Users u on s.StudentID = u.UserID
        left join Student_Exam_Questions seq on s.StudentID = seq.StudentID
        left join Exam e on seq.ExamID = e.ExamID
        left join course c on c.CourseID = e.CourseID
        where s.StudentID = @StudentID
        Group BY u.Name,
                u.Email,
                u.Phone,
                c.CourseName 
    End Try
    Begin Catch
        select ERROR_MESSAGE() as ErrorMessage, ERROR_PROCEDURE() AS ErrorProcedure
    End Catch
End;
GO
-----------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------
--6- GetAllStudentInCourse_Sp ==> Get All Students In Course ######Done
------------------------------------------------------------------------------
-- Stored Procedure to Get all Students in course
-------------------------------------------------
Create or Alter Proc GetAllStudentInCourse_Sp 
   @CourseID int 

   as 
   begin 
    Begin try
       Select U.Name , U.address , U.BirthDate , U.Email , U.Gender , U.Phone , S.TrackID , S.IntakeID
	    From Users U , Student S , Track_Course TC, Course c
		Where S.StudentID = U.UserID
        and TC.CourseID = @CourseID
  End Try
    Begin Catch
        select ERROR_MESSAGE() as ErrorMessage, ERROR_PROCEDURE() AS ErrorProcedure
    End Catch
   end 
GO
--------------------------------------------------------------------------------------------------------