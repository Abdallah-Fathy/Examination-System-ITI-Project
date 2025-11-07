-----------------
-- Exectution file 
-----------------------------------Omar yahia 
/*  Update_UserIN_OR_ST_SP  
Purpos: Updates user details (Name, Address, BirthDate, Email, Phone) 
by UserID in the Users table.*/
EXEC Update_UserIN_OR_ST_SP  
     @ID = 30,  
     @name = 'omar yahia',  
     @address = 'minia',  
     @birth = '2000-08-15',  
     @email = 'omaryahia@email.com',  
     @phone = '01552254796';

GO
select * from Users where UserID =30
GO
-----------------------------------------------------
/* Update_Branch_SP
 Purpose : Updates branch details (ManagerID, BranchPhone) 
 by BranchID in the Branch table.*/
 exec Update_Branch_Manager_SP  @ID =2 ,@ManagerID =3
 select * from Branch

---------------------------------------------------
/*Update_Track_Course_SP
Purpose : Adds or deletes a course from a track 
based on the @option parameter enter (add or delete).*/
Update_Track_Course_SP @TrackID =1,@CourseID=2 ,@option='add'
select * from Track_Course where TrackID =1
exec Update_Track_Course_SP @TrackID =1,@CourseID=2 ,@option='delete'
select * from Track_Course where TrackID =1

----------------------------------------------------------
/*User-Defined Table Type(TrackTableType) Allows passing multiple 
Track records into procedures.*/
/*Update_Department_Track_SP :Purpose:Adds a new track to a specified
department in the Track table */
select * from Track
DECLARE @temp TrackTableType;
INSERT INTO @temp (TrackID, DepartmentID, Tname)
VALUES (21, 1, 'Cyber Security')
exec Update_Department_Track_SP @TrackData =@temp ,@option ='add'
--exec Update_Department_Track_SP @TrackData =@temp ,@option ='delete'
------------------------------------------------------------
/* Update_Course_SP 
Purpose:update course name and description and course degree*/

EXEC Update_Course_SP
    @ID = 200,
    @Name = 'Advanced Database',
    @Description = 'Covers SQL Server, Indexing, Optimization',
    @Max = 120,
    @Min = 60;
select * from Course where CourseID=200
----------------------------------------------------------------
/*change the time of exam and duration */
EXEC Update_ExamTime_SP 
    @ID = 1,
    @duration = 120,
    @start = '2025-08-21 10:00:00',
    @end = '2025-08-21 12:00:00';
----------------------------------------------------------------------

 --------------------------------------------------------------
            ------------------------Nada----------------------
            .
-- Execute : Insert Instructors SP ==> true
---------------------------------
DECLARE @InstructorsUserData UserTableType
INSERT INTO @InstructorsUserData ( Name, Address, BirthDate, Email, Gender, Phone, UserType, Password)
VALUES 
    ( 'Eng. Ahmejojijijijii111', '321 University Ave, Cairo', '1975-12-05', 'a.5151h.an@university.edu', 'M', '01251555115', 'I', 'instructor123')
    
-- Declare and populate the InstructorTableType variable (assuming you have this type)
DECLARE @InstructorsData InstructorTableType;
INSERT INTO @InstructorsData (DepartmentID)
VALUES 
    (4)

-- Execute the stored procedure
EXEC Insert_Instructors_SP 
    @UsersData = @InstructorsUserData, 
    @InstructorsData = @InstructorsData
GO

---------------------------------------------------------------------------------------
-- Execute : Insert Branch SP
--------------------------------------
Declare @newBranch BranchTableType

Insert Into @newBranch 
Values (11,10,'BeniSuef','Creativa,Technology Village,BeniSuef,Egypt','01002336057')

Exec Insert_Branches_SP @BranchData = @newBranch
Go
------------------------------------------------------------------------------------------
-- Execute : Insert Intake SP
--------------------------------------
Declare @newIntake IntakeTableType

Insert Into @newIntake 
Values (7, 'Intake Oct 2024', '2025-10-01', '2026-02-10')

Exec Insert_Intake_sp @IntakeData = @newIntake
Go
------------------------------------------------------------------------------------------
-- Execute : Insert Tracks SP
----------------------------------------
Select * From Track
Declare @newTrack TrackTableType

Insert Into @newTrack
Values (21,1,'Front End')
-----------------------------------------------------------------------------------------
                        -- ===========================================
                        -- Example Execution of Insert_MCQ_Q_pool_SP
                        -- Inserts:
                        --   MCQs (301–310) with options & answers
                        --   TFs  (311–320) with True/False answers
                        -- AnswerID for MCQs starts from 161
                        -- ===========================================

-- Declare table variables based on your defined types
DECLARE @QuestionPoolData QuestionPoolTableType;
DECLARE @QuestionOptionsData OptionsMCQTableType;
DECLARE @MCQAnswerData AnswerMCQTableType;

