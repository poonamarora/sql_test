# Creation Script

Create  table T_ACCOUNT ( 
	ACCOUNT_ID INT,
	SITE_ID INT,
	ACCOUNT_NAME VARCHAR(200),
	NO_OF_EMP VARCHAR(20),
	LINE_OF_BUSINESS VARCHAR(10)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

Create  table T_CONTACT ( 
	CONTACT_ID BIGINT,
	SITE_MAPPING_ID INT,
	LAST_NAME VARCHAR(30),
	FIRST_NAME VARCHAR(20),
	DECISION_MAKER_TYPE VARCHAR(10),
	INTRODUCTION_DATE DATETIME
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE table T_SITE ( 
	SITE_ID INT,
	SITE_NAME VARCHAR(30),
	SITE_MAPPING_ID INT
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




# Insrtion Script
# Account Table

INSERT INTO `T_ACCOUNT`(`ACCOUNT_ID`,
                        `SITE_ID`,
                        `ACCOUNT_NAME`,
                        `NO_OF_EMP`,
                        `LINE_OF_BUSINESS`)
     VALUES (2428137,
             175064,
             'HONDA TRADING ASIA COMPANY LTD',
             '50 - 99',
             'COM');

INSERT INTO `T_ACCOUNT`(`ACCOUNT_ID`,
                        `SITE_ID`,
                        `ACCOUNT_NAME`,
                        `NO_OF_EMP`,
                        `LINE_OF_BUSINESS`)
     VALUES (216208268,
             175104,
             'CTY NETSURIT',
             '70 - 299',
             'ENT');

INSERT INTO `T_ACCOUNT`(`ACCOUNT_ID`,
                        `SITE_ID`,
                        `ACCOUNT_NAME`,
                        `NO_OF_EMP`,
                        `LINE_OF_BUSINESS`)
     VALUES (180171816,
             175167,
             'WERNERCO',
             '99 - 299',
             'PS');

INSERT INTO `T_ACCOUNT`(`ACCOUNT_ID`,
                        `SITE_ID`,
                        `ACCOUNT_NAME`,
                        `NO_OF_EMP`,
                        `LINE_OF_BUSINESS`)
     VALUES (180171470,
             175182,
             'ACACIA GROVE HOTELS INC',
             '1 - 9',
             'COM');

INSERT INTO `T_ACCOUNT`(`ACCOUNT_ID`,
                        `SITE_ID`,
                        `ACCOUNT_NAME`,
                        `NO_OF_EMP`,
                        `LINE_OF_BUSINESS`)
     VALUES (145944941,
             175205,
             'IFUGAO STATE UNIVERSITY',
             '100 - 149',
             'SP');

COMMIT;

# Site Table

INSERT INTO `T_SITE`(`SITE_ID`, `SITE_NAME`, `SITE_MAPPING_ID`)
     VALUES (175205, 'Mumbai', 228524449);

INSERT INTO `T_SITE`(`SITE_ID`, `SITE_NAME`, `SITE_MAPPING_ID`)
     VALUES (175182, 'Pune', 228516020);

INSERT INTO `T_SITE`(`SITE_ID`, `SITE_NAME`, `SITE_MAPPING_ID`)
     VALUES (228524, 'Vadodra', 228561830);

INSERT INTO `T_SITE`(`SITE_ID`, `SITE_NAME`, `SITE_MAPPING_ID`)
     VALUES (228516, 'Mathura', 228582681);

INSERT INTO `T_SITE`(`SITE_ID`, `SITE_NAME`, `SITE_MAPPING_ID`)
     VALUES (175064, 'Ranchi', 217517194);

COMMIT;

# Contacts table

INSERT INTO `T_CONTACT`(`CONTACT_ID`,
                        `SITE_MAPPING_ID`,
                        `LAST_NAME`,
                        `FIRST_NAME`,
                        `DECISION_MAKER_TYPE`,
                        `INTRODUCTION_DATE`)
     VALUES (26811282,
             216916345,
             'Mehra',
             'Rohan',
             'BUSINESS',
             '2008-09-18 22:14:00.0');

INSERT INTO `T_CONTACT`(`CONTACT_ID`,
                        `SITE_MAPPING_ID`,
                        `LAST_NAME`,
                        `FIRST_NAME`,
                        `DECISION_MAKER_TYPE`,
                        `INTRODUCTION_DATE`)
     VALUES (20442905,
             228582681,
             'MORE',
             'NAYAK',
             'TECHNICAL',
             '2013-11-21 00:00:00.0');

INSERT INTO `T_CONTACT`(`CONTACT_ID`,
                        `SITE_MAPPING_ID`,
                        `LAST_NAME`,
                        `FIRST_NAME`,
                        `DECISION_MAKER_TYPE`,
                        `INTRODUCTION_DATE`)
     VALUES (213592746,
             228540025,
             'R L',
             'GURUPRASAD',
             'BDM',
             '2015-05-22 09:10:00.0');

INSERT INTO `T_CONTACT`(`CONTACT_ID`,
                        `SITE_MAPPING_ID`,
                        `LAST_NAME`,
                        `FIRST_NAME`,
                        `DECISION_MAKER_TYPE`,
                        `INTRODUCTION_DATE`)
     VALUES (167402399,
             228524449,
             'S',
             'BHUSHAN',
             'TDM',
             '2012-05-01 02:14:00.0');

INSERT INTO `T_CONTACT`(`CONTACT_ID`,
                        `SITE_MAPPING_ID`,
                        `LAST_NAME`,
                        `FIRST_NAME`,
                        `DECISION_MAKER_TYPE`,
                        `INTRODUCTION_DATE`)
     VALUES (207545842,
             228524449,
             'TRAN',
             'KHOO',
             'BDM',
             '2010-08-11 00:00:00.0');

INSERT INTO `T_CONTACT`(`CONTACT_ID`,
                        `SITE_MAPPING_ID`,
                        `LAST_NAME`,
                        `FIRST_NAME`,
                        `DECISION_MAKER_TYPE`,
                        `INTRODUCTION_DATE`)
     VALUES (87741382,
             217517194,
             'WALKER',
             'ADAM',
             'TDM',
             '2009-09-08 15:28:00.0');

INSERT INTO `T_CONTACT`(`CONTACT_ID`,
                        `SITE_MAPPING_ID`,
                        `LAST_NAME`,
                        `FIRST_NAME`,
                        `DECISION_MAKER_TYPE`,
                        `INTRODUCTION_DATE`)
     VALUES (93466639,
             217517194,
             'CHINTA',
             'NATH SARKAR',
             'TECHNICAL',
             '2010-09-09 00:00:00.0');

INSERT INTO `T_CONTACT`(`CONTACT_ID`,
                        `SITE_MAPPING_ID`,
                        `LAST_NAME`,
                        `FIRST_NAME`,
                        `DECISION_MAKER_TYPE`,
                        `INTRODUCTION_DATE`)
     VALUES (6655949,
             216916345,
             'STEVE',
             'CHAN',
             'BDM',
             '2011-01-19 00:00:00.0');

COMMIT;

# Queries
# 1A.1
	SELECT  DISTINCT(t.`LINE_OF_BUSINESS`), count(t.`LINE_OF_BUSINESS`)
	FROM `T_ACCOUNT` t
	where t.`LINE_OF_BUSINESS`='COM' OR t.`LINE_OF_BUSINESS`='ENT'
	GROUP BY t.`LINE_OF_BUSINESS`;

# 1A.2

Create Temporary Table Employees(SMALLEST INT, LARGEST INT) AS
	   SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(t.NO_OF_EMP, '-', 1), '-', -1) as SMALLEST,
       SUBSTRING_INDEX(SUBSTRING_INDEX(t.NO_OF_EMP, '-', 2), '-', -1) as LARGEST   
	   
FROM   T_ACCOUNT t;

SELECT count(SMALLEST) FROM `Employees` e where largest>100;

Drop Table Employees;

# OR (ALTERNATIVE)

 SELECT Count(*)
	   FROM   T_ACCOUNT t
       where SUBSTRING_INDEX(SUBSTRING_INDEX(t.NO_OF_EMP, '-', 2), '-', -1)  > 100;

#1A.3

Select distinct(s.site_id),  c.CONTACT_ID
 from T_SITE s
 LEFT OUTER JOIN T_CONTACT c
 on s.SITE_MAPPING_ID = c.SITE_MAPPING_ID;

 #1A.4

 Select acc.Account_ID, acc.Account_Name, acc.no_of_emp, acc.Line_of_business, 
	con.CONTACT_ID, con.Last_name, con.First_Name, 
	con.INTRODUCTION_DATE
from 
   T_ACCOUNT acc 
       inner JOIN
   T_SITE site
       on acc.site_id = site.site_id
       inner JOIN
   T_CONTACT con 
       on site.site_mapping_id = con.site_mapping_id 
where EXTRACT(YEAR FROM con.INTRODUCTION_DATE) = 2010;

#1A.5

create table temp as
select a.account_name, c.decision_maker_type, c.first_name,c.last_name,
c.introduction_date as i_date
from T_Account a
      inner join
	 T_Site s on a.site_id = s.site_id
	  inner join 
	 T_Contact c on  s.site_mapping_id = c.site_mapping_id;
	 
select * from test t1
inner join (select max(t3.i_date) as maxdate
            from test t3
			group by account_name, decision_maker_type) t2
on t1.account_name = t2.account_name and t1.i_date = maxdate

#1A.6

update T_SITE
set site_name = replace(replace(site_name, '(', ''), ')', '');

#1B

CREATE VIEW All_Details AS
	SELECT a.site_id, a.Account_ID, a.Account_Name, a.no_of_emp, a.Line_of_business, 
       	   s.site_name, s.site_mapping_id, 
           c.CONTACT_ID, c.Last_name, c.First_Name, c.decision_maker_type, c.INTRODUCTION_DATE,
       # derived new column
   #1     	
   			(case 
				when c.CONTACT_ID is NULL then 'NO'
				else 'YES'
		 	end) as with_contact,
   #2
			(case
				when DATEDIFF(CURDATE(), c.INTRODUCTION_DATE ) < 180 then '< 6months'
				when DATEDIFF(CURDATE(), c.INTRODUCTION_DATE ) < 360 then '< 12months'
				else  '> 1 Year'
			end) as CONTACT_RECENCY
	FROM T_ACCOUNT a 
       		LEFT OUTER JOIN
    	 T_SITE s
       		on a.site_id = s.site_id
       		LEFT OUTER JOIN
     	T_CONTACT c 
       		on s.site_mapping_id = c.site_mapping_id 

 	group by a.site_id, a.Account_ID, a.Account_Name, a.no_of_emp, a.Line_of_business, 
       		 s.site_name, s.site_mapping_id, 
       		 c.CONTACT_ID, c.Last_name, c.First_Name, c.decision_maker_type, c.INTRODUCTION_DATE;

# Alternative 

 CREATE VIEW All_Details AS
	SELECT distinct a.*,
       	   s.site_name, s.site_mapping_id, 
           c.CONTACT_ID, c.Last_name, c.First_Name, c.decision_maker_type, c.INTRODUCTION_DATE,
       # derived new column
   #1     	
   			(case 
				when c.CONTACT_ID is NULL then 'NO'
				else 'YES'
		 	end) as with_contact,
   #2
			(case
				when DATEDIFF(CURDATE(), c.INTRODUCTION_DATE ) < 180 then '< 6months'
				when DATEDIFF(CURDATE(), c.INTRODUCTION_DATE ) < 360 then '< 12months'
				else  '> 1 Year'
			end) as CONTACT_RECENCY
	FROM T_ACCOUNT a 
       		 left JOIN
    	 T_SITE s
       		on a.site_id = s.site_id
       		left JOIN
     	T_CONTACT c 
       		on s.site_mapping_id = c.site_mapping_id 




	  








	  












	  



