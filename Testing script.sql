1. --Employees who do not supervise ther employee:

Select * from Emp_Heirarchy_Tbl where c_level = 0;
 emp_id | sup_emp_id | p_level | c_level
--------+------------+---------+---------
   5021 |       5005 |       3 |       0
   5025 |       5009 |       3 |       0
   5059 |       5013 |       3 |       0
   5063 |       5015 |       3 |       0
   5019 |       5013 |       3 |       0
   5023 |       5015 |       3 |       0
   5057 |       5049 |       3 |       0
   5061 |       5073 |       3 |       0
   5037 |       5039 |       2 |       0
   5043 |       5045 |       2 |       0
   5035 |       5053 |       2 |       0
   5033 |       5017 |       2 |       0
   5055 |       5027 |       2 |       0
(13 rows)

2. --Employees ID who donot have any dependent:
Select emp_id from emp_tbl
except
Select distinct(emp_id) from Depdnt_Dtl_Tbl;
 emp_id
--------
   5039
   5031
   5029
   5035
   5037
   5041
   5033
(7 rows)

3.--Find the complete employees who work part time :
select * from emp_tbl as a  join
Emp_WO_Bnf as b using(emp_id)
where a.emp_job_id in 
(select c.job_id from job_dtl_tbl as c where c.Elgbl_For_Bnf = 'NO' and c.IS_OT_ELEGIBLE  = 'YES');

 emp_id |   emp_name   |  emp_dob   | emp_gender |               emp_addr                | contact_num  | emp_job_id |  emp_doj
--------+--------------+------------+------------+---------------------------------------+--------------+------------+------------
   5019 | Paul Rayan   | 1980-12-07 | MALE       | 999Landale St, Studio City, CA, 91604 | 892-869-5331 |        991 | 2013-10-05
   5021 | Jimi Rai     | 1973-04-05 | MALE       | 998Landale St, Studio City, CA, 91605 | 372-821-4581 |        992 | 2017-03-22
   5023 | Paul Detrich | 1981-10-10 | MALE       | 997Landale St, Studio City, CA, 91606 | 182-305-1132 |        991 | 2013-08-09
   5025 | Bal Dail     | 1994-01-10 | MALE       | 996Landale St, Studio City, CA, 91607 | 471-546-1542 |        992 | 2005-03-16
   5057 | Victoria     | 1975-01-17 | FEMALE     | 980Main St, Bradley, ME, 04411        | 222-812-4313 |        991 | 2010-02-11
   5059 | Adriana      | 1990-02-21 | FEMALE     | 979Main St, Bradley, ME, 04411        | 197-634-7107 |        992 | 2015-07-08
   5061 | Aekerman     | 1986-02-09 | FEMALE     | 978Main St, Bradley, ME, 04411        | 542-524-8864 |        991 | 2017-04-13
   5063 | Alwyn        | 1982-03-02 | FEMALE     | 977Main St, Bradley, ME, 04411        | 061-775-2487 |        992 | 2010-12-25
(8 rows)

4.--Find the complete employees who work as exempt employee : 
select * from emp_tbl as a  join
Exempt_Emp_Tbl as b using(emp_id)
where a.emp_job_id in 
(select c.job_id from job_dtl_tbl as c where c.Elgbl_For_Bnf = 'YES' and c.IS_OT_ELEGIBLE  = 'NO');
  emp_id |      emp_name      |  emp_dob   | emp_gender |                 emp_addr                 | contact_num  | emp_job_id |  emp_doj   | bnf_start_year | annual_package
