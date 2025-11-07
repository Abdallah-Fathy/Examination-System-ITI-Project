-- =========================
-- Insert 10 Managers
-- =========================
INSERT INTO Users ( Name, address, birthdate, gender, Email, phone, UserType, password)
VALUES
('Ahmed Hassan', 'Cairo, Egypt', '1979-04-15', 'M', 'ahmed.hassan@example.com', '01091234567', 'M', 'MngA1979'),
('Mona Elsayed', 'Alexandria, Egypt', '1982-07-09', 'F', 'mona.elsayed@example.com', '01182345678', 'M', 'MngM1982'),
('Hossam Mahmoud', 'Giza, Egypt', '1980-02-21', 'M', 'hossam.mahmoud@example.com', '01273456789', 'M', 'MngH1980'),
('Salma Ibrahim', 'Mansoura, Egypt', '1978-11-05', 'F', 'salma.ibrahim@example.com', '01094567891', 'M', 'MngS1978'),
('Mahmoud Youssef', 'Tanta, Egypt', '1984-05-19', 'M', 'mahmoud.youssef@example.com', '01115678912', 'M', 'MngM1984'),
('Nadia Adel', 'Cairo, Egypt', '1981-09-27', 'F', 'nadia.adel@example.com', '01036789123', 'M', 'MngN1981'),
('Karim Farouk', 'Giza, Egypt', '1977-01-30', 'M', 'karim.farouk@example.com', '01247891234', 'M', 'MngK1977'),
('Rania Mostafa', 'Alexandria, Egypt', '1985-06-14', 'F', 'rania.mostafa@example.com', '01058912345', 'M', 'MngR1985'),
('Omar Fathy', 'Mansoura, Egypt', '1983-08-22', 'M', 'omar.fathy@example.com', '01169123456', 'M', 'MngO1983'),
('Sara Nabil', 'Tanta, Egypt', '1980-03-18', 'F', 'sara.nabil@example.com', '01271234567', 'M', 'MngS1980');
go
-- =========================
-- Insert 20 Instructors
-- =========================
INSERT INTO Users (Name, address, birthdate, gender, Email, phone, UserType, password)
VALUES
('Yasser Kamal', 'Cairo, Egypt', '1987-05-11', 'M', 'yasser.kamal@example.com', '01082345671', 'I', 'InsY1987'),
('Hanaa Zaki', 'Alexandria, Egypt', '1989-10-09', 'F', 'hanaa.zaki@example.com', '01193456782', 'I', 'InsH1989'),
('Tamer Lotfy', 'Giza, Egypt', '1988-03-25', 'M', 'tamer.lotfy@example.com', '01214567893', 'I', 'InsT1988'),
('Mai Fawzy', 'Mansoura, Egypt', '1990-06-19', 'F', 'mai.fawzy@example.com', '01025678914', 'I', 'InsM1990'),
('Adel Sherif', 'Tanta, Egypt', '1985-09-30', 'M', 'adel.sherif@example.com', '01136789125', 'I', 'InsA1985'),
('Nourhan Galal', 'Cairo, Egypt', '1986-08-08', 'F', 'nourhan.galal@example.com', '01247891236', 'I', 'InsN1986'),
('Sherif Hassan', 'Giza, Egypt', '1984-04-04', 'M', 'sherif.hassan@example.com', '01058912347', 'I', 'InsS1984'),
('Dina Tarek', 'Alexandria, Egypt', '1987-02-15', 'F', 'dina.tarek@example.com', '01169123458', 'I', 'InsD1987'),
('Walid Mostafa', 'Mansoura, Egypt', '1983-12-20', 'M', 'walid.mostafa@example.com', '01271234569', 'I', 'InsW1983'),
('Mariam Hany', 'Tanta, Egypt', '1989-05-17', 'F', 'mariam.hany@example.com', '01082345672', 'I', 'InsM1989'),
('Ayman Fekry', 'Cairo, Egypt', '1988-11-02', 'M', 'ayman.fekry@example.com', '01193456783', 'I', 'InsA1988'),
('Hend Magdy', 'Alexandria, Egypt', '1984-07-27', 'F', 'hend.magdy@example.com', '01214567894', 'I', 'InsH1984'),
('Osama Ehab', 'Giza, Egypt', '1985-01-09', 'M', 'osama.ehab@example.com', '01025678915', 'I', 'InsO1985'),
('Reem Ashraf', 'Mansoura, Egypt', '1987-03-14', 'F', 'reem.ashraf@example.com', '01136789126', 'I', 'InsR1987'),
('Ibrahim Nasser', 'Tanta, Egypt', '1982-10-22', 'M', 'ibrahim.nasser@example.com', '01247891237', 'I', 'InsI1982'),
('Lamiaa Said', 'Cairo, Egypt', '1986-09-05', 'F', 'lamiaa.said@example.com', '01058912348', 'I', 'InsL1986'),
('Mohamed Farid', 'Giza, Egypt', '1983-02-26', 'M', 'mohamed.farid@example.com', '01169123459', 'I', 'InsM1983'),
('Eman Reda', 'Alexandria, Egypt', '1988-12-12', 'F', 'eman.reda@example.com', '01271234560', 'I', 'InsE1988'),
('Khaled Adel', 'Mansoura, Egypt', '1989-08-28', 'M', 'khaled.adel@example.com', '01082345673', 'I', 'InsK1989'),
('Soha Samir', 'Tanta, Egypt', '1987-06-06', 'F', 'soha.samir@example.com', '01193456784', 'I', 'InsS1987');
go
-- ============================================================================================================================
-- Insert 120 Students
-- ===============================================================================================================
INSERT INTO Users ( Name, address, birthdate, gender, Email, phone, UserType, password)
VALUES
('Mostafa Ali', 'Cairo, Egypt', '2000-05-14', 'M', 'mostafa.ali@example.com', '01092345678', 'S', 'StuM2000'),
( 'Aya Salah', 'Alexandria, Egypt', '1999-11-19', 'F', 'aya.salah@example.com', '01183456789', 'S', 'StuA1999'),
( 'Youssef Adel', 'Giza, Egypt', '2001-03-23', 'M', 'youssef.adel@example.com', '01214567895', 'S', 'StuY2001'),
( 'Menna Magdy', 'Mansoura, Egypt', '2000-07-07', 'F', 'menna.magdy@example.com', '01025678916', 'S', 'StuM2000'),
( 'Hany Said', 'Tanta, Egypt', '1998-12-28', 'M', 'hany.said@example.com', '01136789127', 'S', 'StuH1998'),
( 'Noha Ezz', 'Cairo, Egypt', '1999-06-13', 'F', 'noha.ezz@example.com', '01247891238', 'S', 'StuN1999'),
( 'Amr Mohamed', 'Giza, Egypt', '2001-02-18', 'M', 'amr.mohamed@example.com', '01058912349', 'S', 'StuA2001'),
( 'Hager Reda', 'Alexandria, Egypt', '2000-09-26', 'F', 'hager.reda@example.com', '01169123460', 'S', 'StuH2000'),
( 'Ola Kamal', 'Mansoura, Egypt', '1998-11-03', 'F', 'ola.kamal@example.com', '01271234561', 'S', 'StuO1998'),
( 'Islam Farouk', 'Tanta, Egypt', '1999-01-29', 'M', 'islam.farouk@example.com', '01082345674', 'S', 'StuI1999'),
( 'Shereen Ayman', 'Cairo, Egypt', '2000-08-14', 'F', 'shereen.ayman@example.com', '01193456785', 'S', 'StuS2000'),
( 'Fady Samir', 'Alexandria, Egypt', '2001-05-17', 'M', 'fady.samir@example.com', '01214567896', 'S', 'StuF2001'),
( 'Nesma Fekry', 'Giza, Egypt', '1999-02-05', 'F', 'nesma.fekry@example.com', '01025678917', 'S', 'StuN1999'),
( 'Mohab Tarek', 'Mansoura, Egypt', '2000-04-30', 'M', 'mohab.tarek@example.com', '01136789128', 'S', 'StuM2000'),
( 'Fatma Lotfy', 'Tanta, Egypt', '1998-07-12', 'F', 'fatma.lotfy@example.com', '01247891239', 'S', 'StuF1998'),
( 'Ali Sherif', 'Cairo, Egypt', '2001-09-15', 'M', 'ali.sherif@example.com', '01058912350', 'S', 'StuA2001'),
( 'Marwa Hossam', 'Giza, Egypt', '1999-12-20', 'F', 'marwa.hossam@example.com', '01169123461', 'S', 'StuM1999'),
( 'Bassel Adel', 'Alexandria, Egypt', '1998-05-02', 'M', 'bassel.adel@example.com', '01271234562', 'S', 'StuB1998'),
( 'Yasmin Nabil', 'Mansoura, Egypt', '2000-01-10', 'F', 'yasmin.nabil@example.com', '01082345675', 'S', 'StuY2000'),
( 'Sherif Amin', 'Tanta, Egypt', '1999-08-09', 'M', 'sherif.amin@example.com', '01193456786', 'S', 'StuS1999'),
( 'Heba Ashraf', 'Cairo, Egypt', '2001-03-08', 'F', 'heba.ashraf@example.com', '01214567897', 'S', 'StuH2001'),
( 'Adham Lotfy', 'Giza, Egypt', '1998-06-29', 'M', 'adham.lotfy@example.com', '01025678918', 'S', 'StuA1998'),
( 'Samar Fathy', 'Alexandria, Egypt', '1999-10-21', 'F', 'samar.fathy@example.com', '01136789129', 'S', 'StuS1999'),
( 'Omar Youssef', 'Mansoura, Egypt', '2000-02-24', 'M', 'omar.youssef@example.com', '01247891240', 'S', 'StuO2000'),
( 'Lobna Hany', 'Tanta, Egypt', '2001-07-19', 'F', 'lobna.hany@example.com', '01058912351', 'S', 'StuL2001'),
( 'Mostafa Reda', 'Cairo, Egypt', '1998-04-27', 'M', 'mostafa.reda@example.com', '01169123462', 'S', 'StuM1998'),
( 'Hoda Zaki', 'Giza, Egypt', '2000-12-15', 'F', 'hoda.zaki@example.com', '01271234563', 'S', 'StuH2000'),
( 'Magdy Anwar', 'Alexandria, Egypt', '1999-09-11', 'M', 'magdy.anwar@example.com', '01082345676', 'S', 'StuM1999'),
( 'Nadine Ehab', 'Mansoura, Egypt', '2001-11-01', 'F', 'nadine.ehab@example.com', '01193456787', 'S', 'StuN2001'),
( 'Kareem Sameh', 'Tanta, Egypt', '1998-03-06', 'M', 'kareem.sameh@example.com', '01214567898', 'S', 'StuK1998');
go

