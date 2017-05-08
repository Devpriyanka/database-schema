--Create database
CREATE DATABASE atlascorpdb;

\c atlascorpdb

--Domain creation 

--FOR VALUES IN YES AND NO 
CREATE DOMAIN Bin_Ans_Chk AS CHAR(10)
CHECK (VALUE in ('YES', 'NO'));
--FOR GENDER CHECK
CREATE DOMAIN Gen_Chk AS CHAR(10)
CHECK (VALUE in ('MALE', 'FEMALE'));
-- FOR PHONE NUMBER CHECK
CREATE DOMAIN Phn_Num_Chk AS VARCHAR(15)
CHECK (VALUE SIMILAR TO '[0-9]{3}-[0-9]{3}-[0-9]{4}');
-- FOR RELATIONSHIP CHECK
CREATE DOMAIN Dep_Relation_Chk as CHAR(10)
CHECK 
(
VALUE IN ('Spouse', 'Children')
);
--FOR EMERGENCY CONTACT RELATIONSHIP CHECK
CREATE DOMAIN EMR_Relation_Chk as CHAR(10)
CHECK
(
VALUE IN ('Spouse', 'Children','Parent', 'Friend')
);  



-- function and trigger
CREATE OR REPLACE FUNCTION update_vac()
RETURNS trigger AS  
$$ 
DECLARE  x text;
BEGIN
select Elgbl_For_Bnf into x from Job_Dtl_Tbl where job_id = new.emp_job_id ;
IF (x = 'YES')
then
 if (current_DATE - new.Emp_DOJ > 60 )
 Then
 INSERT INTO Vac_Bnf_Tbl values ( new.Emp_id,25,0,0);
 else
 INSERT INTO Vac_Bnf_Tbl values (new.Emp_id ,0,0,0);
 end if ;
 else
  RAISE NOTICE 'Not an exempt employee';
 end if;
 RETURN NEW;  
END; 
$$
LANGUAGE 'plpgsql';  
---------trigger
CREATE OR REPLACE FUNCTION Check_if_ben_elg()
RETURNS trigger AS  
$$ 
DECLARE  x text ;
BEGIN
select Elgbl_For_Bnf into x from Job_Dtl_Tbl where job_id in (select emp_job_id from emp_tbl where emp_id = new.emp_id); 
IF (x = 'YES')
then 
return new;
else
return null;
end if;
END;
$$
LANGUAGE 'plpgsql';  
-- Table creation 

-- 1 
--Table for employee level number detail

CREATE TABLE Level_Dtl_Tbl(
Level_No INTEGER CONSTRAINT Level_Dtl_Tbl_PK PRIMARY KEY ,
Level_Desc text NOT NULL 
);

-- 2
--Table for employee job classification type
CREATE TABLE Job_Dtl_Tbl( 
Job_Id INTEGER CONSTRAINT Job_Dtl_Tbl_PK PRIMARY KEY,
Level_No INTEGER  NOT NULL,
Job_Desc  VARCHAR(50) NOT NULL, 
Is_Email_Provided Bin_Ans_Chk NOT NULL, 
Has_Access Bin_Ans_Chk NOT NULL,
Elgbl_For_Bnf Bin_Ans_Chk Not NULL, --if both are yes the ful time, if no 
                                       --benefit and oT availaible part time and if benefit and no ot the exempt employee     
IS_OT_ELEGIBLE Bin_Ans_Chk NOT NULL,
CONSTRAINT Job_Dtl_Tbl_FK1 FOREIGN KEY(Level_No) REFERENCES Level_Dtl_Tbl(Level_No)
);

--3
-- Table for employee detail
CREATE TABLE Emp_Tbl (
Emp_Id SERIAL CONSTRAINT Emp_Tbl_PK PRIMARY KEY ,
Emp_Name VARCHAR(30) NOT NULL,
Emp_DOB DATE NOT NULL,
Emp_Gender Gen_Chk NOT NULL, 
Emp_Addr TEXT NOT NULL, 
Contact_Num  Phn_Num_Chk NOT NULL,
Emp_Job_Id INTEGER  NOT NULL,
Emp_DOJ Date NOT NULL,
CONSTRAINT Emp_Tbl_FK1 FOREIGN KEY(Emp_Job_Id) REFERENCES Job_Dtl_Tbl(Job_Id)
);
---trigger for vacation update
CREATE TRIGGER VAC_UPDATE_TRIGGER
After INSERT ON EMP_TBL
FOR EACH ROW
EXECUTE PROCEDURE update_vac();