--------+--------------------+------------+------------+------------------------------------------+--------------+------------+------------+----------------+----------------
   5001 | Amit Kalia         | 1977-11-05 | MALE       | 12355 Landale St, Studio City, CA, 91604 | 015-252-8487 |        401 | 2005-04-26 |           2006 |         200000
   5003 | Priyanka Prasad    | 1987-05-14 | FEMALE     | 642 Br, North Branch, MN, 55056          | 836-086-1810 |        500 | 2015-10-26 |           2016 |         400000
   5005 | Jhon Dey           | 1991-04-15 | MALE       | 12356 Landale St, Studio City, CA, 91604 | 798-969-0865 |        301 | 2010-06-05 |           2011 |          90000
   5007 | Diya Sen           | 1973-02-04 | FEMALE     | 501 Division St #A, Boonton, NJ, 07005   | 684-042-4654 |        402 | 2013-10-17 |           2014 |          60000
   5009 | Mani Raj           | 1978-10-30 | MALE       | 914 Main St, Bradley, ME, 04411          | 048-660-3345 |        301 | 2017-04-13 |           2018 |          30000
   5011 | Phani Kumar        | 1992-03-21 | MALE       | 913 Main St, Bradley, ME, 04411          | 657-190-8261 |        403 | 2016-08-24 |           2017 |          50000
   5013 | Avinash Prasad     | 1994-04-04 | MALE       | 912 Main St, Bradley, ME, 04411          | 959-504-6205 |        301 | 2013-03-29 |           2014 |          40000
   5015 | Emily Sara         | 1978-04-03 | FEMALE     | 911Main St, Bradley, ME, 04411           | 926-503-8617 |        301 | 2013-11-03 |           2014 |          21000
   5017 | Mark Faizer        | 1985-06-04 | MALE       | 913 Main St, Bradley, ME, 04411          | 954-047-5733 |        201 | 2012-10-14 |           2013 |          23000
   5027 | Cristy Corner      | 1976-12-10 | FEMALE     | 995Landale St, Studio City, CA, 91608    | 506-328-3254 |        201 | 2007-05-04 |           2008 |          90000
   5029 | Mady more          | 1986-09-30 | FEMALE     | 994Landale St, Studio City, CA, 91609    | 227-835-5184 |        202 | 2007-01-05 |           2008 |          60000
   5031 | Avinash Kumar      | 1970-05-11 | MALE       | 993Landale St, Studio City, CA, 91610    | 787-524-8702 |        203 | 2009-04-20 |           2010 |          30000
   5039 | Riys Sen           | 1975-03-26 | FEMALE     | 989Landale St, Studio City, CA, 91614    | 882-232-7270 |        203 | 2016-11-22 |           2017 |          50000
   5041 | Palak Sen          | 1987-03-20 | FEMALE     | 988Landale St, Studio City, CA, 91615    | 716-162-2827 |        201 | 2006-05-08 |           2007 |          21000
   5045 | Boris Makarovsiky  | 1972-11-21 | MALE       | 986Landale St, Studio City, CA, 91617    | 512-710-5309 |        203 | 2010-07-05 |           2011 |          21000
   5047 | Amamda Sturdbridge | 1984-07-24 | MALE       | 985Landale St, Studio City, CA, 91618    | 589-030-3217 |        303 | 2015-04-13 |           2016 |          90000
   5049 | Matt Lewis         | 1975-03-11 | MALE       | 984Landale St, Studio City, CA, 91619    | 631-190-0787 |        301 | 2006-12-23 |           2007 |          60000
   5051 | Rakesh Sen         | 1976-05-04 | MALE       | 983Main St, Bradley, ME, 04411           | 188-698-5088 |        302 | 2017-03-30 |           2018 |          30000
   5053 | Jay Kumar          | 1981-02-13 | MALE       | 982Main St, Bradley, ME, 04411           | 091-755-5810 |        202 | 2007-01-13 |           2008 |          50000
   5065 | Patricia           | 1971-07-30 | FEMALE     | 976Main St, Bradley, ME, 04411           | 352-566-9119 |        201 | 2013-03-29 |           2014 |          50000
   5067 | Philip             | 1979-11-01 | MALE       | 975Main St, Bradley, ME, 04411           | 518-811-8438 |        201 | 2015-01-16 |           2016 |          40000
   5069 | Peterson           | 1978-09-23 | MALE       | 974Main St, Bradley, ME, 04411           | 951-883-9780 |        303 | 2005-04-23 |           2006 |          21000
   5071 | Seaward            | 1981-10-24 | MALE       | 973Main St, Bradley, ME, 04411           | 993-196-3999 |        303 | 2006-03-11 |           2007 |          60000
   5073 | Sebastian          | 1980-12-11 | MALE       | 972Main St, Bradley, ME, 04411           | 004-290-1858 |        301 | 2007-08-05 |           2008 |          30000
(24 rows)

5.--Find the complete employees who full time :
select * from emp_tbl as a  join
FTE_W_Bnf_Tbl as b using(emp_id)
where a.emp_job_id in 
(select c.job_id from job_dtl_tbl as c where c.Elgbl_For_Bnf = 'YES' and c.IS_OT_ELEGIBLE  = 'YES');
 emp_id |   emp_name    |  emp_dob   | emp_gender |               emp_addr                | contact_num  | emp_job_id |  emp_doj   | bnf_start_year | hourly_rate$ | max_ot_per_year