INSERT INTO Users (Name, address, birthdate, gender, Email, phone, UserType, password)
VALUES
('Ahmed Kamal', 'Alexandria, Egypt', '2002-03-15', 'M', 'ahmed.kamal@example.com', '01023456780', 'S', 'StuA2002'),
('Sara Hany', 'Giza, Egypt', '2001-07-22', 'F', 'sara.hany@example.com', '01123456781', 'S', 'StuS2001'),
('Omar Adel', 'Cairo, Egypt', '2000-12-05', 'M', 'omar.adel@example.com', '01223456782', 'S', 'StuO2000'),
('Mona Magdy', 'Mansoura, Egypt', '2002-09-13', 'F', 'mona.magdy@example.com', '01033456783', 'S', 'StuM2002'),
('Youssef Mostafa', 'Tanta, Egypt', '2001-02-08', 'M', 'youssef.mostafa@example.com', '01133456784', 'S', 'StuY2001'),
('Nour El-Din Hassan', 'Ismailia, Egypt', '2003-06-25', 'M', 'nour.hassan@example.com', '01233456785', 'S', 'StuN2003'),
('Hana Adel', 'Cairo, Egypt', '2002-04-14', 'F', 'hana.adel@example.com', '01043456786', 'S', 'StuH2002'),
('Mahmoud Sabry', 'Alexandria, Egypt', '2001-08-19', 'M', 'mahmoud.sabry@example.com', '01143456787', 'S', 'StuM2001'),
('Farah Samir', 'Giza, Egypt', '2000-05-10', 'F', 'farah.samir@example.com', '01243456788', 'S', 'StuF2000'),
('Karim Reda', 'Cairo, Egypt', '2003-01-29', 'M', 'karim.reda@example.com', '01053456789', 'S', 'StuK2003'),
('Laila Ahmed', 'Mansoura, Egypt', '2001-11-20', 'F', 'laila.ahmed@example.com', '01153456790', 'S', 'StuL2001'),
('Mostafa Fathy', 'Tanta, Egypt', '2002-07-07', 'M', 'mostafa.fathy@example.com', '01253456791', 'S', 'StuM2002'),
('Mariam Hossam', 'Ismailia, Egypt', '2000-10-15', 'F', 'mariam.hossam@example.com', '01063456792', 'S', 'StuM2000'),
('Hossam Khaled', 'Cairo, Egypt', '2001-03-18', 'M', 'hossam.khaled@example.com', '01163456793', 'S', 'StuH2001'),
('Aya Yasser', 'Alexandria, Egypt', '2003-09-26', 'F', 'aya.yasser@example.com', '01263456794', 'S', 'StuA2003'),
('Ali Mohamed', 'Giza, Egypt', '2002-05-05', 'M', 'ali.mohamed@example.com', '01073456795', 'S', 'StuA2002'),
('Nada Ibrahim', 'Mansoura, Egypt', '2000-12-12', 'F', 'nada.ibrahim@example.com', '01173456796', 'S', 'StuN2000'),
('Tamer Zaki', 'Tanta, Egypt', '2001-08-02', 'M', 'tamer.zaki@example.com', '01273456797', 'S', 'StuT2001'),
('Reem Mahmoud', 'Ismailia, Egypt', '2003-04-08', 'F', 'reem.mahmoud@example.com', '01083456798', 'S', 'StuR2003'),
('Yara Khaled', 'Cairo, Egypt', '2002-01-17', 'F', 'yara.khaled@example.com', '01183456799', 'S', 'StuY2002'),
('Mohamed Nader', 'Alexandria, Egypt', '2001-09-03', 'M', 'mohamed.nader@example.com', '01283456800', 'S', 'StuM2001'),
('Fatma Sherif', 'Giza, Egypt', '2000-06-09', 'F', 'fatma.sherif@example.com', '01093456801', 'S', 'StuF2000'),
('Islam Saad', 'Mansoura, Egypt', '2003-03-21', 'M', 'islam.saad@example.com', '01193456802', 'S', 'StuI2003'),
('Dina Adel', 'Tanta, Egypt', '2002-12-01', 'F', 'dina.adel@example.com', '01293456803', 'S', 'StuD2002'),
('Heba Younis', 'Ismailia, Egypt', '2001-05-27', 'F', 'heba.younis@example.com', '01013456804', 'S', 'StuH2001'),
('Amr Gamal', 'Cairo, Egypt', '2000-08-11', 'M', 'amr.gamal@example.com', '01113456805', 'S', 'StuA2000'),
('Nourhan Fady', 'Alexandria, Egypt', '2003-02-06', 'F', 'nourhan.fady@example.com', '01213456806', 'S', 'StuN2003'),
('Khaled Samy', 'Giza, Egypt', '2002-10-19', 'M', 'khaled.samy@example.com', '01023456807', 'S', 'StuK2002'),
('Shorouk Mohamed', 'Mansoura, Egypt', '2001-07-24', 'F', 'shorouk.mohamed@example.com', '01123456808', 'S', 'StuS2001'),
('Eslam Hussein', 'Tanta, Egypt', '2000-09-28', 'M', 'eslam.hussein@example.com', '01223456809', 'S', 'StuE2000'),
('Rania Ezzat', 'Ismailia, Egypt', '2002-05-13', 'F', 'rania.ezzat@example.com', '01033456810', 'S', 'StuR2002'),
('Mohamed Salah', 'Cairo, Egypt', '2001-11-04', 'M', 'mohamed.salah@example.com', '01133456811', 'S', 'StuM2001'),
('Hagar Yassin', 'Alexandria, Egypt', '2000-04-29', 'F', 'hagar.yassin@example.com', '01233456812', 'S', 'StuH2000'),
('Sherif Fathy', 'Giza, Egypt', '2003-09-18', 'M', 'sherif.fathy@example.com', '01043456813', 'S', 'StuS2003'),
('Alaa Magdy', 'Mansoura, Egypt', '2002-02-26', 'M', 'alaa.magdy@example.com', '01143456814', 'S', 'StuA2002'),
('Mayar Ali', 'Tanta, Egypt', '2001-06-07', 'F', 'mayar.ali@example.com', '01243456815', 'S', 'StuM2001'),
('Osama Mahmoud', 'Ismailia, Egypt', '2000-12-30', 'M', 'osama.mahmoud@example.com', '01053456816', 'S', 'StuO2000'),
('Yasmine Samir', 'Cairo, Egypt', '2003-08-14', 'F', 'yasmine.samir@example.com', '01153456817', 'S', 'StuY2003'),
('Ahmed Reda', 'Alexandria, Egypt', '2002-01-23', 'M', 'ahmed.reda@example.com', '01253456818', 'S', 'StuA2002'),
('Menna Ibrahim', 'Giza, Egypt', '2001-05-16', 'F', 'menna.ibrahim@example.com', '01063456819', 'S', 'StuM2001'),
('Hassan Foad', 'Mansoura, Egypt', '2000-03-09', 'M', 'hassan.foad@example.com', '01163456820', 'S', 'StuH2000'),
('Doaa Nabil', 'Tanta, Egypt', '2003-12-28', 'F', 'doaa.nabil@example.com', '01263456821', 'S', 'StuD2003'),
('Ola Ahmed', 'Ismailia, Egypt', '2002-06-02', 'F', 'ola.ahmed@example.com', '01073456822', 'S', 'StuO2002'),
('Mahmoud Zaki', 'Cairo, Egypt', '2001-10-20', 'M', 'mahmoud.zaki@example.com', '01173456823', 'S', 'StuM2001'),
('Lobna Farid', 'Alexandria, Egypt', '2000-07-25', 'F', 'lobna.farid@example.com', '01273456824', 'S', 'StuL2000'),
('Walid Saeed', 'Giza, Egypt', '2003-02-03', 'M', 'walid.saeed@example.com', '01083456825', 'S', 'StuW2003'),
('Maha Hassan', 'Mansoura, Egypt', '2002-09-11', 'F', 'maha.hassan@example.com', '01183456826', 'S', 'StuM2002'),
('Tarek Mostafa', 'Tanta, Egypt', '2001-04-01', 'M', 'tarek.mostafa@example.com', '01283456827', 'S', 'StuT2001'),
('Hoda Younes', 'Ismailia, Egypt', '2000-08-22', 'F', 'hoda.younes@example.com', '01093456828', 'S', 'StuH2000'),
('Nader Gamal', 'Cairo, Egypt', '2003-05-15', 'M', 'nader.gamal@example.com', '01193456829', 'S', 'StuN2003'),
('Eman Fathy', 'Alexandria, Egypt', '2002-11-06', 'F', 'eman.fathy@example.com', '01293456830', 'S', 'StuE2002'),
('Sameh Sherif', 'Giza, Egypt', '2001-01-27', 'M', 'sameh.sherif@example.com', '01013456831', 'S', 'StuS2001'),
('Mai Yasser', 'Mansoura, Egypt', '2000-06-19', 'F', 'mai.yasser@example.com', '01113456832', 'S', 'StuM2000'),
('Hany Ibrahim', 'Tanta, Egypt', '2003-03-12', 'M', 'hany.ibrahim@example.com', '01213456833', 'S', 'StuH2003'),
('Salma Adel', 'Ismailia, Egypt', '2002-12-04', 'F', 'salma.adel@example.com', '01023456834', 'S', 'StuS2002'),
('Othman Khaled', 'Cairo, Egypt', '2001-07-30', 'M', 'othman.khaled@example.com', '01123456835', 'S', 'StuO2001'),
('Rehab Samy', 'Alexandria, Egypt', '2000-09-08', 'F', 'rehab.samy@example.com', '01223456836', 'S', 'StuR2000'),
('Fady Nabil', 'Giza, Egypt', '2003-01-02', 'M', 'fady.nabil@example.com', '01033456837', 'S', 'StuF2003'),
('Aya Maher', 'Mansoura, Egypt', '2002-10-21', 'F', 'aya.maher@example.com', '01133456838', 'S', 'StuA2002'),
('Ziad Hossam', 'Tanta, Egypt', '2001-02-14', 'M', 'ziad.hossam@example.com', '01233456839', 'S', 'StuZ2001');
GO


INSERT INTO Users (Name, address, birthdate, gender, Email, phone, UserType, password)
VALUES
('Ahmed Fathy', 'Cairo, Egypt', '2000-06-12', 'M', 'ahmed.fathy@example.com', '01094561234', 'S', 'StuA2000'),
('Sara Gamal', 'Alexandria, Egypt', '1999-08-22', 'F', 'sara.gamal@example.com', '01185671235', 'S', 'StuS1999'),
('Mahmoud Hossam', 'Giza, Egypt', '1998-02-04', 'M', 'mahmoud.hossam@example.com', '01216781236', 'S', 'StuM1998'),
('Nourhan Tarek', 'Mansoura, Egypt', '2001-12-09', 'F', 'nourhan.tarek@example.com', '01027891237', 'S', 'StuN2001'),
('Ehab Adel', 'Tanta, Egypt', '1999-11-18', 'M', 'ehab.adel@example.com', '01138911238', 'S', 'StuE1999'),
('Hana Hany', 'Cairo, Egypt', '2000-05-03', 'F', 'hana.hany@example.com', '01249011239', 'S', 'StuH2000'),
('Omar Sherif', 'Alexandria, Egypt', '1998-07-21', 'M', 'omar.sherif@example.com', '01051231240', 'S', 'StuO1998'),
('Mona Ahmed', 'Giza, Egypt', '2001-01-25', 'F', 'mona.ahmed@example.com', '01162341241', 'S', 'StuM2001'),
('Hesham Nabil', 'Mansoura, Egypt', '1999-03-30', 'M', 'hesham.nabil@example.com', '01273451242', 'S', 'StuH1999'),
('Doaa Fathy', 'Tanta, Egypt', '2000-10-16', 'F', 'doaa.fathy@example.com', '01084561243', 'S', 'StuD2000'),
('Khaled Magdy', 'Cairo, Egypt', '1998-09-08', 'M', 'khaled.magdy@example.com', '01195671244', 'S', 'StuK1998'),
('Yara Samir', 'Alexandria, Egypt', '2001-04-27', 'F', 'yara.samir@example.com', '01216781245', 'S', 'StuY2001'),
('Ayman Fawzy', 'Giza, Egypt', '1999-06-05', 'M', 'ayman.fawzy@example.com', '01027891246', 'S', 'StuA1999'),
('Reham Said', 'Mansoura, Egypt', '1998-02-14', 'F', 'reham.said@example.com', '01138911247', 'S', 'StuR1998'),
('Tamer Ezz', 'Tanta, Egypt', '2000-11-22', 'M', 'tamer.ezz@example.com', '01249011248', 'S', 'StuT2000'),
('Mai Lotfy', 'Cairo, Egypt', '2001-07-19', 'F', 'mai.lotfy@example.com', '01051231249', 'S', 'StuM2001'),
('Samy Reda', 'Alexandria, Egypt', '1998-05-10', 'M', 'samy.reda@example.com', '01162341250', 'S', 'StuS1998'),
('Nermeen Ashraf', 'Giza, Egypt', '1999-01-31', 'F', 'nermeen.ashraf@example.com', '01273451251', 'S', 'StuN1999'),
('Walid Mostafa', 'Mansoura, Egypt', '2000-08-25', 'M', 'walid.mostafa@example.com', '01084561252', 'S', 'StuW2000'),
('Dina Fekry', 'Tanta, Egypt', '1998-12-03', 'F', 'dina.fekry@example.com', '01195671253', 'S', 'StuD1998'),
('Hazem Hany', 'Cairo, Egypt', '2001-03-12', 'M', 'hazem.hany@example.com', '01216781254', 'S', 'StuH2001'),
('Farida Salah', 'Alexandria, Egypt', '1999-09-27', 'F', 'farida.salah@example.com', '01027891255', 'S', 'StuF1999'),
('Ibrahim Adel', 'Giza, Egypt', '2000-01-17', 'M', 'ibrahim.adel@example.com', '01138911256', 'S', 'StuI2000'),
('Rania Gamal', 'Mansoura, Egypt', '1998-06-23', 'F', 'rania.gamal@example.com', '01249011257', 'S', 'StuR1998'),
('Maged Sherif', 'Tanta, Egypt', '2001-05-06', 'M', 'maged.sherif@example.com', '01051231258', 'S', 'StuM2001'),
('Aya Nasser', 'Cairo, Egypt', '1999-11-29', 'F', 'aya.nasser@example.com', '01162341259', 'S', 'StuA1999'),
('Ossama Hassan', 'Alexandria, Egypt', '1998-03-15', 'M', 'ossama.hassan@example.com', '01273451260', 'S', 'StuO1998'),
('Shimaa Lotfy', 'Giza, Egypt', '2000-07-07', 'F', 'shimaa.lotfy@example.com', '01084561261', 'S', 'StuS2000'),
('Karim Fathy', 'Mansoura, Egypt', '1999-10-05', 'M', 'karim.fathy@example.com', '01195671262', 'S', 'StuK1999'),
('Mariam Adel', 'Tanta, Egypt', '2001-01-28', 'F', 'mariam.adel@example.com', '01216781263', 'S', 'StuM2001'),
('Nader Magdy', 'Cairo, Egypt', '1998-08-11', 'M', 'nader.magdy@example.com', '01027891264', 'S', 'StuN1998'),
('Layla Said', 'Alexandria, Egypt', '2000-02-19', 'F', 'layla.said@example.com', '01138911265', 'S', 'StuL2000'),
('Ashraf Ezz', 'Giza, Egypt', '1999-04-22', 'M', 'ashraf.ezz@example.com', '01249011266', 'S', 'StuA1999'),
('Salma Khaled', 'Mansoura, Egypt', '1998-09-02', 'F', 'salma.khaled@example.com', '01051231267', 'S', 'StuS1998'),
('Mohamed Farouk', 'Tanta, Egypt', '2001-06-15', 'M', 'mohamed.farouk@example.com', '01162341268', 'S', 'StuM2001'),
('Esraa Nabil', 'Cairo, Egypt', '1999-05-08', 'F', 'esraa.nabil@example.com', '01273451269', 'S', 'StuE1999'),
('Yassin Hossam', 'Alexandria, Egypt', '2000-12-29', 'M', 'yassin.hossam@example.com', '01084561270', 'S', 'StuY2000'),
('Hadeer Lotfy', 'Giza, Egypt', '1998-11-04', 'F', 'hadeer.lotfy@example.com', '01195671271', 'S', 'StuH1998'),
('Sherif Gamal', 'Mansoura, Egypt', '2001-02-16', 'M', 'sherif.gamal@example.com', '01216781272', 'S', 'StuS2001'),
('Nour Mohamed', 'Tanta, Egypt', '1999-07-30', 'F', 'nour.mohamed@example.com', '01027891273', 'S', 'StuN1999'),
('Adel Hassan', 'Cairo, Egypt', '1998-10-13', 'M', 'adel.hassan@example.com', '01138911274', 'S', 'StuA1998'),
('Mai Khaled', 'Alexandria, Egypt', '2000-01-09', 'F', 'mai.khaled@example.com', '01249011275', 'S', 'StuM2000'),
('Mostafa Ashraf', 'Giza, Egypt', '1999-03-20', 'M', 'mostafa.ashraf@example.com', '01051231276', 'S', 'StuM1999'),
('Nahla Fathy', 'Mansoura, Egypt', '1998-06-07', 'F', 'nahla.fathy@example.com', '01162341277', 'S', 'StuN1998'),
('Hossam Zaki', 'Tanta, Egypt', '2001-09-01', 'M', 'hossam.zaki@example.com', '01273451278', 'S', 'StuH2001'),
('Rowan Lotfy', 'Cairo, Egypt', '1999-02-13', 'F', 'rowan.lotfy@example.com', '01084561279', 'S', 'StuR1999'),
('Khalil Nabil', 'Alexandria, Egypt', '1998-05-26', 'M', 'khalil.nabil@example.com', '01195671280', 'S', 'StuK1998'),
('Sherine Gamal', 'Giza, Egypt', '2000-04-18', 'F', 'sherine.gamal@example.com', '01216781281', 'S', 'StuS2000'),
('Taha Farouk', 'Mansoura, Egypt', '1999-11-24', 'M', 'taha.farouk@example.com', '01027891282', 'S', 'StuT1999'),
('Manar Adel', 'Tanta, Egypt', '2001-08-02', 'F', 'manar.adel@example.com', '01138911283', 'S', 'StuM2001'),
('Sara Yasser', 'Alexandria, Egypt', '1999-10-05', 'F', 'sara.yasser@example.com', '01184567899', 'S', 'StuS1999'),
('Mohamed Ziad', 'Giza, Egypt', '2001-01-12', 'M', 'mohamed.ziad@example.com', '01215678964', 'S', 'StuM2001'),
('Aya Magdy', 'Mansoura, Egypt', '2000-08-21', 'F', 'aya.magdy@example.com', '01026789165', 'S', 'StuA2000'),
('Hossam Khaled', 'Tanta, Egypt', '1998-09-30', 'M', 'hossam.khaled@example.com', '01137891266', 'S', 'StuH1998'),
('Reem Adel', 'Cairo, Egypt', '1999-05-25', 'F', 'reem.adel@example.com', '01248912367', 'S', 'StuR1999'),
('Ahmed Mostafa', 'Alexandria, Egypt', '2001-02-03', 'M', 'ahmed.mostafa@example.com', '01059123468', 'S', 'StuA2001'),
('Mariam Sherif', 'Giza, Egypt', '1998-12-17', 'F', 'mariam.sherif@example.com', '01169234569', 'S', 'StuM1998'),
('Walid Hassan', 'Mansoura, Egypt', '2000-03-14', 'M', 'walid.hassan@example.com', '01271345670', 'S', 'StuW2000'),
('Dina Fares', 'Tanta, Egypt', '1999-07-09', 'F', 'dina.fares@example.com', '01082456781', 'S', 'StuD1999'),
('Mostafa Gamal', 'Cairo, Egypt', '2001-11-28', 'M', 'mostafa.gamal@example.com', '01193567882', 'S', 'StuM2001');
GO

