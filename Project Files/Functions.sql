-- function take the bransh and print the bransh details(name, phone, address, manager) and trackes in this bransh and intake
CREATE FUNCTION dbo.fn_BranchDetails (@BranchID INT)
RETURNS @BranchDetails TABLE
(
    BranchID INT,
    BranchName NVARCHAR(100),
    BranchAddress NVARCHAR(200),
    BranchPhone NVARCHAR(50),
    ManagerID INT,
    ManagerName NVARCHAR(100),
    ManagerEmail NVARCHAR(100),
    ManagerPhone NVARCHAR(50),
    IntakeID INT,
    IntakeName NVARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    TrackID INT,
    TrackName NVARCHAR(100)
)
AS
BEGIN
    INSERT INTO @BranchDetails
    SELECT 
        B.BranchID,
        B.BranchName,
        B.BranchAddress,
        B.BranchPhone,
        B.ManagerID,
        U.Name AS ManagerName,
        U.Email AS ManagerEmail,
        U.Phone AS ManagerPhone,
        I.IntakeID,
        I.IntakeName,
        I.StartDate,
        I.EndDate,
        T.TrackID,
        T.TName AS TrackName
    FROM Branch B
    INNER JOIN Manager M
        ON B.ManagerID = M.ManagerID        
    INNER JOIN Users U
        ON M.ManagerID = U.UserID            
    INNER JOIN Branch_Intake_Track IT
        ON B.BranchID = IT.BranchID
    INNER JOIN Intake I
        ON IT.IntakeID = I.IntakeID
    INNER JOIN Track T
        ON IT.TrackID = T.TrackID
    WHERE B.BranchID = @BranchID;
    RETURN;
END;
GO

SELECT * FROM dbo.fn_BranchDetails(2);
go
--======================================================================================================
-- function take (intake, branshes) and show tracks in this branch
CREATE FUNCTION dbo.fn_IntakeTracks
(
    @IntakeID INT,
    @BranchID INT
)
RETURNS @Tracks TABLE
(
    TrackID INT,
    TrackName NVARCHAR(100),
    IntakeID INT,
    IntakeName NVARCHAR(100),
    BranchID INT,
    BranchName NVARCHAR(100)
)
AS
BEGIN
    INSERT INTO @Tracks
    SELECT 
        T.TrackID,
        T.TName AS TrackName,
        InT.IntakeID,
        InT.IntakeName,
        B.BranchID,
        B.BranchName
    FROM Track T
    INNER JOIN Branch_Intake_Track BIT
        ON T.TrackID = BIT.TrackID
    INNER JOIN Intake InT
        ON BIT.IntakeID = InT.IntakeID
    INNER JOIN Branch B
        ON BIT.BranchID = B.BranchID
    WHERE InT.IntakeID = @IntakeID
      AND B.BranchID  = @BranchID;

    RETURN;
END;
GO

SELECT * FROM dbo.fn_IntakeTracks(6, 1);