--3.1
-- table for employee SSN detail
CREATE TABLE Emp_SSN_Tbl(
Emp_SSN Varchar (50) CONSTRAINT Emp_SSN_Tbl_PK PRIMARY KEY,
Emp_Id INTEGER  NOT NULL,
CONSTRAINT Emp_SSN_Tbl_FK1 FOREIGN KEY(Emp_ID) REFERENCES Emp_Tbl(Emp_Id)
);

--3.2
-- table for employee email detail
CREATE TABLE Emp_Email_Tbl(
Emp_Id INTEGER  CONSTRAINT Emp_Email_Tbl_PK PRIMARY KEY,
Email_Id TEXT,
CONSTRAINT Emp_Email_Tbl_FK1 FOREIGN KEY(Emp_ID) REFERENCES Emp_Tbl(Emp_Id),
CONSTRAINT Emp_Email_Tbl_Chk_Eml CHECK(Email_Id ~ '.*@atlas.com')
);


-- 3.3
--Table for employee dependent detail
CREATE TABLE Depdnt_Dtl_Tbl(
Depndt_Var_Id Varchar(50) CONSTRAINT Depdnt_Dtl_Tbl_PK PRIMARY KEY,  
Depndt_Name VARCHAR(50) NOT NULL, 
Emp_Id INTEGER  NOT NULL,  
Depndt_relation Dep_Relation_Chk NOT NULL,
CONSTRAINT Depdnt_Dtl_Tbl_FK1 FOREIGN KEY(Emp_ID) REFERENCES Emp_Tbl(Emp_Id)
);
-- 7
-- table for salary related details
CREATE TABLE Salary_Tbl( 
Bank_Acc_Num VARCHAR(50),
Bank_Routing_Num INTEGER,  
Emp_Id INTEGER  NOT NULL,
CONSTRAINT Salary_Tbl_PK PRIMARY KEY(Bank_Acc_Num, Bank_Routing_Num),
CONSTRAINT Salary_Tbl_FK1 FOREIGN KEY(Emp_ID) REFERENCES Emp_Tbl(Emp_Id)
); 

--8
-- table for tax related details
--Assuming that employee can change the dependent on yearly basis, if the
-- dependent is remoded the data will be deleted from the dependent table and a new 
-- entry will be made in tax table for new number of dependent number)
/*CREATE TABLE Tax_Dtl_Tbl(
From_Year NUMERIC CONSTRAINT Tax_Dtl_Tbl_Chk1 CHECK(From_Year >=2000 AND  From_Year <= 2099) NOT NULL, 
To_Year NUMERIC CONSTRAINT Tax_Dtl_Tbl_Chk2 CHECK(To_year >=2000 AND To_Year <= 2099), 
Emp_SSN Varchar (50), 
No_Of_dependent NUMERIC NOT NULL,
CONSTRAINT Tax_Dtl_Tbl_PK PRIMARY KEY(From_Year, To_Year, Emp_SSN),
CONSTRAINT Tax_Dtl_Tbl_FK1 FOREIGN KEY(Emp_SSN) REFERENCES Emp_SSN_Tbl(Emp_SSN)
); */

--9
--table for insurence plan details
CREATE TABLE Insr_Bnf_Tbl (
Plan_Code SERIAL CONSTRAINT Insr_Bnf_Tbl_PK PRIMARY KEY, 
Ven_Name Text NOT NULL, 
Rate_Ind$ SMALLINT NOT NULL, 
Rate_Fmly$ SMALLINT NOT NULL, 
Ddct_Ind$ SMALLINT NOT NULL, 
Ddct_Fmly$ SMALLINT NOT NULL, 
Plan_Copay$ SMALLINT NOT NULL, 
Plan_CoInsr_percentage SMALLINT NOT NULL
);