--=====================================================================================================================================
--inserting manager table
INSERT INTO Manager (ManagerID)
VALUES
(1), (2), (3), (4), (5),
(6), (7), (8), (9), (10);
go
--=======================================================================================================
--inserting branshes

INSERT INTO Branch (BranchID, ManagerID, BranchName, BranchAddress, BranchPhone)
VALUES
(1, 1, N'Alex', N'21 El-Gaish Street, Alexandria', '01012345678'),
(2, 2, N'Smart Village', N'Building B211, Smart Village, 6th of October City', '01023456789'),
(3, 3, N'Cairo University', N'Giza Square, Giza', '01134567890'),
(4, 4, N'Port Said', N'15 El-Gomhoreya Street, Port Said', '01045678901'),
(5, 5, N'Ismailia', N'9 Tahrir Street, Ismailia', '01256789012'),
(6, 6, N'Menofia', N'4 Saad Zaghloul Street, Shebin El-Kom', '01067890123'),
(7, 7, N'Banha', N'8 El-Obour Street, Banha', '01178901234'),
(8, 8, N'Assiut', N'14 El-Nasr Street, Assiut', '01289012345'),
(9, 9, N'Minia', N'2 Corniche El-Nil Street, Minia', '01090123456'),
(10, 10, N'Sohag', N'5 El-Horreya Street, Sohag', '01101234567');
go
--==========================================================================================================
--Department Table
-- 2️ Insert realistic department names
INSERT INTO Department (DepartmentID, DepartmentName)
VALUES
(1, 'Software Development'),
(2, 'Data Management'),
(3, 'Digital Marketing'),
(4, 'Cybersecurity'),
(5, 'Cloud Computing'),
(6, 'Artificial Intelligence'),
(7, 'Network Administration'),
(8, 'Business Analysis'),
(9, 'IT Project Management'),
(10, 'UI/UX Design');
go
--======================================================================================================
--Track Table
INSERT INTO Track (TrackID, DepartmentID, Tname)
VALUES
-- Software Development
(1, 1, 'Full Stack Web Development'),
(2, 1, 'Mobile App Development'),

-- Data Management
(3, 2, 'Database Administration'),
(4, 2, 'Data Warehousing'),

-- Digital Marketing
(5, 3, 'SEO & SEM'),
(6, 3, 'Social Media Marketing'),

-- Cybersecurity
(7, 4, 'Penetration Testing'),
(8, 4, 'Network Security'),

-- Cloud Computing
(9, 5, 'AWS Solutions Architect'),
(10, 5, 'Azure Cloud Engineer'),

-- Artificial Intelligence
(11, 6, 'Machine Learning'),
(12, 6, 'Natural Language Processing'),

-- Network Administration
(13, 7, 'Enterprise Networking'),
(14, 7, 'Cloud Networking'),

-- Business Analysis
(15, 8, 'Business Process Modelling'),
(16, 8, 'Agile Product Ownership'),

-- IT Project Management
(17, 9, 'Agile Project Management'),
(18, 9, 'PMP Certification Prep'),

-- UI/UX Design
(19, 10, 'UX Research'),
(20, 10, 'UI Prototyping & Design');
go
--=========================================================================================================
--Instructor Table
-- 2️ Insert instructors linked to their departments
-- ⚠ Assumption: UserID for instructors in Users table are from 31 to 50 (adjust if different)
INSERT INTO Instructor (InstructorID, DepartmentID)
VALUES
(11, 1), -- Full Stack Dev
(12, 1),
(13, 2), -- Data Management
(14, 2),
(15, 3), -- Digital Marketing
(16, 3),
(17, 4), -- Cybersecurity
(18, 4),
(19, 5), -- Cloud Computing
(20, 5),
(21, 6), -- AI
(22, 6),
(23, 7), -- Network Admin
(24, 7),
(25, 8), -- Business Analysis
(26, 8),
(27, 9), -- Project Management
(28, 9),
(29, 10), -- UI/UX
(30, 10);
go
select  U.Name, D.DepartmentName
from Instructor I
inner join Users U on I.InstructorID = U.UserID
inner join Department D on I.DepartmentID = D.DepartmentID 
go
--=====================================================================================================
--Intake Table
-- 2️ Insert realistic 9-month intakes
INSERT INTO Intake (IntakeID, IntakeName, StartDate, EndDate)
VALUES
(1, 'Intake Jan 2024', '2024-01-10', '2024-10-10'),
(2, 'Intake May 2024', '2024-05-05', '2025-02-05'),
(3, 'Intake Sep 2024', '2024-09-01', '2025-06-01'),
(4, 'Intake Jan 2025', '2025-01-12', '2025-10-12'),
(5, 'Intake May 2025', '2025-05-04', '2026-02-04'),
(6, 'Intake Sep 2025', '2025-09-07', '2026-06-07');
go
--====================================================================================================
--Student Table
-- 2️ Insert students (StudentID must exist in Users table as Students)
-- Example assuming Users table already has Student users with IDs from 31 to 60
INSERT INTO Student (StudentID, TrackID, IntakeID)
VALUES
(31, 1, 6),  (32, 2, 6),  (33, 3, 6),  (34, 4, 6),
(35, 1, 6),  (36, 2, 6),  (37, 3, 6),  (38, 4, 6),
(39, 1, 6),  (40, 2, 6),  (41, 3, 6),  (42, 4, 6),
(43, 1, 6),  (44, 2, 6),  (45, 3, 6),  (46, 4, 6),
(47, 1, 6),  (48, 2, 6),  (49, 3, 6),  (50, 4, 6),
(51, 1, 6),  (52, 2, 6),  (53, 3, 6),  (54, 4, 6),
(55, 1, 6),  (56, 2, 6),  (57, 3, 6),  (58, 4, 6),
(59, 1, 6),  (60, 2, 6),  (61, 3, 6),  (62, 4, 6),
(63, 1, 6),  (64, 2, 6),  (65, 3, 6),  (66, 4, 6),
(67, 1, 6),  (68, 2, 6),  (69, 3, 6),  (70, 4, 6),
(71, 1, 6),  (72, 2, 6),  (73, 3, 6),  (74, 4, 6),
(75, 1, 6),  (76, 2, 6),  (77, 3, 6),  (78, 4, 6),
(79, 1, 6),  (80, 2, 6),  (81, 3, 6),  (82, 4, 6),
(83, 1, 6),  (84, 2, 6),  (85, 3, 6),  (86, 4, 6),
(87, 1, 6),  (88, 2, 6),  (89, 3, 6),  (90, 4, 6),
(91, 1, 6),  (92, 2, 6),  (93, 3, 6),  (94, 4, 6),
(95, 1, 6),  (96, 2, 6),  (97, 3, 6),  (98, 4, 6),
(99, 1, 6),  (100, 2, 6), (101, 3, 6), (102, 4, 6),
(103, 1, 6), (104, 2, 6), (105, 3, 6), (106, 4, 6),
(107, 1, 6), (108, 2, 6), (109, 3, 6), (110, 4, 6),
(111, 1, 6), (112, 2, 6), (113, 3, 6), (114, 4, 6),
(115, 1, 6), (116, 2, 6), (117, 3, 6), (118, 4, 6),
(119, 1, 6), (120, 2, 6), (121, 3, 6), (122, 4, 6),
(123, 1, 6), (124, 2, 6), (125, 3, 6), (126, 4, 6),
(127, 1, 6), (128, 2, 6), (129, 3, 6), (130, 4, 6),
(131, 1, 6), (132, 2, 6), (133, 3, 6), (134, 4, 6),
(135, 1, 6), (136, 2, 6), (137, 3, 6), (138, 4, 6),
(139, 1, 6), (140, 2, 6), (141, 3, 6), (142, 4, 6),
(143, 1, 6), (144, 2, 6), (145, 3, 6), (146, 4, 6),
(147, 1, 6), (148, 2, 6), (149, 3, 6), (150, 4, 6),
(151, 1, 6), (152, 2, 6), (153, 3, 6), (154, 4, 6),
(155, 1, 6), (156, 2, 6), (157, 3, 6), (158, 4, 6),
(159, 1, 6), (160, 2, 6), (161, 3, 6), (162, 4, 6),
(163, 1, 6), (164, 2, 6), (165, 3, 6), (166, 4, 6),
(167, 1, 6), (168, 2, 6), (169, 3, 6), (170, 4, 6),
(171, 1, 6), (172, 2, 6), (173, 3, 6), (174, 4, 6),
(175, 1, 6), (176, 2, 6), (177, 3, 6), (178, 4, 6),
(179, 1, 6), (180, 2, 6);

go
--========================================================================================================
--Bransh-Intake-Track

INSERT INTO Branch_Intake_Track (BranchID, TrackID, IntakeID)
VALUES
-- Alexandria
(1, 1, 6), (1, 3, 6), (1, 5, 6), (1, 11, 6), (1, 19, 6),

-- Smart Village
(2, 1, 6), (2, 2, 6), (2, 4, 6), (2, 7, 6), (2, 9, 6), (2, 17, 6),

-- Cairo University
(3, 1, 6), (3, 2, 6), (3, 3, 6), (3, 4, 6), (3, 11, 6), (3, 12, 6),

-- Port Said
(4, 5, 6), (4, 6, 6), (4, 15, 6), (4, 20, 6),

-- Ismailia
(5, 1, 6), (5, 5, 6), (5, 7, 6), (5, 9, 6),

-- Menoufia
(6, 3, 6), (6, 4, 6), (6, 8, 6), (6, 13, 6), (6, 15, 6),

-- Banha
(7, 1, 6), (7, 2, 6), (7, 11, 6), (7, 17, 6),