-- ===========================================
-- Step 1: Insert Questions into @QuestionPoolData
-- ===========================================
INSERT INTO @QuestionPoolData (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
-- MCQs
(301,1,2,'MCQ','Which CSS property is used to make text bold?'),
(302,1,2,'MCQ','Which HTML attribute is used to provide alternative text for images?'),
(303,1,2,'MCQ','What is the correct HTML element to define emphasized text?'),
(304,1,2,'MCQ','Which CSS property is used to set spacing between lines of text?'),
(305,1,2,'MCQ','Which HTML element is used to define important text?'),
(306,1,2,'MCQ','Which CSS property is used to set the style of a border?'),
(307,1,2,'MCQ','Which tag is used to create a numbered list in HTML?'),
(308,1,2,'MCQ','Which CSS property changes the font family of text?'),
(309,1,2,'MCQ','Which HTML tag is used to define a footer for a document or section?'),
(310,1,2,'MCQ','Which CSS property is used to align text horizontally?'),

-- TFs
(311,1,2,'TF','Inline CSS is written inside the <style> tag.'),
(312,1,2,'TF','The <span> tag is used to apply inline styles.'),
(313,1,2,'TF','The <thead> element is used to group table header content.'),
(314,1,2,'TF','The <section> tag defines a thematic grouping of content.'),
(315,1,2,'TF','CSS margin defines the space inside an element.'),
(316,1,2,'TF','The <ol> tag is used to create an ordered list.'),
(317,1,2,'TF','CSS allows you to apply multiple classes to one element.'),
(318,1,2,'TF','The <form> tag is used to create an image gallery.'),
(319,1,2,'TF','The <nav> element is used to define navigation links.'),
(320,1,2,'TF','The <tbody> element is used inside a table.');

-- ===========================================
-- Step 2: Insert Options for MCQs (AnswerID 161–200)
-- ===========================================
INSERT INTO @QuestionOptionsData (AnswerID, QuestionOption)
VALUES
-- Q301
(161,'font-weight'), (162,'font-style'), (163,'text-decoration'), (164,'font-family'),
-- Q302
(165,'title'), (166,'alt'), (167,'src'), (168,'href'),
-- Q303
(169,'<i>'), (170,'<em>'), (171,'<strong>'), (172,'<mark>'),
-- Q304
(173,'letter-spacing'), (174,'word-spacing'), (175,'line-height'), (176,'text-spacing'),
-- Q305
(177,'<b>'), (178,'<important>'), (179,'<strong>'), (180,'<mark>'),
-- Q306
(181,'border-color'), (182,'border-width'), (183,'border-style'), (184,'border-type'),
-- Q307
(185,'<ul>'), (186,'<ol>'), (187,'<li>'), (188,'<list>'),
-- Q308
(189,'font-style'), (190,'font-family'), (191,'font-weight'), (192,'text-style'),
-- Q309
(193,'<section>'), (194,'<footer>'), (195,'<bottom>'), (196,'<aside>'),
-- Q310
(197,'text-align'), (198,'align'), (199,'justify-content'), (200,'float');

-- ===========================================
-- Step 3: Insert Correct Answers for MCQs
-- ===========================================
INSERT INTO @MCQAnswerData (QuestionID, AnswerID, IsCorrect)
VALUES
-- Q301
(301,161,1),(301,162,0),(301,163,0),(301,164,0),
-- Q302
(302,165,0),(302,166,1),(302,167,0),(302,168,0),
-- Q303
(303,169,0),(303,170,1),(303,171,0),(303,172,0),
-- Q304
(304,173,0),(304,174,0),(304,175,1),(304,176,0),
-- Q305
(305,177,0),(305,178,0),(305,179,1),(305,180,0),
-- Q306
(306,181,0),(306,182,0),(306,183,1),(306,184,0),
-- Q307
(307,185,0),(307,186,1),(307,187,0),(307,188,0),
-- Q308
(308,189,0),(308,190,1),(308,191,0),(308,192,0),
-- Q309
(309,193,0),(309,194,1),(309,195,0),(309,196,0),
-- Q310
(310,197,1),(310,198,0),(310,199,0),(310,200,0);

-- ===========================================
-- Step 4: Execute SP for each MCQ

-- ===========================================
-- Step 5: Insert TF Answers directly into Answer_MCQ
-- (AnswerID = 1 if TRUE, 0 if FALSE)
-- ===========================================
INSERT INTO Answer_MCQ (QuestionID, AnswerID, IsCorrect)
VALUES
(311,1,1),   -- True
(311,0,0),   -- True
(312,1,1),   -- True
(312,0,0),   -- True
(313,1,1),   -- True
(313,0,0),   -- True
(314,1,1),   -- True
(314,0,0),   -- True
(315,1,0),   -- False
(315,0,1),   -- False
(316,1,1),   -- True
(316,0,0),   -- True
(317,1,1),   -- True
(317,0,0),   -- True
(318,1,0),   -- False
(318,0,1),   -- False
(319,1,1),   -- True
(319,0,0),   -- True
(320,1,1),   -- True
(320,0,0);   -- True

-- ===========================================
DECLARE @qid INT = 301;
WHILE @qid <= 320
BEGIN
    EXEC Insert_MCQ_Q_pool_SP
         @QuestionPoolData,
         @QuestionOptionsData,
         @MCQAnswerData,
         @MCQ_QuestionID = @qid;

    SET @qid += 1;
END

--===============================================INSERTION TEXT=================================================
-- ============================================
-- Step 1: Declare table variables for input
-- ============================================
DECLARE @questionPoolData QuestionPoolTableType;
DECLARE @TextAnswerData AnswerTextTableType;

-- ============================================
-- Step 2: Insert 10 text questions (IDs start from 321)
-- ============================================
INSERT INTO @questionPoolData (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(321, 1, 5, 'Text', 'Explain the difference between GET and POST methods in HTTP.'),
(322, 1, 5, 'Text', 'Describe the purpose of the alt attribute in images for accessibility.'),
(323, 1, 5, 'Text', 'Explain how CSS specificity works when multiple rules target the same element.'),
(324, 1, 5, 'Text', 'Describe the difference between absolute, relative, and fixed positioning in CSS.'),
(325, 1, 5, 'Text', 'Explain the role of the DOCTYPE declaration in HTML documents.'),
(326, 1, 5, 'Text', 'Describe how to create and apply a CSS class to multiple elements.'),
(327, 1, 5, 'Text', 'Explain the difference between inline, internal, and external CSS.'),
(328, 1, 5, 'Text', 'Describe the difference between synchronous and asynchronous JavaScript.'),
(329, 1, 5, 'Text', 'Explain how CSS flexbox helps in building responsive layouts.'),
(330, 1, 5, 'Text', 'Describe the purpose of semantic HTML tags like <header>, <footer>, <article>.');

-- ============================================
-- Step 3: Insert sample answers (you can adjust later)
-- ============================================
INSERT INTO @TextAnswerData (QuestionID, TextAnswer)
VALUES
(321, 'GET is used to request data, POST is used to send data securely.'),
(322, 'The alt attribute provides alternative text for screen readers and when images fail to load.'),
(323, 'Specificity is calculated based on inline styles, IDs, classes, and element selectors.'),
(324, 'Absolute is relative to the nearest positioned ancestor, relative is relative to itself, fixed is relative to viewport.'),
(325, 'DOCTYPE tells the browser which version of HTML to use for rendering.'),
(326, 'A CSS class is defined with a dot selector and can be applied to multiple elements.'),
(327, 'Inline CSS is applied inside elements, internal CSS is in <style>, external CSS is in a separate .css file.'),
(328, 'Synchronous JS blocks execution, asynchronous allows non-blocking operations.'),
(329, 'Flexbox provides flexible box layout for aligning and distributing space among items.'),
(330, 'Semantic tags provide meaning and improve accessibility and SEO.');

-- ============================================
-- Step 4: Execute the procedure
-- ============================================
EXEC Insert_Text_Q_pool_SP 
    @questionPoolData = @questionPoolData,
    @TextAnswerData = @TextAnswerData;

/*
***************************************************************************************
***************************************************************************************
*/
----------------------------------------------
---------------Display-------------------------
/* GetQuestionCorrectAnswer ==> Get Question with its Correct Answer */
exec QuestionCorrectAnswer_SP @QID =11
----------------------------------
/*GetStudentAnswer ==> Display Exam questions With Student Answer  */
 exec GetStudentAnswer_SP @StudentID=25 ,@ExamID=1

-- Execute : GetCoursesByTrack_SP 
------------------------------------------
Exec GetCoursesByTrack_SP 1
GO

----------------------------------------------
-- Execute : GetInstactorCourses_sp 
------------------------------------------
exec GetInstactorCourses_sp 11
---------------------------------------------------------------------------------

---------------------------------------------
-- Execute : getstudentcountbytrack_SP 
----------------------------------------
exec getstudentcountbytrack_SP

----------------------------------
-- Execute : GetAllStudentIntake 
----------------------------------
exec GetAllStudentIntake 6
---------------------------------------------------
-- Execute : getstudentfullreport_SP
--------------------------------------------------------------
exec getstudentfullreport_SP 31
Go

--------------------------------------------
-- Execute : GetAllStudentInCourse_Sp 
------------------------------------------
exec GetAllStudentInCourse_Sp 11
-------------------------------------------------------------------------------------