--10
--table for vacation benefits detail
CREATE TABLE Vac_Bnf_Tbl( 
Emp_Id INTEGER , 
Days_Provided NUMERIC,
Days_Used Numeric,
Days_Carried Numeric,
CONSTRAINT Vac_Bnf_Tbl_PK PRIMARY KEY(Emp_Id),
CONSTRAINT Vac_Bnf_Tbl_FK1 FOREIGN KEY(Emp_ID) REFERENCES Emp_Tbl(Emp_Id)
);


--11
-- table for full time employee with benefits detail
CREATE TABLE FTE_W_Bnf_Tbl(
Emp_Id INTEGER  CONSTRAINT FTE_W_Bnf_Tbl_PK PRIMARY KEY, 
Bnf_Start_Year NUMERIC CONSTRAINT FTE_W_Bnf_Tbl_Chk1 CHECK(Bnf_Start_Year >=2000 AND Bnf_Start_Year <= 2099) NOT NULL , 
Hourly_Rate$ SMALLINT, 
Max_OT_Per_Year SMALLINT CONSTRAINT FTE_W_Bnf_Tbl_Chk2 CHECK(Max_OT_Per_Year <= 780 ) NOT NULL,
CONSTRAINT FTE_W_Bnf_Tbl_FK1 FOREIGN KEY(Emp_ID) REFERENCES Emp_Tbl(Emp_Id)
);

-- 12
-- table for employee without benefit detail (part time employee with hourly rate)
CREATE TABLE Emp_WO_Bnf(
Emp_Id INTEGER CONSTRAINT Emp_WO_Bnf_PK PRIMARY KEY, 
Hourly_Rate$ NUMERIC NOT NULL, 
Max_OT_Per_Day SMALLINT CONSTRAINT Emp_WO_Bnf_Chk CHECK(Max_OT_Per_Day <= 4 ) NOT NULL,
CONSTRAINT Emp_WO_Bnf_FK1 FOREIGN KEY(Emp_ID) REFERENCES Emp_Tbl(Emp_Id)
);

 --13
 -- table for exempt employee details
 --exempt means with annua package(benefits) and no overtime
CREATE TABLE Exempt_Emp_Tbl(
Emp_Id INTEGER CONSTRAINT Exempt_Emp_Tbl_PK PRIMARY KEY, 
Bnf_Start_Year NUMERIC CONSTRAINT Exempt_Emp_Tbl_Chk1 CHECK(Bnf_Start_Year >=2000 AND Bnf_Start_Year <= 2099) NOT NULL, 
Annual_Package NUMERIC NOT NULL,
CONSTRAINT Exempt_Emp_Tbl_FK1 FOREIGN KEY(Emp_ID) REFERENCES Emp_Tbl(Emp_Id)
);
---------------------------Done till here 21/4/2017---1:57 PM Piyanka------------------------------------------
-- 14
--Table for emergency contact details
--Assumption is employee can have multiplae emergecy contact info--
CREATE TABLE Emgcy_Cont_Tbl(
Cont_Name varchar(30) NOT NULL, 
Cont_Num Phn_Num_Chk NOT NULL, 
Emp_Id INTEGER  NOT NULL, 
Relationship EMR_Relation_Chk NOT NULL,
CONSTRAINT Emgcy_Cont_Tbl_PK PRIMARY KEY(Cont_Name, Cont_Num, Emp_Id),
CONSTRAINT Emgcy_Cont_Tbl_FK1 FOREIGN KEY(Emp_ID) REFERENCES Emp_Tbl(Emp_Id)
);