-- Assiut
(8, 5, 6), (8, 6, 6), (8, 7, 6), (8, 14, 6),

-- Minia
(9, 1, 6), (9, 3, 6), (9, 5, 6), (9, 11, 6), (9, 16, 6), (9, 19, 6),

-- Sohag
(10, 4, 6), (10, 7, 6), (10, 8, 6), (10, 12, 6)
go
--===========================================================================================================
--Course Table
INSERT INTO Course (CourseID, CourseName, Coursedescription, MaxDegree, MINDegree)
VALUES
-- Track 1: Full Stack Web Development
(1, 'HTML & CSS Fundamentals', 'Learn the building blocks of the web.', 100, 60),
(2, 'Responsive Web Design', 'Design websites that work on any device.', 100, 60),
(3, 'JavaScript Essentials', 'Interactive web functionality with JS.', 100, 60),
(4, 'DOM Manipulation', 'Update web content dynamically.', 100, 60),
(5, 'Version Control with Git', 'Manage code changes with Git.', 100, 60),
(6, 'Backend with Node.js', 'Build scalable server-side apps.', 100, 60),
(7, 'Express.js Framework', 'Routing and middleware in Express.', 100, 60),
(8, 'RESTful API Development', 'Create APIs for data exchange.', 100, 60),
(9, 'Database Integration', 'Work with MySQL & MongoDB.', 100, 60),
(10, 'Full Stack Capstone Project', 'Develop a complete full stack app.', 100, 60),

-- Track 2: Mobile App Development
(11, 'Android Basics with Kotlin', 'Intro to Android apps.', 100, 60),
(12, 'iOS Basics with Swift', 'Intro to iOS apps.', 100, 60),
(13, 'Cross-Platform with Flutter', 'Build apps for Android & iOS.', 100, 60),
(14, 'UI Design for Mobile', 'Design engaging app interfaces.', 100, 60),
(15, 'Mobile App Architecture', 'MVVM, MVC patterns.', 100, 60),
(16, 'API Integration in Mobile', 'Consume REST APIs in apps.', 100, 60),
(17, 'Push Notifications', 'Send real-time updates to users.', 100, 60),
(18, 'Offline Data Storage', 'SQLite, Room DB.', 100, 60),
(19, 'Performance Optimization', 'Speed up mobile apps.', 100, 60),
(20, 'Mobile Capstone Project', 'Build a complete mobile app.', 100, 60),

-- Track 3: Database Administration
(21, 'SQL Basics', 'Queries, joins, and indexing.', 100, 60),
(22, 'Database Design', 'ER models and normalization.', 100, 60),
(23, 'SQL Server Administration', 'Setup and manage SQL Server.', 100, 60),
(24, 'Backup & Recovery', 'Disaster recovery planning.', 100, 60),
(25, 'Performance Tuning', 'Optimize queries and indexes.', 100, 60),
(26, 'User Access Control', 'Roles and permissions.', 100, 60),
(27, 'Stored Procedures', 'Reusable SQL logic.', 100, 60),
(28, 'Database Security', 'Protect against SQL injection.', 100, 60),
(29, 'Replication & Clustering', 'High availability databases.', 100, 60),
(30, 'DBA Capstone Project', 'Manage a production database.', 100, 60),

-- Track 4: Data Warehousing
(31, 'Intro to Data Warehousing', 'Data warehouse basics.', 100, 60),
(32, 'ETL Processes', 'Extract, transform, load.', 100, 60),
(33, 'Dimensional Modeling', 'Star and snowflake schemas.', 100, 60),
(34, 'SSIS Basics', 'Data integration with SSIS.', 100, 60),
(35, 'Data Cleansing', 'Improve data quality.', 100, 60),
(36, 'OLAP Cubes', 'Multi-dimensional data analysis.', 100, 60),
(37, 'Data Lake Concepts', 'Storing unstructured data.', 100, 60),
(38, 'Big Data Integration', 'Hadoop, Spark basics.', 100, 60),
(39, 'Data Warehouse Security', 'Access control & encryption.', 100, 60),
(40, 'DW Capstone Project', 'Design and build a data warehouse.', 100, 60),

-- Track 5: SEO & SEM
(41, 'SEO Fundamentals', 'On-page and off-page SEO.', 100, 60),
(42, 'Keyword Research', 'Finding high-value keywords.', 100, 60),
(43, 'Technical SEO', 'Website speed, sitemaps.', 100, 60),
(44, 'Content Optimization', 'Writing SEO-friendly content.', 100, 60),
(45, 'Link Building Strategies', 'Backlink creation.', 100, 60),
(46, 'Local SEO', 'Ranking for local searches.', 100, 60),
(47, 'SEO Tools', 'Using SEMrush, Ahrefs.', 100, 60),
(48, 'Google Analytics', 'Track website performance.', 100, 60),
(49, 'SEM Campaigns', 'Paid search advertising.', 100, 60),
(50, 'SEO Capstone Project', 'Optimize a website.', 100, 60),

-- Track 6: Social Media Marketing
(51, 'Intro to SMM', 'Social media basics.', 100, 60),
(52, 'Content Strategy', 'Plan engaging posts.', 100, 60),
(53, 'Facebook Ads', 'Create and optimize campaigns.', 100, 60),
(54, 'Instagram Marketing', 'Build brand presence.', 100, 60),
(55, 'LinkedIn Marketing', 'B2B audience targeting.', 100, 60),
(56, 'TikTok Marketing', 'Engage younger audiences.', 100, 60),
(57, 'Social Media Analytics', 'Track engagement.', 100, 60),
(58, 'Influencer Marketing', 'Collaborate with creators.', 100, 60),
(59, 'Community Management', 'Build online communities.', 100, 60),
(60, 'SMM Capstone Project', 'Run a social media campaign.', 100, 60),

-- Track 7: Penetration Testing
(61, 'Intro to Ethical Hacking', 'Overview of penetration testing and ethics.', 100, 60),
(62, 'Reconnaissance Techniques', 'Information gathering before attacks.', 100, 60),
(63, 'Vulnerability Scanning', 'Using tools to find weaknesses.', 100, 60),
(64, 'Exploitation Basics', 'Gaining access through vulnerabilities.', 100, 60),
(65, 'Privilege Escalation', 'Gaining higher-level access.', 100, 60),
(66, 'Web Application Testing', 'Testing websites for vulnerabilities.', 100, 60),
(67, 'Network Penetration Testing', 'Testing network security.', 100, 60),
(68, 'Post-Exploitation', 'Maintaining access & covering tracks.', 100, 60),
(69, 'Reporting & Documentation', 'Documenting findings professionally.', 100, 60),
(70, 'PenTest Capstone Project', 'Full penetration test of a system.', 100, 60),

-- Track 8: Network Security
(71, 'Network Security Basics', 'Core concepts of network protection.', 100, 60),
(72, 'Firewalls & IDS/IPS', 'Configuring network defenses.', 100, 60),
(73, 'VPNs & Secure Connections', 'Protecting data in transit.', 100, 60),
(74, 'Wireless Security', 'Securing Wi-Fi networks.', 100, 60),
(75, 'Network Attacks', 'Common network-based attacks.', 100, 60),
(76, 'Encryption & Tunneling', 'Protecting network data.', 100, 60),
(77, 'Access Control Lists', 'Filtering traffic with ACLs.', 100, 60),
(78, 'Security Monitoring', 'Tracking and logging events.', 100, 60),
(79, 'Incident Response', 'Reacting to network breaches.', 100, 60),
(80, 'Network Security Project', 'Designing a secure network.', 100, 60),

-- Track 9: AWS Solutions Architect
(81, 'AWS Cloud Fundamentals', 'Core AWS services overview.', 100, 60),
(82, 'EC2 & Load Balancing', 'Deploying and scaling servers.', 100, 60),
(83, 'S3 Storage & Lifecycle', 'Storing and managing data.', 100, 60),
(84, 'RDS & DynamoDB', 'AWS database services.', 100, 60),
(85, 'VPC Networking', 'Configuring AWS networks.', 100, 60),
(86, 'IAM & Security', 'Managing AWS access.', 100, 60),
(87, 'CloudFormation Basics', 'Infrastructure as code.', 100, 60),
(88, 'Monitoring with CloudWatch', 'Observing AWS resources.', 100, 60),
(89, 'Cost Optimization', 'Reducing AWS costs.', 100, 60),
(90, 'AWS Capstone Project', 'Deploy a full AWS architecture.', 100, 60),

-- Track 10: Azure Cloud Engineer
(91, 'Azure Fundamentals', 'Intro to Azure services.', 100, 60),
(92, 'Azure VMs & Networking', 'Deploying and managing VMs.', 100, 60),
(93, 'Azure Storage Solutions', 'Blob, file, and queue storage.', 100, 60),
(94, 'Azure SQL Database', 'Cloud-based relational databases.', 100, 60),
(95, 'Azure Active Directory', 'Identity and access management.', 100, 60),
(96, 'Azure App Services', 'Hosting web apps in Azure.', 100, 60),
(97, 'ARM Templates', 'Azure Resource Manager scripting.', 100, 60),
(98, 'Monitoring with Azure Monitor', 'Tracking resources and alerts.', 100, 60),
(99, 'Azure Security Center', 'Protecting Azure workloads.', 100, 60),
(100, 'Azure Capstone Project', 'Designing a secure Azure solution.', 100, 60),

-- Track 11: Machine Learning
(101, 'Intro to ML', 'Understanding ML concepts.', 100, 60),
(102, 'Data Preprocessing', 'Cleaning and preparing data.', 100, 60),
(103, 'Supervised Learning', 'Regression and classification.', 100, 60),
(104, 'Unsupervised Learning', 'Clustering and dimensionality reduction.', 100, 60),
(105, 'Model Evaluation', 'Measuring model performance.', 100, 60),
(106, 'Feature Engineering', 'Improving model accuracy.', 100, 60),
(107, 'Neural Networks Basics', 'Intro to deep learning.', 100, 60),
(108, 'ML Libraries in Python', 'Using Scikit-learn and TensorFlow.', 100, 60),
(109, 'ML Deployment', 'Deploying models to production.', 100, 60),
(110, 'ML Capstone Project', 'Build an ML-powered application.', 100, 60),

-- Track 12: Natural Language Processing
(111, 'Intro to NLP', 'Text processing basics.', 100, 60),
(112, 'Text Cleaning & Tokenization', 'Preparing text data.', 100, 60),
(113, 'Part-of-Speech Tagging', 'Identifying words’ roles.', 100, 60),
(114, 'Named Entity Recognition', 'Extracting important entities.', 100, 60),
(115, 'Sentiment Analysis', 'Determining emotions in text.', 100, 60),
(116, 'Topic Modeling', 'Grouping text by themes.', 100, 60),
(117, 'Word Embeddings', 'Word2Vec, GloVe, FastText.', 100, 60),
(118, 'Text Classification', 'Categorizing documents.', 100, 60),
(119, 'Chatbot Development', 'Building conversational AI.', 100, 60),
(120, 'NLP Capstone Project', 'End-to-end NLP solution.', 100, 60),

-- Track 13: Enterprise Networking
(121, 'Networking Fundamentals', 'OSI model, TCP/IP.', 100, 60),
(122, 'Switching & VLANs', 'Configuring VLANs and trunks.', 100, 60),
(123, 'Routing Protocols', 'OSPF, EIGRP, BGP.', 100, 60),
(124, 'WAN Technologies', 'MPLS, SD-WAN basics.', 100, 60),
(125, 'IPv6 Implementation', 'Deploying IPv6 networks.', 100, 60),
(126, 'Network Redundancy', 'Failover strategies.', 100, 60),
(127, 'QoS Configuration', 'Prioritizing traffic.', 100, 60),
(128, 'Network Monitoring Tools', 'SNMP, NetFlow.', 100, 60),
(129, 'Troubleshooting Networks', 'Diagnosing connectivity issues.', 100, 60),
(130, 'Enterprise Network Project', 'Designing a large-scale network.', 100, 60),

-- Track 14: Cloud Networking
(131, 'Cloud Networking Basics', 'Intro to networking in the cloud.', 100, 60),
(132, 'Hybrid Cloud Connectivity', 'VPNs and Direct Connect.', 100, 60),
(133, 'Cloud Load Balancing', 'Distributing traffic in the cloud.', 100, 60),
(134, 'Cloud Firewalls', 'Protecting cloud networks.', 100, 60),
(135, 'Cloud DNS Services', 'Managing DNS in cloud environments.', 100, 60),
(136, 'Cloud Network Automation', 'Automating configs.', 100, 60),
(137, 'Cloud Security Best Practices', 'Securing cloud networks.', 100, 60),
(138, 'Multi-Cloud Networking', 'Integrating multiple clouds.', 100, 60),
(139, 'Cloud Network Monitoring', 'Tracking cloud traffic.', 100, 60),
(140, 'Cloud Networking Project', 'Build a cloud network design.', 100, 60),

-- Track 15: Business Process Modelling
(141, 'BPM Fundamentals', 'Understanding business processes.', 100, 60),
(142, 'Process Mapping', 'Creating process diagrams.', 100, 60),
(143, 'BPMN Standards', 'Business Process Model and Notation.', 100, 60),
(144, 'Workflow Automation', 'Automating repetitive tasks.', 100, 60),
(145, 'Process Analysis', 'Finding inefficiencies.', 100, 60),
(146, 'Simulation & Testing', 'Testing process flows.', 100, 60),
(147, 'Process Improvement', 'Implementing better processes.', 100, 60),
(148, 'ERP Integration', 'Integrating processes with ERP systems.', 100, 60),
(149, 'Change Management', 'Managing process changes.', 100, 60),
(150, 'BPM Capstone Project', 'Model and improve a process.', 100, 60),

