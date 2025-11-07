
create database Examination_System
on PRIMARY
(
	name = Examination_System,
	filename ='D:\ITI\Examination_System.mdf',
	size =200 MB,
	maxsize=5 GB,
	filegrowth= 100 MB
),
filegroup FG_Question_Exam
(
	name = Examination_System_QE,
	filename ='D:\ITI\Examination_System_QE.ndf',
	size =200 MB,
	maxsize=5 GB,
	filegrowth= 100 MB
);
go
------------------------------------
use Examination_System;
go

create table Users
(
	UserID int identity(1,1),
	Name nvarchar(100) not null,
	address nvarchar(100) not null,
	BirthDate date not null,
	Email varchar(100) ,
	Gender  char(1),
	Phone char(11),
	UserType char(1) not null,
	Password varchar(20) ,
	constraint PK_Users_id primary key (UserID),
	constraint CHK_gender_Users check (gender in ('M','F')),
	constraint CHK_phone_Users check((len(phone)=11) and (left(phone,1)='0')),
	constraint CHK_Users_type_users check(UserType in('S','I','M')),
	constraint CHK_Password_Users check(len(Password)>=8),
	constraint UNIQUE_phone_Email_users  unique(phone,Email,Password)

);
go
create table Manager
(
	ManagerID int
	constraint PK_Manager primary key(ManagerID)
	constraint FK_Manager_users foreign key (ManagerID) references Users(UserID)
);
go
create table Branch
(
	BranchID int,
	ManagerID int ,
	BranchName nvarchar(100) not null,
	BranchAddress nvarchar(100),
	BranchPhone char(11),
	constraint CHK_phone_Branch check((len(BranchPhone)=11) and (left(BranchPhone,1)='0')),
	constraint PK_Branch primary key(BranchID),
	constraint UNIQUE_phone_Branch  unique(BranchPhone),
	constraint FK_Branch_Manager foreign key (ManagerID)
	references Manager(ManagerID) on update cascade

);
go
create table Department
(
	DepartmentID int,
	DepartmentName varchar(50) not null,
	constraint PK_Department primary key(DepartmentID),
	constraint UNIQUE_Department_name unique(DepartmentName)

);
go
create table Track
(
	TrackID int ,
	DepartmentID int,
	Tname varchar(50) not null,
	constraint PK_Track primary key(TrackID),
	constraint FK_Track_Department foreign key (DepartmentID)
	references Department(DepartmentID) on update cascade
);
go
create table Instructor
(
	InstructorID int,
	DepartmentID int,
	constraint PK_Instructor primary key(InstructorID),
	constraint FK_Instructor_Users foreign key (InstructorID)
	references Users (UserID) ,
	constraint FK_Instructor_Department foreign key (DepartmentID)
	references Department(DepartmentID) on update cascade


);
go
create table Intake
(
	IntakeID int,
	IntakeName varchar(50) not null,
	StartDate date,
	EndDate date,
	constraint PK_Intake primary key(IntakeID),

);
go 
create table Student
(
	StudentID int ,
	TrackID int ,
	IntakeID int,
	constraint PK_Student primary key(StudentID),
	constraint FK_Student_Users foreign key (StudentID)
	references Users(UserID) on update cascade,
	constraint FK_Student_Track foreign key (TrackID)
	references Track(TrackID),
	constraint FK_Student_Intake foreign key (IntakeID)
	references Intake(IntakeID)
);
go
create table Branch_Intake_Track
(

	ID int identity(1,1) primary key,
	BranchID int,
	TrackID int ,
	IntakeID int,
	constraint FK_BIT_Track foreign key (TrackID)
	references Track(TrackID) on update cascade,
	constraint FK_BIT_Intake foreign key (IntakeID)
	references Intake(IntakeID) on update cascade,
	constraint FK_BIT_Branch foreign key (BranchID)
	references Branch(BranchID) on update cascade,

);
go
create table Course
(
	CourseID int ,
	CourseName varchar(50) not null,
	Coursedescription text,
	MaxDegree  int not null,
	MINDegree int not null ,
	constraint PK_Course primary key(CourseID)
);
go
create table Track_Course
(
	TrackID int ,
	CourseID int ,
	constraint PK_Track_Course primary key(TrackID,CourseID),
	constraint FK_TrackCourse_track foreign key (TrackID)
	references Track(TrackID) on update cascade,
	constraint FK_TrackCourse_Course foreign key (CourseID)
	references Course(CourseID) on update cascade

);