-- 15
-- Table for restricted room detail
CREATE TABLE Rstric_Rm_Tbl(
Rm_Number SERIAL CONSTRAINT Rstric_Rm_Tbl_PK PRIMARY KEY, 
Rm_Name text NOT NULL UNIQUE, 
Int_Ph_Num Phn_Num_Chk NOT NULL, 
Has_Haz_Metrial Bin_Ans_Chk NOT NULL
);
---------------------------Done till here 21/4/2017---2:38 PM Piyanka------------------------------------------
--16
-- table for resrticted room access detail
/* we are assuming that one romm access can be given to different job type */
--donot need this table for now as we can find   
CREATE  TABLE Rstric_Rm_Access_Tbl( 
Rm_Number INTEGER  NOT NULL,
Job_Id INTEGER  NOT NULL,
CONSTRAINT Rstric_Rm_Access_Tbl_PK PRIMARY KEY(Rm_Number,Job_Id),
CONSTRAINT Rstric_Rm_Access_Tbl_FK1 FOREIGN KEY(Rm_Number) REFERENCES Rstric_Rm_Tbl(Rm_Number),
CONSTRAINT Rstric_Rm_Access_Tbl_FK2 FOREIGN KEY(Job_Id) REFERENCES Job_Dtl_Tbl(Job_Id)
);

-- 17
-- table for alternate contact details
/* We are assuming here that the employee can have maximum of three alternate contact number */
CREATE TABLE Alt_Cnct_Tbl(
Emp_Id INTEGER  NOT NULL, 
Alt_Num1 Phn_Num_Chk NOT NULL, /* Employee must have atleast one alternate contact detail */
Alt_Num2 Phn_Num_Chk , 
Alt_Num3 Phn_Num_Chk, 
CONSTRAINT Alt_Cnct_Tbl_PK PRIMARY KEY (Emp_Id),
CONSTRAINT Alt_Cnct_Tbl_FK1 FOREIGN KEY( Emp_Id) REFERENCES Emp_Tbl(Emp_Id)
);
---------------------------Done till here 21/4/2017---3:00 PM Piyanka------------------------------------------
-- 18
-- table for insurence plan and employee detail
/*Employee can change insurence plan in specific year and an entry will be made only if the plan is changed
if employee decide not to change the plan for next year the "To_Year" column will be incremented by one year*/


CREATE TABLE Emp_Insr_Bnf_Tbl(
Emp_Id INTEGER  NOT NULL, 
Plan_Code INTEGER  NOT NULL, 
From_Year NUMERIC CONSTRAINT Emp_Insr_Bnf_Tbl_Chk1 CHECK(From_Year>=2000 AND From_Year <= 2099) , 
To_Year NUMERIC CONSTRAINT Emp_Insr_Bnf_Tbl_Chk2 CHECK(To_Year >=2000 AND To_Year <= 2099),
CONSTRAINT Emp_Insr_Bnf_Tbl_PK PRIMARY KEY (Emp_Id, Plan_Code,From_Year,To_Year),
CONSTRAINT Emp_Insr_Bnf_Tbl_FK1 FOREIGN KEY( Emp_Id) REFERENCES Emp_Tbl(Emp_Id),
CONSTRAINT Emp_Insr_Bnf_Tbl_FK2 FOREIGN KEY( Plan_Code) REFERENCES Insr_Bnf_Tbl(Plan_Code)
);
--------------triger to check if elegible for insurence benefit
CREATE TRIGGER check_bnf_trig
BEFORE INSERT ON Emp_Insr_Bnf_Tbl
FOR EACH ROW
EXECUTE PROCEDURE Check_if_ben_elg();

---------------------------Done till here 21/4/2017---3:44 PM Piyanka------------------------------------------
-- 19
-- table for employee hierarchy
/*Employee's supevisor can change after specific timel be made only if the plan is changed
if employee's supervisior is changed the "To_Date" column value will be the date till  he was 
supervised by initial supervisor and a new entry will be made with the new spupervisor ID  */
CREATE TABLE Emp_Heirarchy_Tbl(
Emp_Id INTEGER  NOT NULL, 
Sup_Emp_Id INTEGER  NOT NULL, 
P_Level NUMERIC,
C_level Numeric,
CONSTRAINT Emp_Heirarchy_Tbl_PK PRIMARY KEY(Emp_Id,Sup_Emp_Id),
CONSTRAINT Emp_Heirarchy_Tbl_FK1 FOREIGN KEY ( Emp_Id) REFERENCES Emp_Tbl(Emp_Id),
CONSTRAINT Emp_Heirarchy_Tbl_FK2 FOREIGN KEY ( Sup_Emp_Id) REFERENCES Emp_Tbl(Emp_Id)
);