-- Track 16: Agile Product Ownership
(151, 'Agile Fundamentals', 'Understanding Agile principles.', 100, 60),
(152, 'Scrum Framework', 'Roles, events, artifacts.', 100, 60),
(153, 'User Stories & Backlogs', 'Writing effective user stories.', 100, 60),
(154, 'Prioritization Techniques', 'MoSCoW, Kano models.', 100, 60),
(155, 'Stakeholder Communication', 'Collaborating with stakeholders.', 100, 60),
(156, 'Agile Estimation', 'Story points and planning poker.', 100, 60),
(157, 'Product Roadmaps', 'Long-term product vision.', 100, 60),
(158, 'Release Planning', 'Coordinating releases.', 100, 60),
(159, 'Metrics & KPIs', 'Measuring Agile success.', 100, 60),
(160, 'Agile Product Project', 'Deliver a product increment.', 100, 60),

-- Track 17: Agile Project Management
(161, 'Agile PM Basics', 'Overview of Agile project management.', 100, 60),
(162, 'Scrum Master Skills', 'Facilitating Scrum teams.', 100, 60),
(163, 'Kanban Systems', 'Managing workflow visually.', 100, 60),
(164, 'Agile Planning', 'Iterative planning techniques.', 100, 60),
(165, 'Agile Risk Management', 'Handling risks in Agile.', 100, 60),
(166, 'Team Collaboration Tools', 'Jira, Trello, Asana.', 100, 60),
(167, 'Servant Leadership', 'Leading Agile teams.', 100, 60),
(168, 'Agile Scaling Frameworks', 'SAFe, LeSS, Nexus.', 100, 60),
(169, 'Agile Metrics', 'Velocity, burndown charts.', 100, 60),
(170, 'Agile PM Capstone Project', 'Manage an Agile project.', 100, 60),

-- Track 18: PMP Certification Prep
(171, 'PMP Introduction', 'Understanding PMP framework.', 100, 60),
(172, 'Project Integration Management', 'Coordinating all project elements.', 100, 60),
(173, 'Scope Management', 'Defining project scope.', 100, 60),
(174, 'Schedule Management', 'Developing project timelines.', 100, 60),
(175, 'Cost Management', 'Budgeting and forecasting.', 100, 60),
(176, 'Quality Management', 'Ensuring quality outputs.', 100, 60),
(177, 'Resource Management', 'Managing human resources.', 100, 60),
(178, 'Risk Management', 'Identifying and controlling risks.', 100, 60),
(179, 'Procurement Management', 'Acquiring goods and services.', 100, 60),
(180, 'PMP Practice Exam', 'Preparing for certification.', 100, 60),

-- Track 19: UX Research
(181, 'Intro to UX', 'Understanding user experience.', 100, 60),
(182, 'User Research Methods', 'Interviews, surveys, observations.', 100, 60),
(183, 'Persona Creation', 'Defining target users.', 100, 60),
(184, 'User Journey Mapping', 'Visualizing user flows.', 100, 60),
(185, 'Usability Testing', 'Testing interface usability.', 100, 60),
(186, 'Accessibility Principles', 'Designing for all users.', 100, 60),
(187, 'Information Architecture', 'Structuring content.', 100, 60),
(188, 'Prototyping for UX', 'Low- and high-fidelity prototypes.', 100, 60),
(189, 'Data-Driven Design', 'Using analytics for design.', 100, 60),
(190, 'UX Research Project', 'Conduct a full UX study.', 100, 60),

-- Track 20: UI Prototyping & Design
(191, 'UI Design Fundamentals', 'Basics of user interface design.', 100, 60),
(192, 'Color Theory in UI', 'Choosing effective color palettes.', 100, 60),
(193, 'Typography for UI', 'Selecting readable fonts.', 100, 60),
(194, 'Layout and Grid Systems', 'Arranging elements effectively.', 100, 60),
(195, 'UI Component Libraries', 'Reusable UI elements.', 100, 60),
(196, 'Designing for Mobile', 'Responsive UI design.', 100, 60),
(197, 'Interactive Prototyping', 'Clickable UI prototypes.', 100, 60),
(198, 'UI Animation Basics', 'Adding motion to interfaces.', 100, 60),
(199, 'UI Design Tools', 'Figma, Sketch, Adobe XD.', 100, 60),
(200, 'UI Design Project', 'Create a complete UI prototype.', 100, 60);
go
--==================================================================================================
--Track-Course
INSERT INTO Track_Course (TrackID, CourseID) VALUES
-- Track 1: Full Stack Web Development
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10),

-- Track 2: Mobile App Development
(2, 11), (2, 12), (2, 13), (2, 14), (2, 15), (2, 16), (2, 17), (2, 18), (2, 19), (2, 20),

-- Track 3: Database Administration
(3, 21), (3, 22), (3, 23), (3, 24), (3, 25), (3, 26), (3, 27), (3, 28), (3, 29), (3, 30),

-- Track 4: Data Warehousing
(4, 31), (4, 32), (4, 33), (4, 34), (4, 35), (4, 36), (4, 37), (4, 38), (4, 39), (4, 40),

-- Track 5: SEO & SEM
(5, 41), (5, 42), (5, 43), (5, 44), (5, 45), (5, 46), (5, 47), (5, 48), (5, 49), (5, 50),

-- Track 6: Social Media Marketing
(6, 51), (6, 52), (6, 53), (6, 54), (6, 55), (6, 56), (6, 57), (6, 58), (6, 59), (6, 60),

-- Track 7: Penetration Testing
(7, 61), (7, 62), (7, 63), (7, 64), (7, 65), (7, 66), (7, 67), (7, 68), (7, 69), (7, 70),

-- Track 8: Network Security
(8, 71), (8, 72), (8, 73), (8, 74), (8, 75), (8, 76), (8, 77), (8, 78), (8, 79), (8, 80),

-- Track 9: AWS Solutions Architect
(9, 81), (9, 82), (9, 83), (9, 84), (9, 85), (9, 86), (9, 87), (9, 88), (9, 89), (9, 90),

-- Track 10: Azure Cloud Engineer
(10, 91), (10, 92), (10, 93), (10, 94), (10, 95), (10, 96), (10, 97), (10, 98), (10, 99), (10, 100),

-- Track 11: Machine Learning
(11, 101), (11, 102), (11, 103), (11, 104), (11, 105), (11, 106), (11, 107), (11, 108), (11, 109), (11, 110),

-- Track 12: Natural Language Processing
(12, 111), (12, 112), (12, 113), (12, 114), (12, 115), (12, 116), (12, 117), (12, 118), (12, 119), (12, 120),

-- Track 13: Enterprise Networking
(13, 121), (13, 122), (13, 123), (13, 124), (13, 125), (13, 126), (13, 127), (13, 128), (13, 129), (13, 130),

-- Track 14: Cloud Networking
(14, 131), (14, 132), (14, 133), (14, 134), (14, 135), (14, 136), (14, 137), (14, 138), (14, 139), (14, 140),

-- Track 15: Business Process Modelling
(15, 141), (15, 142), (15, 143), (15, 144), (15, 145), (15, 146), (15, 147), (15, 148), (15, 149), (15, 150),

-- Track 16: Agile Product Ownership
(16, 151), (16, 152), (16, 153), (16, 154), (16, 155), (16, 156), (16, 157), (16, 158), (16, 159), (16, 160),

-- Track 17: Agile Project Management
(17, 161), (17, 162), (17, 163), (17, 164), (17, 165), (17, 166), (17, 167), (17, 168), (17, 169), (17, 170),

-- Track 18: PMP Certification Prep
(18, 171), (18, 172), (18, 173), (18, 174), (18, 175), (18, 176), (18, 177), (18, 178), (18, 179), (18, 180),

-- Track 19: UX Research
(19, 181), (19, 182), (19, 183), (19, 184), (19, 185), (19, 186), (19, 187), (19, 188), (19, 189), (19, 190),

-- Track 20: UI Prototyping & Design
(20, 191), (20, 192), (20, 193), (20, 194), (20, 195), (20, 196), (20, 197), (20, 198), (20, 199), (20, 200);
go
--===============================================================================================================
--Instructor-Course
INSERT INTO Instructor_Courses (InstructorID, CourseID)
VALUES
-- Instructor 11
(11, 1), (11, 2), (11, 3), (11, 4), (11, 5),
(11, 6), (11, 7), (11, 8), (11, 9), (11, 10),

-- Instructor 12
(12, 11), (12, 12), (12, 13), (12, 14), (12, 15),
(12, 16), (12, 17), (12, 18), (12, 19), (12, 20),

-- Instructor 13
(13, 21), (13, 22), (13, 23), (13, 24), (13, 25),
(13, 26), (13, 27), (13, 28), (13, 29), (13, 30),

-- Instructor 14
(14, 31), (14, 32), (14, 33), (14, 34), (14, 35),
(14, 36), (14, 37), (14, 38), (14, 39), (14, 40),

-- Instructor 15
(15, 41), (15, 42), (15, 43), (15, 44), (15, 45),
(15, 46), (15, 47), (15, 48), (15, 49), (15, 50),

-- Instructor 16
(16, 51), (16, 52), (16, 53), (16, 54), (16, 55),
(16, 56), (16, 57), (16, 58), (16, 59), (16, 60),

-- Instructor 17
(17, 61), (17, 62), (17, 63), (17, 64), (17, 65),
(17, 66), (17, 67), (17, 68), (17, 69), (17, 70),

-- Instructor 18
(18, 71), (18, 72), (18, 73), (18, 74), (18, 75),
(18, 76), (18, 77), (18, 78), (18, 79), (18, 80),

-- Instructor 19
(19, 81), (19, 82), (19, 83), (19, 84), (19, 85),
(19, 86), (19, 87), (19, 88), (19, 89), (19, 90),

-- Instructor 20
(20, 91), (20, 92), (20, 93), (20, 94), (20, 95),
(20, 96), (20, 97), (20, 98), (20, 99), (20, 100),

-- Instructor 21
(21, 101), (21, 102), (21, 103), (21, 104), (21, 105),
(21, 106), (21, 107), (21, 108), (21, 109), (21, 110),

-- Instructor 22
(22, 111), (22, 112), (22, 113), (22, 114), (22, 115),
(22, 116), (22, 117), (22, 118), (22, 119), (22, 120),

-- Instructor 23
(23, 121), (23, 122), (23, 123), (23, 124), (23, 125),
(23, 126), (23, 127), (23, 128), (23, 129), (23, 130),

-- Instructor 24
(24, 131), (24, 132), (24, 133), (24, 134), (24, 135),
(24, 136), (24, 137), (24, 138), (24, 139), (24, 140),

-- Instructor 25
(25, 141), (25, 142), (25, 143), (25, 144), (25, 145),
(25, 146), (25, 147), (25, 148), (25, 149), (25, 150),

-- Instructor 26
(26, 151), (26, 152), (26, 153), (26, 154), (26, 155),
(26, 156), (26, 157), (26, 158), (26, 159), (26, 160),

-- Instructor 27
(27, 161), (27, 162), (27, 163), (27, 164), (27, 165),
(27, 166), (27, 167), (27, 168), (27, 169), (27, 170),

-- Instructor 28
(28, 171), (28, 172), (28, 173), (28, 174), (28, 175),
(28, 176), (28, 177), (28, 178), (28, 179), (28, 180),

-- Instructor 29
(29, 181), (29, 182), (29, 183), (29, 184), (29, 185),
(29, 186), (29, 187), (29, 188), (29, 189), (29, 190),

-- Instructor 30
(30, 191), (30, 192), (30, 193), (30, 194), (30, 195),
(30, 196), (30, 197), (30, 198), (30, 199), (30, 200);
go
--==========================================================================================
/*--Exam
INSERT INTO Exam (ExamID, ExamType, Degree)
VALUES
(1, 'exam', 100),
(2, 'exam', 100),
(3, 'exam', 100),
(4, 'exam', 100),
(5, 'exam', 100),
(6, 'exam', 100),
(7, 'exam', 100),
(8, 'exam', 100),
(9, 'exam', 100),
(10, 'exam', 100),
(11, 'corrective', 100),
(12, 'corrective', 100),
(13, 'corrective', 100),
(14, 'corrective', 100),
(15, 'corrective', 100),
(16, 'corrective', 100),
(17, 'corrective', 100),
(18, 'corrective', 100),
(19, 'corrective', 100),
(20, 'corrective', 100);
*/
--===========================================================================================================
--Student-Answer
--===========================================================================================================
--Exam_Student_Course
--=========================================================================================================
--Question_Pool
-- CourseID = 1: HTML & CSS Fundamentals