--------+---------------+------------+------------+---------------------------------------+--------------+------------+------------+----------------+--------------+-----------------
   5033 | Parul Shah    | 1992-07-16 | FEMALE     | 992Landale St, Studio City, CA, 91611 | 974-153-0528 |        101 | 2007-03-12 |           2008 |           50 |             500
   5035 | Tamul Raj     | 1970-01-31 | MALE       | 991Landale St, Studio City, CA, 91612 | 125-318-0388 |        102 | 2017-04-19 |           2017 |           70 |             502
   5037 | Kamal Hasn    | 1991-01-08 | MALE       | 990Landale St, Studio City, CA, 91613 | 926-370-4448 |        103 | 2011-09-01 |           2012 |           99 |             400
   5043 | Martha Kindle | 1988-08-05 | FEMALE     | 987Landale St, Studio City, CA, 91616 | 462-207-4305 |        103 | 2007-02-18 |           2008 |           87 |             300
   5055 | Abigail       | 1971-12-25 | MALE       | 981Main St, Bradley, ME, 04411        | 780-089-3433 |        101 | 2012-12-05 |           2013 |           67 |             540
(5 rows)

6. --Find dependent details all the exempt employees:
 atlascorpdb=# select * from Depdnt_Dtl_Tbl where emp_id in (select emp_id from Exempt_Emp_Tbl);
 depndt_var_id |     depndt_name     | emp_id | depndt_relation
---------------+---------------------+--------+-----------------
 8954L47878    | tom hanks           |   5001 | Spouse
 92skczQ321    |  Albert Lyons       |   5001 | Children
 895OuS7878    |  Sarah Dawson       |   5003 | Children
 92lQ2r0321    |  Steve Sullivan     |   5003 | Children
 895Lbl7878    |  Gerard Blake       |   5005 | Spouse
 92ZQkGo321    |  Shari Page         |   5005 | Children
 89IVs97878    |  Myrtle Perry       |   5007 | Children
 92snE6Q321    |  Elbert Ward        |   5007 | Children
 89ltEt7878    |  Elsa Swanson       |   5009 | Children
 896LwJ7878    |  Jean Sandoval      |   5011 | Spouse
 4214014902    |  Merle Adkins       |   5011 | Children
 61lqwii782    |  Christopher Wong   |   5011 | Children
 89o9oU7878    |  Terrance Bowers    |   5013 | Children
 421GbEi902    |  Dianne Snyder      |   5013 | Children
 61WmqNQ782    |  Jennifer Baker     |   5013 | Children
 894UkA7878    |  Dan Bradley        |   5015 | Children
 421SPGa902    |  Bertha Lee         |   5015 | Children
 61ysHZ9782    |  Harry Jones        |   5015 | Spouse
 89tWMq7878    |  Guadalupe Evans    |   5017 | Spouse
 421wZ9Y902    |  Marvin Osborne     |   5017 | Children
 61ez4sZ782    |  Priscilla Phelps   |   5017 | Children
 421auOw902    |  Dominick Zimmerman |   5027 | Spouse
 61SvybF782    |  Gustavo Burgess    |   5045 | Children
 61EIPDj782    |  Karla Greer        |   5047 | Spouse
 61TEA1E782    |  Jimmy Lloyd        |   5049 | Children
 61wMpZG782    |  Claire Barrett     |   5051 | Children
 61lZEW3782    |  Phyllis Black      |   5053 | Children
 92eMrrP321    |  Tabitha Diaz       |   5065 | Spouse
 92DiqL1321    |  Walter Anderson    |   5067 | Children
 92trcUp321    |  Brent Yates        |   5069 | Children
 92nFipU321    |  Vera Payne         |   5071 | Spouse
 92p3Pt8321    |  Margie Kelley      |   5073 | Children
 
 6. --Find count of dependent of each employee group by department:
select distinct(b.emp_job_id), count(*) from depdnt_dtl_tbl as a
join
Emp_tbl as b 
using(emp_id) group by b.emp_job_id
order by emp_job_id;
  emp_job_id | count
------------+-------
        101 |     1
        103 |     1
        201 |     6
        202 |     1
        203 |     1
        301 |    11
        302 |     1
        303 |     3
        401 |     2
        402 |     2
        403 |     3
        500 |     2
        991 |     8
        992 |     8
(14 rows)

7.--Details of  employees who has insurence benefit and vacation benefit
select * from emp_tbl where emp_id in 
(Select emp_id  from Emp_Insr_Bnf_Tbl 
INTERSECT
select emp_id from vac_bnf_tbl) ;

 emp_id |      emp_name      |  emp_dob   | emp_gender |                 emp_addr                 | contact_num  | emp_job_id |  emp_doj