go
create table Instructor_Courses
(
	InstructorID int,
	CourseID int ,
	constraint PK_Instructor_Courses primary key(InstructorID,CourseID),

	constraint FK_InstructorCourses_instructor foreign key (InstructorID)
	references Instructor(InstructorID) on update cascade,

	constraint FK_InstructorCourses_course foreign key (CourseID)
	references Course(CourseID) on update cascade

);
go
create table Exam
(
	ExamID int identity(1,1),
	CourseID int ,
	InstructorID int,
	ExamType char(1) not null,
	Degree int,
	Duration int not null ,
	StartTime datetime not null,
	EndTime datetime not null,
	constraint CHK_EXam_TIME check((CAST(StartTime AS TIME) <> '00:00:00') and (CAST(EndTime AS TIME) <> '00:00:00')),
	constraint PK_Exam primary key(ExamID),
	constraint CHK_Exam_E_type check (ExamType in ('E','C')),
	constraint FK_Exam_course foreign key (CourseID)
	references Course(CourseID),
	constraint FK_Exam_instructor foreign key (InstructorID)
	references Instructor(InstructorID)
)on FG_Question_Exam;

go

create table Question_Pool
(
	QuestionID int,
	CourseID int,
	QuestionDegree int not null,
	QuestionType varchar(4) not null,
	Questions text not null,
	constraint PK_Question_Pool primary key(QuestionID),
	constraint FK_Question_Pool_Coursre foreign key (CourseID)
	references Course(CourseID),
	constraint CHK_QuestionPool_Type check(QuestionType in ('MCQ','TF','Text'))

)on FG_Question_Exam;


go
create  table Student_Exam_Questions
(
	ExamID int,
	StudentID int ,
	QuestionID int,
	StudentDegree int

	constraint PK_Student_Exam primary key(StudentID, ExamID, QuestionID),
	constraint FK_ExamStudentQuestions_student foreign key (StudentID)
	references Student(StudentID),
	constraint FK_ExamStudentQuestions_Exam foreign key (ExamID)
	references Exam(ExamID),
	constraint FK_ExamStudentQuestions_Question foreign key (QuestionID)
	references Question_Pool(QuestionID)
);
go

create table Student_Answer
(
	ID int identity(1,1),
	StudentID int ,
	ExamID int,
	QuestionID int,
	StudentAnswer text,
	constraint PK_Student_Answer primary key(ID),
	constraint FK_StudentAnswer_Student foreign key (StudentID)
	references Student(StudentID),
	constraint FK_StudentAnswer_Exam foreign key (ExamID)
	references Exam(ExamID),
	constraint FK_Student_Answer_Question foreign key (QuestionID)
	references Question_Pool(QuestionID)
);
create table Instructor_Question_Exam
(
	ID int identity(1,1),
	InstructorID int,
	QuestionID int,
	ExamID int,
	constraint PK_Instructor_Quest_Exam primary key(ID),
	constraint FK_InstructorQuestExam_E foreign key (ExamID)
	references Exam(ExamID),
	constraint FK_InstructorQuestExam_Q foreign key (QuestionID)
	references Question_Pool(QuestionID),
	constraint FK_InstructorQuestExam_I foreign key (InstructorID)
	references Instructor(InstructorID)
);
go
create table Answer_text
(
	QuestionID int,
	TextAnswer text,
	constraint PK_Answer_text primary key(QuestionID),
	constraint FK_Answer_text foreign key (QuestionID)
	references Question_Pool(QuestionID)
	on delete cascade on update cascade ,
)on FG_Question_Exam;
go

create table Question_MCQ
(
	QuestionID int,
	constraint PK_Question_MSQ primary key(QuestionID),
	constraint FK_Question_MSQ foreign key (QuestionID)
	references Question_Pool(QuestionID)
)on FG_Question_Exam;
go

create table Question_Option
(
	AnswerID int,
	QuestionOption char(50),
	constraint PK_Question_Option primary key(AnswerID)
	
)
go
CREATE TABLE Answer_MCQ
(
    QuestionID int,
    AnswerID int,
    IsCorrect bit,
    CONSTRAINT PK_Answer_MCQ PRIMARY KEY (QuestionID, AnswerID), -- composite PK
    CONSTRAINT FK_Question_ID FOREIGN KEY (QuestionID)
        REFERENCES Question_Pool(QuestionID) ON UPDATE CASCADE,
    CONSTRAINT FK_Answer_MCQ FOREIGN KEY (AnswerID)
        REFERENCES Question_Option(AnswerID) ON UPDATE CASCADE
) ON FG_Question_Exam;