--- MCQs (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
--(1,1,1,'MCQ','Which tag is used to create a hyperlink in HTML?'),
(2,1,1,'MCQ','What does CSS stand for?'),
(3,1,1,'MCQ','Which property is used to change text color in CSS?'),
(4,1,1,'MCQ','Which tag is used for an unordered list?'),
(5,1,1,'MCQ','Which tag defines a table row?'),
(6,1,1,'MCQ','Which attribute specifies an image URL?'),
(7,1,1,'MCQ','What is the correct HTML element for a line break?'),
(8,1,1,'MCQ','Which CSS property controls the font size?'),
(9,1,1,'MCQ','Which tag is used to define a header in HTML?'),
(10,1,1,'MCQ','Which CSS property is used to change the background color?');
GO

-- True/False (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(11,1,1,'TF','The <div> tag is used to define a section in HTML.'),
(12,1,1,'TF','CSS cannot be used to style HTML elements.'),
(13,1,1,'TF','The <h1> tag defines the largest heading in HTML.'),
(14,1,1,'TF','HTML stands for Hyper Text Markup Language.'),
(15,1,1,'TF','The <p> tag is used for paragraphs.'),
(16,1,1,'TF','The <img> tag does not require a closing tag.'),
(17,1,1,'TF','CSS can be applied inline, internally, or externally.'),
(18,1,1,'TF','The <ul> tag creates a numbered list.'),
(19,1,1,'TF','IDs in HTML must be unique.'),
(20,1,1,'TF','The <a> tag is used to insert an image.');
GO

-- Text Questions (Degree = 5)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(21,1,5,'Text','Explain the difference between inline, block, and inline-block elements in HTML/CSS.'),
(22,1,5,'Text','Describe the box model in CSS.'),
(23,1,5,'Text','Explain the difference between id and class selectors in CSS.'),
(24,1,5,'Text','Describe how to create a responsive layout with CSS.'),
(25,1,5,'Text','Explain how semantic HTML improves accessibility.'),
(26,1,5,'Text','Describe the difference between relative, absolute, and fixed positioning in CSS.'),
(27,1,5,'Text','Explain the difference between internal, external, and inline CSS.'),
(28,1,5,'Text','Describe how to center an element horizontally and vertically using CSS.'),
(29,1,5,'Text','Explain the difference between classes and IDs in CSS selectors.'),
(30,1,5,'Text','Describe the steps to link an external CSS file to an HTML document.');
GO

-- ===========================
-- CourseID = 2: Responsive Web Design
-- ===========================
-- MCQs
-- MCQs (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(31,2,1,'MCQ','Which CSS property is used for flexible box layouts?'),
(32,2,1,'MCQ','Which unit is relative to the viewport width?'),
(33,2,1,'MCQ','What is the purpose of media queries in CSS?'),
(34,2,1,'MCQ','Which property makes an image responsive?'),
(35,2,1,'MCQ','What does the term "mobile-first" design mean?'),
(36,2,1,'MCQ','Which HTML meta tag controls viewport settings?'),
(37,2,1,'MCQ','Which CSS property prevents content overflow?'),
(38,2,1,'MCQ','What is the difference between em and rem units?'),
(39,2,1,'MCQ','Which property sets element width in percentage?'),
(40,2,1,'MCQ','Which framework helps build responsive websites quickly?');
GO

-- True/False (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(41,2,1,'TF','Media queries adjust layouts based on screen size.'),
(42,2,1,'TF','Responsive design only works on mobile devices.'),
(43,2,1,'TF','The viewport meta tag is important for mobile layouts.'),
(44,2,1,'TF','Flexbox helps create flexible and adaptive layouts.'),
(45,2,1,'TF','Percentage widths help with responsiveness.'),
(46,2,1,'TF','CSS Grid cannot be used for responsive layouts.'),
(47,2,1,'TF','Images must always have fixed width for responsive design.'),
(48,2,1,'TF','Mobile-first design starts with small screens.'),
(49,2,1,'TF','Rem units are relative to the root element font size.'),
(50,2,1,'TF','Using em units can help scale elements relative to their parent.');
GO

-- Text Questions (Degree = 5)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(51,2,5,'Text','Explain the concept of mobile-first design.'),
(52,2,5,'Text','Describe how to use media queries for different screen sizes.'),
(53,2,5,'Text','Explain the difference between Flexbox and CSS Grid.'),
(54,2,5,'Text','Describe how to make images responsive in a webpage.'),
(55,2,5,'Text','Explain how to optimize typography for different devices.'),
(56,2,5,'Text','Describe how to handle content overflow in responsive layouts.'),
(57,2,5,'Text','Explain the difference between relative and absolute units in CSS.'),
(58,2,5,'Text','Describe best practices for designing responsive navigation menus.'),
(59,2,5,'Text','Explain how viewport settings affect responsive design.'),
(60,2,5,'Text','Describe strategies to make tables responsive.');
GO

-- ===========================
-- CourseID = 3: JavaScript Essentials
-- ===========================
-- MCQs
-- MCQs (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(61,3,1,'MCQ','Which keyword declares a variable in JavaScript?'),
(62,3,1,'MCQ','Which symbol is used for strict equality comparison?'),
(63,3,1,'MCQ','Which method converts a JSON string into an object?'),
(64,3,1,'MCQ','Which event occurs when a user clicks an element?'),
(65,3,1,'MCQ','Which function is used to parse a string into an integer?'),
(66,3,1,'MCQ','Which object represents the browser window?'),
(67,3,1,'MCQ','Which method adds an element to the end of an array?'),
(68,3,1,'MCQ','Which keyword defines a constant?'),
(69,3,1,'MCQ','Which method returns the length of an array?'),
(70,3,1,'MCQ','Which symbol is used to denote a template literal?');
GO

-- True/False (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(71,3,1,'TF','JavaScript is case-sensitive.'),
(72,3,1,'TF','The document object is part of the DOM.'),
(73,3,1,'TF','JavaScript can manipulate HTML elements dynamically.'),
(74,3,1,'TF','Variables declared with var have function scope.'),
(75,3,1,'TF','Constants cannot be reassigned.'),
(76,3,1,'TF','The window object represents the entire browser.'),
(77,3,1,'TF','Arrays in JavaScript are zero-indexed.'),
(78,3,1,'TF','Template literals are enclosed by backticks (`).'),
(79,3,1,'TF','The parseInt() function converts a string to an integer.'),
(80,3,1,'TF','The += operator adds and assigns a value.');
GO

-- Text Questions (Degree = 5)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(81,3,5,'Text','Explain the difference between var, let, and const in JavaScript.'),
(82,3,5,'Text','Describe how to use functions in JavaScript.'),
(83,3,5,'Text','Explain event handling in JavaScript.'),
(84,3,5,'Text','Describe how to manipulate the DOM with JavaScript.'),
(85,3,5,'Text','Explain how closures work in JavaScript.'),
(86,3,5,'Text','Describe the difference between synchronous and asynchronous code.'),
(87,3,5,'Text','Explain how arrays and objects are used in JavaScript.'),
(88,3,5,'Text','Describe how template literals work and when to use them.'),
(89,3,5,'Text','Explain the concept of scope in JavaScript.'),
(90,3,5,'Text','Describe how to handle errors with try/catch.');
GO

-- ===========================
-- CourseID = 4: DOM Manipulation
-- ===========================
-- MCQs
-- MCQs (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(91,4,1,'MCQ','Which method is used to get an element by its ID?'),
(92,4,1,'MCQ','Which method adds a new element to the DOM?'),
(93,4,1,'MCQ','Which property changes the text of an element?'),
(94,4,1,'MCQ','Which method removes a child element?'),
(95,4,1,'MCQ','Which event triggers when the DOM content is fully loaded?'),
(96,4,1,'MCQ','Which property is used to access child nodes?'),
(97,4,1,'MCQ','Which method searches for elements by class name?'),
(98,4,1,'MCQ','Which method replaces an existing element with another?'),
(99,4,1,'MCQ','Which property controls the HTML content inside an element?'),
(100,4,1,'MCQ','Which method returns the parent element of a node?');
GO

-- True/False (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(101,4,1,'TF','The getElementById() method returns a single element.'),
(102,4,1,'TF','appendChild() adds an element as the last child.'),
(103,4,1,'TF','innerText changes the visible text of an element.'),
(104,4,1,'TF','removeChild() deletes a specified child element.'),
(105,4,1,'TF','DOMContentLoaded fires when the entire page, including images, is loaded.'),
(106,4,1,'TF','childNodes returns all child nodes of an element.'),
(107,4,1,'TF','getElementsByClassName() returns a live HTMLCollection.'),
(108,4,1,'TF','replaceChild() replaces an existing child with a new node.'),
(109,4,1,'TF','innerHTML changes the HTML content of an element.'),
(110,4,1,'TF','parentNode returns the parent node of a specified element.');
GO

-- Text Questions (Degree = 5)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(111,4,5,'Text','Explain the difference between innerText and innerHTML.'),
(112,4,5,'Text','Describe how to create, append, and remove DOM elements dynamically.'),
(113,4,5,'Text','Explain the difference between getElementById, getElementsByClassName, and querySelector.'),
(114,4,5,'Text','Describe how to handle events on DOM elements.'),
(115,4,5,'Text','Explain event delegation and its advantages.'),
(116,4,5,'Text','Describe how to traverse DOM nodes efficiently.'),
(117,4,5,'Text','Explain how to replace or update elements dynamically.'),
(118,4,5,'Text','Describe how to use dataset attributes for storing custom data.'),
(119,4,5,'Text','Explain the difference between live and static node lists.'),
(120,4,5,'Text','Describe how to prevent default actions when handling DOM events.');
GO

-- ===========================
-- CourseID = 5: Version Control with Git
-- ===========================
-- MCQs (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(121,5,1,'MCQ','Which command initializes a new Git repository?'),
(122,5,1,'MCQ','Which command stages changes for commit?'),
(123,5,1,'MCQ','Which command commits staged changes?'),
(124,5,1,'MCQ','Which command shows the commit history?'),
(125,5,1,'MCQ','Which command creates a new branch?'),
(126,5,1,'MCQ','Which command switches to another branch?'),
(127,5,1,'MCQ','Which command merges branches?'),
(128,5,1,'MCQ','Which command discards local changes in a file?'),
(129,5,1,'MCQ','Which file tracks ignored files in Git?'),
(130,5,1,'MCQ','Which command clones a remote repository?');
GO

-- True/False (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(131,5,1,'TF','git init initializes a new repository.'),
(132,5,1,'TF','git add stages files for commit.'),
(133,5,1,'TF','git commit -m "msg" creates a new commit.'),
(134,5,1,'TF','git log shows the commit history.'),
(135,5,1,'TF','git branch creates a new branch.'),
(136,5,1,'TF','git checkout switches branches.'),
(137,5,1,'TF','git merge combines branches.'),
(138,5,1,'TF','git reset --hard discards local changes.'),
(139,5,1,'TF','.gitignore tracks files that should be ignored.'),
(140,5,1,'TF','git clone copies a remote repository locally.');
GO

-- Text Questions (Degree = 5)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(141,5,5,'Text','Explain the difference between git pull and git fetch.'),
(142,5,5,'Text','Describe how to resolve merge conflicts in Git.'),
(143,5,5,'Text','Explain the purpose of a remote repository.'),
(144,5,5,'Text','Describe branching strategies in Git.'),
(145,5,5,'Text','Explain the difference between staging and committing.'),
(146,5,5,'Text','Describe how to revert a commit.'),
(147,5,5,'Text','Explain how to clone and set up a repository locally.'),
(148,5,5,'Text','Describe the purpose of tags in Git.'),
(149,5,5,'Text','Explain how to view changes made to files before committing.'),
(150,5,5,'Text','Describe best practices for commit messages.');
GO

-- ===========================
-- CourseID = 6: Backend with Node.js
-- ===========================
-- MCQs (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(151,6,1,'MCQ','Which command initializes a Node.js project?'),
(152,6,1,'MCQ','Which module is used to create a basic HTTP server?'),
(153,6,1,'MCQ','Which object provides information about the current process?'),
(154,6,1,'MCQ','Which method reads files asynchronously in Node.js?'),
(155,6,1,'MCQ','Which keyword imports modules in Node.js?'),
(156,6,1,'MCQ','Which Node.js module handles file system operations?'),
(157,6,1,'MCQ','Which function schedules a task after a delay?'),
(158,6,1,'MCQ','Which module is built-in for path manipulations?'),
(159,6,1,'MCQ','Which global object represents the console?'),
(160,6,1,'MCQ','Which module is used to work with events in Node.js?');
GO

-- True/False (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(161,6,1,'TF','Node.js is single-threaded.'),
(162,6,1,'TF','The require() function is used to import modules.'),
(163,6,1,'TF','fs.readFileSync() reads files synchronously.'),
(164,6,1,'TF','Node.js uses JavaScript runtime outside the browser.'),
(165,6,1,'TF','setTimeout() can delay execution of a function.'),
(166,6,1,'TF','The process object gives info about the Node.js process.'),
(167,6,1,'TF','The path module is used for URL routing.'),
(168,6,1,'TF','console.log() outputs messages to the console.'),
(169,6,1,'TF','The EventEmitter class allows handling events.'),
(170,6,1,'TF','Node.js is designed for server-side development.');
GO

-- Text Questions (Degree = 5)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(171,6,5,'Text','Explain the Node.js event loop.'),
(172,6,5,'Text','Describe how Node.js handles asynchronous I/O.'),
(173,6,5,'Text','Explain how to create a basic HTTP server.'),
(174,6,5,'Text','Describe the purpose of npm and package.json.'),
(175,6,5,'Text','Explain how to use the fs module to read/write files.'),
(176,6,5,'Text','Describe the use of global objects in Node.js.'),
(177,6,5,'Text','Explain how to handle events using EventEmitter.'),
(178,6,5,'Text','Describe the process object and its key properties.'),
(179,6,5,'Text','Explain how to organize a Node.js project using modules.'),
(180,6,5,'Text','Describe error handling strategies in Node.js.');
GO

-- ===========================
-- CourseID = 7: Express.js Framework
-- ===========================
-- MCQs (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(181,7,1,'MCQ','Which method defines a route for GET requests in Express?'),
(182,7,1,'MCQ','Which function starts an Express server?'),
(183,7,1,'MCQ','Which object represents the HTTP request in Express?'),
(184,7,1,'MCQ','Which object represents the HTTP response in Express?'),
(185,7,1,'MCQ','Which middleware parses incoming JSON requests?'),
(186,7,1,'MCQ','Which method mounts middleware at a specific path?'),
(187,7,1,'MCQ','Which method handles errors in Express middleware?'),
(188,7,1,'MCQ','Which module is used to handle routing in Express?'),
(189,7,1,'MCQ','Which method sends a response back to the client?'),
(190,7,1,'MCQ','Which property contains route parameters in Express?');
GO

-- True/False (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(191,7,1,'TF','app.get() handles GET requests.'),
(192,7,1,'TF','res.send() sends a response to the client.'),
(193,7,1,'TF','req.body contains parsed request data.'),
(194,7,1,'TF','Middleware functions have access to req, res, and next.'),
(195,7,1,'TF','app.use() can mount middleware at a path.'),
(196,7,1,'TF','Express automatically parses JSON without middleware.'),
(197,7,1,'TF','Errors in middleware are handled with four arguments (err, req, res, next).'),
(198,7,1,'TF','Route parameters can be accessed via req.params.'),
(199,7,1,'TF','Express is a framework built on top of Node.js.'),
(200,7,1,'TF','Middleware executes in the order it is added.');
GO

-- Text Questions (Degree = 5)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(201,7,5,'Text','Explain the difference between app.get() and app.post().'),
(202,7,5,'Text','Describe how middleware functions work in Express.'),
(203,7,5,'Text','Explain how to handle errors in Express middleware.'),
(204,7,5,'Text','Describe how to use route parameters and query strings.'),
(205,7,5,'Text','Explain how to organize routes using Router objects.'),
(206,7,5,'Text','Describe how to serve static files in Express.'),
(207,7,5,'Text','Explain the purpose of next() in middleware.'),
(208,7,5,'Text','Describe how to parse JSON and URL-encoded data.'),
(209,7,5,'Text','Explain how to handle asynchronous operations in routes.'),
(210,7,5,'Text','Describe best practices for structuring an Express application.');
GO

-- ===========================
-- CourseID = 8: RESTful API Development
-- ===========================
-- MCQs (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(211,8,1,'MCQ','Which HTTP method is used to retrieve data?'),
(212,8,1,'MCQ','Which HTTP method is used to create data?'),
(213,8,1,'MCQ','Which HTTP method is used to update data?'),
(214,8,1,'MCQ','Which HTTP method is used to delete data?'),
(215,8,1,'MCQ','What does REST stand for?'),
(216,8,1,'MCQ','Which status code indicates success?'),
(217,8,1,'MCQ','Which status code indicates a resource was not found?'),
(218,8,1,'MCQ','Which format is commonly used for API responses?'),
(219,8,1,'MCQ','Which header specifies the content type of the request?'),
(220,8,1,'MCQ','Which method handles route parameters in RESTful APIs?');
GO

-- True/False (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(221,8,1,'TF','REST APIs use standard HTTP methods.'),
(222,8,1,'TF','Status code 200 indicates success.'),
(223,8,1,'TF','JSON is a common response format.'),
(224,8,1,'TF','RESTful APIs are stateful.'),
(225,8,1,'TF','GET requests should not modify server data.'),
(226,8,1,'TF','POST requests create new resources.'),
(227,8,1,'TF','PUT requests update existing resources.'),
(228,8,1,'TF','DELETE requests remove resources.'),
(229,8,1,'TF','HTTP 404 means resource not found.'),
(230,8,1,'TF','REST APIs follow client-server architecture.');
GO

-- Text Questions (Degree = 5)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(231,8,5,'Text','Explain the principles of RESTful API design.'),
(232,8,5,'Text','Describe how to implement CRUD operations in a REST API.'),
(233,8,5,'Text','Explain the importance of status codes in API responses.'),
(234,8,5,'Text','Describe how to handle authentication in REST APIs.'),
(235,8,5,'Text','Explain how to handle query parameters and route parameters.'),
(236,8,5,'Text','Describe how to structure RESTful endpoints.'),
(237,8,5,'Text','Explain best practices for error handling in APIs.'),
(238,8,5,'Text','Describe how to implement pagination in API responses.'),
(239,8,5,'Text','Explain how to document RESTful APIs.'),
(240,8,5,'Text','Describe how to test REST APIs effectively.');
GO
-- ===========================
-- CourseID = 9: Database Integration
-- ===========================
-- MCQs (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(241,9,1,'MCQ','Which SQL statement retrieves data from a table?'),
(242,9,1,'MCQ','Which command inserts new data into a table?'),
(243,9,1,'MCQ','Which SQL clause filters query results?'),
(244,9,1,'MCQ','Which SQL clause orders query results?'),
(245,9,1,'MCQ','Which database is document-oriented?'),
(246,9,1,'MCQ','Which database is relational?'),
(247,9,1,'MCQ','Which Node.js module connects to MySQL?'),
(248,9,1,'MCQ','Which Node.js module connects to MongoDB?'),
(249,9,1,'MCQ','Which command deletes data from a table?'),
(250,9,1,'MCQ','Which command updates existing data in a table?');
GO

-- True/False (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(251,9,1,'TF','MySQL is a relational database.'),
(252,9,1,'TF','MongoDB is a NoSQL database.'),
(253,9,1,'TF','The SELECT statement retrieves data from tables.'),
(254,9,1,'TF','INSERT adds new data to a table.'),
(255,9,1,'TF','UPDATE modifies existing data in a table.'),
(256,9,1,'TF','DELETE removes data from a table.'),
(257,9,1,'TF','Node.js can interact with databases using drivers.'),
(258,9,1,'TF','MongoDB stores data in JSON-like documents.'),
(259,9,1,'TF','MySQL uses tables with rows and columns.'),
(260,9,1,'TF','SQL queries are case-insensitive.');
GO

-- Text Questions (Degree = 5)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(261,9,5,'Text','Explain how to connect a Node.js app to MySQL.'),
(262,9,5,'Text','Describe how to connect a Node.js app to MongoDB.'),
(263,9,5,'Text','Explain the difference between relational and non-relational databases.'),
(264,9,5,'Text','Describe how to perform CRUD operations using Node.js and databases.'),
(265,9,5,'Text','Explain the benefits of database integration in full stack apps.'),
(266,9,5,'Text','Describe how to handle database connection errors.'),
(267,9,5,'Text','Explain how to query data efficiently from multiple databases.'),
(268,9,5,'Text','Describe how to use ORMs for database operations.'),
(269,9,5,'Text','Explain the difference between embedded documents and references in MongoDB.'),
(270,9,5,'Text','Describe how to ensure data consistency when integrating multiple databases.');
GO

-- ===========================
-- CourseID = 10: Full Stack Capstone Project
-- ===========================
-- MCQs (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(271,10,1,'MCQ','Which technology is used for the frontend?'),
(272,10,1,'MCQ','Which technology is used for the backend?'),
(273,10,1,'MCQ','Which database stores the application data?'),
(274,10,1,'MCQ','Which HTTP method is used to send form data?'),
(275,10,1,'MCQ','Which tool is used for version control?'),
(276,10,1,'MCQ','Which command deploys the app to production?'),
(277,10,1,'MCQ','Which API format is commonly used for communication?'),
(278,10,1,'MCQ','Which design principle ensures scalability?'),
(279,10,1,'MCQ','Which architecture separates frontend and backend concerns?'),
(280,10,1,'MCQ','Which environment variable stores the database URL?');
GO

-- True/False (Degree = 1)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(281,10,1,'TF','Full stack apps include both frontend and backend.'),
(282,10,1,'TF','The backend handles business logic.'),
(283,10,1,'TF','Frontend handles user interface and experience.'),
(284,10,1,'TF','REST APIs are used for communication between frontend and backend.'),
(285,10,1,'TF','Version control is optional in capstone projects.'),
(286,10,1,'TF','Environment variables store configuration data.'),
(287,10,1,'TF','Scalable apps handle increased load efficiently.'),
(288,10,1,'TF','Database integration is essential for full stack apps.'),
(289,10,1,'TF','Testing is part of the development workflow.'),
(290,10,1,'TF','Deployment moves the app from development to production.');
GO

-- Text Questions (Degree = 5)
INSERT INTO Question_Pool (QuestionID, CourseID, QuestionDegree, QuestionType, Questions)
VALUES
(291,10,5,'Text','Describe the full stack project architecture.'),
(292,10,5,'Text','Explain how frontend and backend communicate.'),
(293,10,5,'Text','Describe how to structure the project files and folders.'),
(294,10,5,'Text','Explain how to implement authentication and authorization.'),
(295,10,5,'Text','Describe how to integrate multiple databases.'),
(296,10,5,'Text','Explain best practices for deploying full stack apps.'),
(297,10,5,'Text','Describe testing strategies for a full stack project.'),
(298,10,5,'Text','Explain how to handle environment configuration securely.'),
(299,10,5,'Text','Describe how to implement a responsive frontend.'),
(300,10,5,'Text','Explain project management strategies for a capstone project.');
GO
--=============================================================================================================
--Instructor_Question_Exam


select * from Users

go
--=============================================================================================================
--Answer_text
INSERT INTO Answer_text (QuestionID, TextAnswer)
VALUES
(21, 'Inline elements do not start on a new line and only take up as much width as necessary (e.g., <span>). Block elements start on a new line and take up the full width available (e.g., <div>). Inline-block elements behave like inline elements but allow setting width and height.'),
(22, 'The box model describes the rectangular boxes generated for elements, consisting of content, padding, border, and margin.'),
(23, 'An id selector targets a single unique element on a page and is prefixed with #, while a class selector can target multiple elements and is prefixed with a dot (.className).'),
(24, 'You can create a responsive layout by using relative units like percentages, flexible grids, media queries, and responsive frameworks such as Bootstrap.'),
(25, 'Semantic HTML uses meaningful tags (like <header>, <main>, <article>) that convey the purpose of the content, improving accessibility for assistive technologies and SEO.'),
(26, 'Relative positioning moves an element relative to its normal position. Absolute positioning positions an element relative to its first positioned ancestor. Fixed positioning positions an element relative to the viewport and does not move on scroll.'),
(27, 'Internal CSS is written inside a <style> tag within the HTML file. External CSS is stored in a separate .css file and linked to HTML. Inline CSS is applied directly to an element via the style attribute.'),
(28, 'You can center an element by using CSS flexbox (display: flex; align-items: center; justify-content: center;) or by using absolute positioning with transform translate.'),
(29, 'Classes can be applied to multiple elements and allow for reusability, while IDs are unique and should be applied to only one element per page.'),
(30, 'Save your CSS file with a .css extension, then link it in the HTML <head> using <link rel="stylesheet" href="styles.css">.');
go
INSERT INTO Answer_text (QuestionID, TextAnswer)
VALUES
(51, 'Mobile-first design is an approach where you design and build for smaller screens first, then progressively enhance the design for larger screens using media queries.'),
(52, 'Media queries allow you to apply different CSS styles based on device characteristics like width, height, or orientation, enabling layout adjustments for various screen sizes.'),
(53, 'Flexbox is a one-dimensional layout system designed for arranging items in a row or column, while CSS Grid is a two-dimensional system that can handle both rows and columns simultaneously.'),
(54, 'Make images responsive by using CSS properties like max-width: 100% and height: auto, or by using the HTML srcset attribute for different resolutions.'),
(55, 'Typography can be optimized by using relative units like em or rem, maintaining proper line-height, and adjusting font size via media queries for different devices.'),
(56, 'Content overflow can be handled using CSS properties like overflow-wrap, white-space, and scrollable containers, ensuring the layout remains intact on small screens.'),
(57, 'Relative units (%, em, rem, vh, vw) scale based on parent or root element size, while absolute units (px, cm, in) remain fixed regardless of the viewport size.'),
(58, 'Best practices for responsive navigation menus include using collapsible menus (hamburger icon), dropdowns, and flexbox/grid layouts that adapt to screen size.'),
(59, 'Viewport settings, defined in the <meta name="viewport"> tag, control how a page is scaled and displayed on different devices, crucial for proper responsive behavior.'),
(60, 'To make tables responsive, use techniques like wrapping in a scrollable container, stacking cells vertically for small screens, or using CSS Grid for flexible layouts.');
go
INSERT INTO Answer_text (QuestionID, TextAnswer)
VALUES
(81, 'var has function scope and can be redeclared; let has block scope and can be updated but not redeclared; const has block scope and cannot be reassigned after initialization.'),
(82, 'Functions in JavaScript are reusable blocks of code that perform a task. They can be declared using function declarations, function expressions, or arrow functions, and are called by their name followed by parentheses.'),
(83, 'Event handling involves attaching functions (event listeners) to DOM elements so they respond to user actions like clicks, keypresses, or form submissions.'),
(84, 'The DOM can be manipulated by selecting elements using methods like getElementById or querySelector, then modifying their properties, attributes, or inner HTML.'),
(85, 'Closures occur when an inner function remembers and can access variables from its outer function’s scope, even after the outer function has returned.'),
(86, 'Synchronous code runs line-by-line in order, blocking subsequent code until completion; asynchronous code runs independently, allowing other tasks to proceed, often using callbacks, promises, or async/await.'),
(87, 'Arrays store ordered lists of values, while objects store key-value pairs. Both can hold any type of data and can be manipulated with built-in JavaScript methods.'),
(88, 'Template literals use backticks (`) and allow embedding expressions using ${expression}, supporting multi-line strings and dynamic content.'),
(89, 'Scope determines where variables can be accessed. JavaScript has global scope, function scope, and block scope depending on how variables are declared.'),
(90, 'Errors can be handled using try/catch, where try contains code that may throw an error and catch contains code to handle the error gracefully.');
go
INSERT INTO Answer_text (QuestionID, TextAnswer)
VALUES
(111, 'innerText returns the visible text content of an element and respects CSS styling, whereas innerHTML returns the HTML markup inside the element, including tags.'),
(112, 'To create a DOM element, use document.createElement; to append it, use appendChild or append; to remove it, use removeChild or the element.remove() method.'),
(113, 'getElementById selects a single element by its ID; getElementsByClassName returns a live HTMLCollection of elements with a given class; querySelector selects the first element matching a CSS selector.'),
(114, 'Events are handled by attaching event listeners using addEventListener, specifying the event type and a callback function to run when the event occurs.'),
(115, 'Event delegation attaches a single event listener to a parent element to handle events on its children, improving performance and handling dynamically added elements.'),
(116, 'DOM traversal uses properties like parentNode, childNodes, nextSibling, and previousSibling, or more specific methods like firstElementChild and nextElementSibling for efficiency.'),
(117, 'To replace or update elements, you can use methods like replaceChild for replacement, or directly modify properties such as textContent, innerHTML, or attributes.'),
(118, 'Dataset attributes (data-*) store custom data on HTML elements and are accessed in JavaScript via element.dataset.propertyName.'),
(119, 'Live node lists (like from getElementsByClassName) automatically update when the DOM changes; static node lists (like from querySelectorAll) do not change after they are created.'),
(120, 'Preventing default actions is done using event.preventDefault() inside an event handler to stop the browser’s default behavior, such as navigating on a link click.');
go
INSERT INTO Answer_text (QuestionID, TextAnswer)
VALUES
(141, 'git fetch downloads changes from a remote repository without merging them into your working branch, while git pull fetches and then automatically merges them.'),
(142, 'To resolve merge conflicts, open the conflicting files, decide which changes to keep, edit accordingly, remove conflict markers (<<<<, ====, >>>>), then stage and commit the resolved files.'),
(143, 'A remote repository is a version of your project stored on the internet or network, enabling collaboration and backup (e.g., GitHub, GitLab, Bitbucket).'),
(144, 'Common branching strategies include feature branching, Gitflow, and trunk-based development, which organize how and when branches are created, merged, and released.'),
(145, 'Staging adds changes to the index (preparing them for commit), while committing saves those staged changes to the repository history.'),
(146, 'To revert a commit, use git revert <commit-hash> to create a new commit that undoes the changes, or git reset for removing commits from history.'),
(147, 'To clone a repository, use git clone <repo-URL>, then navigate into the folder and set up configurations like username, email, and remotes if needed.'),
(148, 'Tags in Git mark specific commits as important, often used for version releases; they can be lightweight or annotated with metadata.'),
(149, 'View changes before committing using git diff for unstaged changes, or git diff --cached for staged changes.'),
(150, 'Best practices for commit messages include writing clear, concise descriptions, using the imperative mood, and explaining the reason for the change if not obvious.');
 --==================================================================================================================
 go
 select QP.Questions, C.CourseName from Course C
 inner join Question_Pool QP on C.CourseID = QP.CourseID
 where QP.QuestionType = 'Text'
 use Examination_System
 select * from  Answer_text
 
 --Question_MCQ Table
 go
 INSERT INTO Question_MCQ (QuestionID) VALUES
(2),(3),(4),(5),
(6),(7),(8),(9),(10),
(11),(12),(13),(14),(15),
(16),(17),(18),(19),(20);
go
INSERT INTO Question_MCQ (QuestionID)
SELECT QuestionID
FROM Question_Pool
WHERE QuestionID BETWEEN 31 AND 50;
go
--=======================================================================================================================================
--Question_Option
-- HTML & CSS (Course 1, Q1–Q10)
INSERT INTO Question_Option (AnswerID, QuestionOption) VALUES
-- HTML/CSS MCQ
/*(1,'<a>'),
(2,'<link>'),
(3,'<href>'),
(4,'<hyperlink>'),*/

(5,'Cascading Style Sheets'),
(6,'Creative Style Syntax'),
(7,'Computer Style Sheet'),
(8,'Colorful Style Statements'),

(9,'color'),
(10,'font-color'),
(11,'text-color'),
(12,'background-color'),

(13,'<ul>'),
(14,'<ol>'),
(15,'<li>'),
(16,'<list>'),

(17,'<tr>'),
(18,'<td>'),
(19,'<th>'),
(20,'<row>'),

(21,'src'),
(22,'href'),
(23,'link'),
(24,'alt'),

(25,'<br>'),
(26,'<break>'),
(27,'<lb>'),
(28,'<newline>'),

(29,'font-size'),
(30,'text-size'),
(31,'size'),
(32,'fontsize'),

(33,'<h1>'),
(34,'<header>'),
(35,'<head>'),
(36,'<h6>'),

(37,'background-color'),
(38,'bgcolor'),
(39,'color'),
(40,'background'),

-- CSS Responsive Design MCQ
(41,'display: flex;'),
(42,'display: block;'),
(43,'display: grid;'),
(44,'flex-box: true;'),

(45,'vw'),
(46,'vh'),
(47,'em'),
(48,'rem'),

(49,'Apply styles based on conditions'),
(50,'Load images faster'),
(51,'Create animations'),
(52,'Optimize SEO'),

(53,'max-width: 100%'),
(54,'width: fixed'),
(55,'image-fit: cover'),
(56,'min-width: auto'),

(57,'Design for small screens first'),
(58,'Design for desktops first'),
(59,'Use only mobile devices'),
(60,'Ignore responsiveness'),

(61,'<meta name="viewport">'),
(62,'<meta charset="UTF-8">'),
(63,'<meta name="description">'),
(64,'<meta name="author">'),

(65,'overflow'),
(66,'hidden'),
(67,'scroll'),
(68,'auto'),

(69,'em depends on parent, rem on root'),
(70,'em depends on root, rem on parent'),
(71,'Both depend on parent'),
(72,'Both depend on root'),

(73,'width: 50%'),
(74,'width: 500px'),
(75,'max-width: fit-content'),
(76,'width: auto'),

(77,'Bootstrap'),
(78,'React'),
(79,'Angular'),
(80,'Tailwind CSS'),

-- HTML True/False
(81,'True'), (82,'False'),
(83,'True'), (84,'False'),
(85,'True'), (86,'False'),
(87,'True'), (88,'False'),
(89,'True'), (90,'False'),
(91,'True'), (92,'False'),
(93,'True'), (94,'False'),
(95,'True'), (96,'False'),
(97,'True'), (98,'False'),
(99,'True'), (100,'False'),

-- Responsive True/False
(101,'True'), (102,'False'),
(103,'True'), (104,'False'),
(105,'True'), (106,'False'),
(107,'True'), (108,'False'),
(109,'True'), (110,'False'),
(111,'True'), (112,'False'),
(113,'True'), (114,'False'),
(115,'True'), (116,'False'),
(117,'True'), (118,'False'),
(119,'True'), (120,'False');
go
-- Question 31
INSERT INTO Question_Option (AnswerID, QuestionOption) VALUES
(121, 'display: flex;'),
(122, 'display: block;'),
(123, 'display: grid;'),
(124, 'flex-box: true;');
go
-- Question 32
INSERT INTO Question_Option (AnswerID, QuestionOption) VALUES
(125, 'vw'),
(126, 'vh'),
(127, 'em'),
(128, 'rem');
go
-- Question 33
INSERT INTO Question_Option (AnswerID, QuestionOption) VALUES
(129, 'Apply styles based on conditions'),
(130, 'Load images faster'),
(131, 'Create animations'),
(132, 'Optimize SEO');
go
-- Question 34
INSERT INTO Question_Option (AnswerID, QuestionOption) VALUES
(133, 'max-width: 100%'),
(134, 'width: fixed'),
(135, 'image-fit: cover'),
(136, 'min-width: auto');
go
-- Question 35
INSERT INTO Question_Option (AnswerID, QuestionOption) VALUES
(137, 'Design for small screens first'),
(138, 'Design for desktops first'),
(139, 'Use only mobile devices'),
(140, 'Ignore responsiveness');
go
-- Question 36
INSERT INTO Question_Option (AnswerID, QuestionOption) VALUES
(141, '<meta name="viewport">'),
(142, '<meta charset="UTF-8">'),
(143, '<meta name="description">'),
(144, '<meta name="author">');
go
-- Question 37
INSERT INTO Question_Option (AnswerID, QuestionOption) VALUES
(145, 'overflow'),
(146, 'hidden'),
(147, 'scroll'),
(148, 'auto');
go
-- Question 38
INSERT INTO Question_Option (AnswerID, QuestionOption) VALUES
(149, 'em depends on parent, rem on root'),
(150, 'em depends on root, rem on parent'),
(151, 'Both depend on parent'),
(152, 'Both depend on root');
go
-- Question 39
INSERT INTO Question_Option (AnswerID, QuestionOption) VALUES
(153, 'width: 50%'),
(154, 'width: 500px'),
(155, 'max-width: fit-content'),
(156, 'width: auto');
go
-- Question 40
INSERT INTO Question_Option (AnswerID, QuestionOption) VALUES
(157, 'Bootstrap'),
(158, 'React'),
(159, 'Angular'),
(160, 'Tailwind CSS');
go
-- Insert options for True/False questions (IDs 41–50)
INSERT INTO Question_Option (AnswerID, QuestionOption) VALUES
-- Q41
(1, 'True'),
(0, 'False')

go
--==========================================================================================================
--Answer_MCQ Table
INSERT INTO Answer_MCQ (QuestionID, AnswerID, IsCorrect) VALUES
-- Q2
(2, 5, 1),
(2, 6, 0),
(2, 7, 0),
(2, 8, 0),

-- Q3
(3, 9, 1),
(3, 10, 0),
(3, 11, 0),
(3, 12, 0),

-- Q4
(4, 13, 1),
(4, 14, 0),
(4, 15, 0),
(4, 16, 0),

-- Q5
(5, 17, 1),
(5, 18, 0),
(5, 19, 0),
(5, 20, 0),

-- Q6
(6, 21, 1),
(6, 22, 0),
(6, 23, 0),
(6, 24, 0),

-- Q7
(7, 25, 1),
(7, 26, 0),
(7, 27, 0),
(7, 28, 0),

-- Q8
(8, 29, 1),
(8, 30, 0),
(8, 31, 0),
(8, 32, 0),

-- Q9
(9, 33, 1),
(9, 34, 0),
(9, 35, 0),
(9, 36, 0),

-- Q10
(10, 37, 1),
(10, 38, 0),
(10, 39, 0),
(10, 40, 0);
go
-- Questions 11–20 (True/False)
INSERT INTO Answer_MCQ (QuestionID, AnswerID, IsCorrect)
VALUES
(11, 1, 1),
(11, 0, 0),
(12, 1, 1),
(12, 0, 0),
(13, 1, 1),
(13, 0, 0),
(14, 1, 1),
(14, 0, 0),
(15, 1, 1),
(15, 0, 0),
(16, 1, 1),
(16, 0, 0),
(17, 1, 1),
(17, 0, 0),
(18, 1, 1),
(18, 0, 0),
(19, 1, 1),
(19, 0, 0),
(20, 1, 1),
(20, 0, 0);
go
-- Questions 31–40 (CSS Responsive MCQ)
INSERT INTO Answer_MCQ (QuestionID, AnswerID, IsCorrect) VALUES
(31, 121, 1), (31, 122, 0), (31, 123, 0), (31, 124, 0),
(32, 125, 1), (32, 126, 0), (32, 127, 0), (32, 128, 0),
(33, 129, 1), (33, 130, 0), (33, 131, 0), (33, 132, 0),
(34, 133, 1), (34, 134, 0), (34, 135, 0), (34, 136, 0),
(35, 137, 1), (35, 138, 0), (35, 139, 0), (35, 140, 0),
(36, 141, 1), (36, 142, 0), (36, 143, 0), (36, 144, 0),
(37, 145, 1), (37, 146, 0), (37, 147, 0), (37, 148, 0),
(38, 149, 1), (38, 150, 0), (38, 151, 0), (38, 152, 0),
(39, 153, 1), (39, 154, 0), (39, 155, 0), (39, 156, 0),
(40, 157, 1), (40, 158, 0), (40, 159, 0), (40, 160, 0);
go
-- Questions 41–50 (True/False)
INSERT INTO Answer_MCQ (QuestionID, AnswerID, IsCorrect) VALUES
(41, 1, 1), (41, 0, 0),
(42, 1, 1), (42, 0, 0),
(43, 1, 1), (43, 0, 0),
(44, 1, 1), (44, 0, 0),
(45, 1, 1), (45, 0, 0),
(46, 1, 1), (46, 0, 0),
(47, 1, 1), (47, 0, 0),
(48, 1, 1), (48, 0, 0),
(49, 1, 1), (49, 0, 0),
(50, 1, 1), (50, 0, 0);
go