--------+--------------------+------------+------------+------------------------------------------+--------------+------------+------------
   5001 | Amit Kalia         | 1977-11-05 | MALE       | 12355 Landale St, Studio City, CA, 91604 | 015-252-8487 |        401 | 2005-04-26
   5003 | Priyanka Prasad    | 1987-05-14 | FEMALE     | 642 Br, North Branch, MN, 55056          | 836-086-1810 |        500 | 2015-10-26
   5005 | Jhon Dey           | 1991-04-15 | MALE       | 12356 Landale St, Studio City, CA, 91604 | 798-969-0865 |        301 | 2010-06-05
   5007 | Diya Sen           | 1973-02-04 | FEMALE     | 501 Division St #A, Boonton, NJ, 07005   | 684-042-4654 |        402 | 2013-10-17
   5009 | Mani Raj           | 1978-10-30 | MALE       | 914 Main St, Bradley, ME, 04411          | 048-660-3345 |        301 | 2017-04-13
   5011 | Phani Kumar        | 1992-03-21 | MALE       | 913 Main St, Bradley, ME, 04411          | 657-190-8261 |        403 | 2016-08-24
   5013 | Avinash Prasad     | 1994-04-04 | MALE       | 912 Main St, Bradley, ME, 04411          | 959-504-6205 |        301 | 2013-03-29
   5015 | Emily Sara         | 1978-04-03 | FEMALE     | 911Main St, Bradley, ME, 04411           | 926-503-8617 |        301 | 2013-11-03
   5017 | Mark Faizer        | 1985-06-04 | MALE       | 913 Main St, Bradley, ME, 04411          | 954-047-5733 |        201 | 2012-10-14
   5043 | Martha Kindle      | 1988-08-05 | FEMALE     | 987Landale St, Studio City, CA, 91616    | 462-207-4305 |        103 | 2007-02-18
   5045 | Boris Makarovsiky  | 1972-11-21 | MALE       | 986Landale St, Studio City, CA, 91617    | 512-710-5309 |        203 | 2010-07-05
   5047 | Amamda Sturdbridge | 1984-07-24 | MALE       | 985Landale St, Studio City, CA, 91618    | 589-030-3217 |        303 | 2015-04-13
   5049 | Matt Lewis         | 1975-03-11 | MALE       | 984Landale St, Studio City, CA, 91619    | 631-190-0787 |        301 | 2006-12-23
   5051 | Rakesh Sen         | 1976-05-04 | MALE       | 983Main St, Bradley, ME, 04411           | 188-698-5088 |        302 | 2017-03-30
   5053 | Jay Kumar          | 1981-02-13 | MALE       | 982Main St, Bradley, ME, 04411           | 091-755-5810 |        202 | 2007-01-13
   5055 | Abigail            | 1971-12-25 | MALE       | 981Main St, Bradley, ME, 04411           | 780-089-3433 |        101 | 2012-12-05
   5065 | Patricia           | 1971-07-30 | FEMALE     | 976Main St, Bradley, ME, 04411           | 352-566-9119 |        201 | 2013-03-29
   5067 | Philip             | 1979-11-01 | MALE       | 975Main St, Bradley, ME, 04411           | 518-811-8438 |        201 | 2015-01-16
   5069 | Peterson           | 1978-09-23 | MALE       | 974Main St, Bradley, ME, 04411           | 951-883-9780 |        303 | 2005-04-23
   5071 | Seaward            | 1981-10-24 | MALE       | 973Main St, Bradley, ME, 04411           | 993-196-3999 |        303 | 2006-03-11
   5073 | Sebastian          | 1980-12-11 | MALE       | 972Main St, Bradley, ME, 04411           | 004-290-1858 |        301 | 2007-08-05
(21 rows)

8. --which health plan most employee prefers:
select count(emp_id) as count, plan_code from Emp_Insr_Bnf_Tbl group by plan_code,emp_id order by count desc limit 1;

 count | plan_code
-------+-----------
     2 |       224
(1 row)

9. --name all the person who are emergency contact for more than one employee

select DISTINCT(concat(cont_name,cont_num)), count(emp_id) as number_of_contact  
from Emgcy_Cont_Tbl 
group by concat(cont_name,cont_num) 
having
COUNT (emp_id) > 1;
             concat              | number_of_contact
---------------------------------+-------------------
  Janiyah Morse892-869-5331      |                 2
  Nehemiah Mcconnell974-153-0528 |                 2
  Walker Rangel974-153-0528      |                 2
  Layne Peters197-634-7107       |                 3
  Lillian West125-318-0388       |                 2
  Dustin Ryan657-190-8261        |                 3
  Gianna Donovan512-710-5309     |                 2
  Helen Colon798-969-0865        |                 3
  Kate Bowers188-698-5088        |                 2
