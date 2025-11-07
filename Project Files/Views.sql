-- ==> VIEW TO List of all courses with their tracks
create view vw_CourseList
as
select 
    C.CourseID,
    C.CourseName,
    C.MaxDegree,
    C.MinDegree,
    T.TrackID,
    T.Tname
FROM Course C
inner join Track_Course TC on C.CourseID = TC.CourseID
inner join Track T on TC.TrackID = T.TrackID
go

select * from vw_CourseList
go
--========================================================================================
--vm_IntakeTracks ==> list intake with all information about track
create view vw_IntakeTracks
as
select 
    I.IntakeID,
	T.TrackID,
    I.IntakeName,
	T.TName,
    I.StartDate,
    I.EndDate
from Intake I 
inner join Branch_Intake_Track IT on I.IntakeID = IT.IntakeID
inner join Track T on IT.TrackID = T.TrackID
go

select * from vw_IntakeTracks
go
--========================================================================================
--vw_ExamSchedul ==> Upcoming exams with course, instructor, and time.
create view vw_ExamSchedule
as
select 
    E.ExamID,
    E.ExamType,
    E.Degree,
    E.Duration,
    E.StartTime,
    E.EndTime,
    C.CourseName,
    I.InstructorID,
    U.Name as InstructorName
from Exam E
inner join Course C 
    on E.CourseID = C.CourseID
inner join Instructor I 
    on E.InstructorID = I.InstructorID
inner join Users U 
    on I.InstructorID = U.UserID   
inner join Track_Course TC 
    on C.CourseID = TC.CourseID


where E.StartTime > getdate() 
GROUP BY 
    E.ExamID, E.ExamType, E.Degree, E.Duration, 
    E.StartTime, E.EndTime, 
    C.CourseID, C.CourseName,
    I.InstructorID, U.Name;
go
select * from vw_ExamSchedule
go
--===================================================================================================
--vw_DepartmentList ==> All instructors with department and courses taught.
create view vw_DepartmentList
as
select 
    I.InstructorID,
    U.Name as InstructorName,
    D.DepartmentID,
    D.DepartmentName,
    STRING_AGG(C.CourseName, ', ') as CoursesTaught
from Instructor I
inner join Users U 
    ON I.InstructorID = U.UserID   
inner join Department D 
    ON I.DepartmentID = D.DepartmentID
inner join Instructor_Courses IC
    ON I.InstructorID = IC.InstructorID
inner join Course C
    ON IC.CourseID = C.CourseID
group by
    I.InstructorID, U.Name, D.DepartmentID, D.DepartmentName;
go

select * from vw_DepartmentList
--===========================================================================================