(9 rows)

11. --Name all the employee under HR depeartment

select a.emp_id , a.emp_name, a.emp_job_id, b.job_desc  from emp_tbl as a  join job_dtl_tbl as b on(a.emp_job_id = b.job_id)
where a.emp_job_id in ( 401,301,201,101);
 emp_id |    emp_name    | emp_job_id |      job_desc
--------+----------------+------------+--------------------
   5001 | Amit Kalia     |        401 | HR Director
   5073 | Sebastian      |        301 | HR Manager
   5049 | Matt Lewis     |        301 | HR Manager
   5015 | Emily Sara     |        301 | HR Manager
   5013 | Avinash Prasad |        301 | HR Manager
   5009 | Mani Raj       |        301 | HR Manager
   5005 | Jhon Dey       |        301 | HR Manager
   5067 | Philip         |        201 | Senior Assoc in HR
   5065 | Patricia       |        201 | Senior Assoc in HR
   5041 | Palak Sen      |        201 | Senior Assoc in HR
   5027 | Cristy Corner  |        201 | Senior Assoc in HR
   5017 | Mark Faizer    |        201 | Senior Assoc in HR
   5055 | Abigail        |        101 | Junior Assoc in HR
   5033 | Parul Shah     |        101 | Junior Assoc in HR
(14 rows)

12. --Name all employee the having access to hazard room

select emp_id, emp_name from emp_tbl where emp_job_id in ( select job_id from job_dtl_tbl where Has_Access ='YES';
 emp_id |      emp_name
--------+--------------------
   5001 | Amit Kalia
   5003 | Priyanka Prasad
   5005 | Jhon Dey
   5007 | Diya Sen
   5009 | Mani Raj
   5011 | Phani Kumar
   5013 | Avinash Prasad
   5015 | Emily Sara
   5017 | Mark Faizer
   5021 | Jimi Rai
   5025 | Bal Dail
   5027 | Cristy Corner
   5029 | Mady more
   5031 | Avinash Kumar
   5039 | Riys Sen
   5041 | Palak Sen
   5045 | Boris Makarovsiky
   5047 | Amamda Sturdbridge
   5049 | Matt Lewis
   5051 | Rakesh Sen
   5053 | Jay Kumar
   5059 | Adriana
   5063 | Alwyn
   5065 | Patricia
   5067 | Philip
   5069 | Peterson
   5071 | Seaward
   5073 | Sebastian
   
   13. --department having maximum employee
     select DISTINCT(emp_job_id), count(*) as no_of_emp from emp_tbl group by emp_job_id order by count(*) desc limit 1;
	 
	  emp_job_id | no_of_emp
------------+-----------
        301 |         6
	
   14. Name of the three leaders
   select emp_name from emp_tbl where emp_job_id in (select job_id from job_dtl_tbl where level_no=4);
     emp_name
-------------
 Amit Kalia
 Diya Sen
 Phani Kumar
(3 rows)

15. --all the non exempt employee,

select emp_id from FTE_W_Bnf_Tbl
UNION
Select emp_id  from Emp_WO_Bnf;
 emp_id
--------
   5019
   5043
   5059
   5021
   5025
   5061
   5023
   5035
   5057
   5063
   5055
   5033
   5037
(13 rows)

16. --employee job description of employee maximum annual salary
select job_desc from job_dtl_tbl where job_id = (select emp_job_id from emp_tbl where emp_id = (select emp_id from Exempt_Emp_Tbl as m 
where m.annual_package =( select max( a.annual_package)from Exempt_Emp_Tbl as a join emp_tbl as b using(emp_id )))) ;

   job_desc
---------------
 Company Owner
(1 row)

17.-- find the the job descritopn of the employee with no supervisee
select job_desc from job_dtl_tbl where job_id in 
 (Select b.emp_job_id from Emp_Heirarchy_Tbl as a join emp_tbl as b using(emp_id) where c_level = 0);

      job_desc
--------------------
 Junior Assoc in IT
 Junior Assoc in HR
 Junior Assoc in OP
 Security
 Front_Desk
(5 rows)

18. --employee job type with minimum overtime per year
 select b.emp_id , c.job_desc from FTE_W_Bnf_Tbl as a join emp_tbl as b using (emp_id) 
 join job_dtl_tbl as c on (b.emp_job_id=c.job_id) where a.max_ot_per_year= (select max(m.max_ot_per_year)from FTE_W_Bnf_Tbl as m)
 emp_id |      job_desc
--------+--------------------
   5055 | Junior Assoc in HR
(1 row)








