CREATE TABLE `ORDER_DETAILS`
(
    `ORDER_ID`     int         NOT NULL AUTO_INCREMENT,
    `ORDER_NAME`   varchar(30) NOT NULL,
    `DATE_CREATED` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `LAST_UPDATED` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`ORDER_ID`)
)

CREATE TABLE `ORDER_ITEMS`
(
    `ID`           int NOT NULL AUTO_INCREMENT,
    `ORDER_ID`     int DEFAULT NULL,
    `QUANTITY`     int DEFAULT NULL,
    `DATE_CREATED` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `LAST_UPDATED` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`ID`),
    KEY            `fk_ORDER_ID_ORDER_DETAILS` (`ORDER_ID`),
    CONSTRAINT `fk_ORDER_ID_ORDER_DETAILS` FOREIGN KEY (`ORDER_ID`) REFERENCES `ORDER_DETAILS` (`ORDER_ID`)
)


CREATE TABLE STUDENTS
(
    STUDENT_ID   int         NOT NULL AUTO_INCREMENT,
    STUDENT_NAME varchar(100) NOT NULL,
    FATHER_NAME  varchar(100) NOT NULL,
    GENDER       varchar(6) NOT NULL,
    MOBILE       LONG,
    CATEGORY     varchar(10) NOT NULL,
    TELUGU       INT,
    HINDI        INT,
    ENGLISH      INT,
    MATHS        INT,
    SCIENCE      INT,
    SOCIAL       INT,
    TOTAL        INT,
    PRIMARY KEY (STUDENT_ID)
);

CREATE TABLE `COURSES` (
    `C_ID` int NOT NULL AUTO_INCREMENT,
    C_NAME VARCHAR(100),
    C_DESCRIPTION VARCHAR(100),
    PRIMARY KEY (`C_ID`)
);


INSERT INTO COURSES values(1,'Java','Programming language');
INSERT INTO COURSES values(2,'Angular','UI');
INSERT INTO COURSES values(3,'JavaScript','UI');
INSERT INTO COURSES values(4,'HTML','UI');
INSERT INTO COURSES values(5,'Bootstrap','Style');
INSERT INTO COURSES values(6,'TypeScript','UI');
INSERT INTO COURSES values(7,'Flex','UI');
INSERT INTO COURSES values(8,'Oracle','Relational Databases');
INSERT INTO COURSES values(9,'MySQL','Relational Databases');
INSERT INTO COURSES values(10,'Postgres','Relational Databases');
INSERT INTO COURSES values(11,'SQLite','Relational Databases');
INSERT INTO COURSES values(12,'Mongo','NoSQL');
INSERT INTO COURSES values(13,'Cassandra','NoSQL');
INSERT INTO COURSES values(14,'Redis','Key-value stores');

CREATE TABLE `STUDENT_COURSES` (
    `S_ID` int NOT NULL,
    `C_ID` int NOT NULL,
     PRIMARY KEY (`S_ID`,`C_ID`),
     CONSTRAINT `FK_STUDENT_ID` FOREIGN KEY (`S_ID`) REFERENCES `STUDENTS` (`STUDENT_ID`),
     CONSTRAINT `FK_COURSE_ID` FOREIGN KEY (`C_ID`) REFERENCES `COURSES` (`C_ID`)
);


CREATE TABLE Employee (
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(50),
    SALARY LONG,
    MANAGER_ID INT
);

INSERT INTO Employee (EMP_ID, EMP_NAME, MANAGER_ID, Salary)
VALUES (1, 'John Doe', 5, 60000),
    (2, 'Jane Smith', 5, 65000),
    (3, 'Alice Lee', 4, 55000),
    (4, 'Bob Brown', 6, 70000),
    (5, 'Carol Jones', 7, 75000),
    (6, 'David Wang', 7, 72000),
    (7, 'Emma Chen', NULL, 80000),
    (8, 'Michael Wilson', 5, 63000),
    (9, 'Jennifer Taylor', 5, 62000),
    (10, 'Richard Garcia', 6, 68000),
    (11, 'Susan Martinez', 6, 71000),
    (12, 'Matthew Robinson', 7, 78000),
    (13, 'Amanda Clark', 7, 69000),
    (14, 'Christopher Rodriguez', NULL, 82000),
    (15, 'Sarah Lewis', NULL, 85000),
    (16, 'Ryan Walker', 5, 64000),
    (17, 'Patricia Hall', 5, 67000),
    (18, 'Jessica Young', 4, 56000),
    (19, 'Daniel King', 6, 73000),
    (20, 'Thomas Hernandez', 7, 76000),
    (21, 'Emily Nelson', 7, 77000),
    (22, 'Charles Carter', NULL, 90000),
    (23, 'Lisa Perez', 5, 66000),
    (24, 'Nancy Adams', 5, 71000),
    (25, 'Mark Turner', 6, 72000),
    (26, 'Michelle Rivera', 6, 74000),
    (27, 'Kimberly Collins', 7, 79000),
    (28, 'Joseph Bell', 7, 68000),
    (29, 'Ashley Gonzalez', NULL, 83000),
    (30, 'Paul Wright', NULL, 86000),
    (31, 'Laura Mitchell', 5, 69000),
    (32, 'Kevin Perez', 5, 71000),
    (33, 'Justin Hill', 4, 57000),
    (34, 'Brandon Roberts', 6, 75000),
    (35, 'Stephanie Murphy', 6, 78000),
    (36, 'Rachel Cook', 7, 82000),
    (37, 'Eric James', 7, 83000),
    (38, 'Stephen Turner', NULL, 92000),
    (39, 'Maria Sanchez', NULL, 89000),
    (40, 'Cynthia Green', 5, 70000),
    (41, 'Angela Cooper', 5, 73000),
    (42, 'Jeffrey Reed', 4, 58000),
    (43, 'Rebecca Bailey', 6, 76000),
    (44, 'Carolyn Stewart', 6, 77000),
    (45, 'Amanda Hamilton', 7, 81000),
    (46, 'Edward Price', 7, 79000),
    (47, 'Nicole Jenkins', NULL, 86000),
    (48, 'Gregory Barnes', NULL, 93000),
    (49, 'Jerry Murphy', 5, 72000),
    (50, 'Terry Cox', 5, 74000),
    (51, 'Diana Scott', 5, 60000),
    (52, 'Frank Lopez', 5, 65000),
    (53, 'Kathleen Hill', 4, 70000),
    (54, 'Samuel Roberts', 6, 72000),
    (55, 'Emily Murphy', 7, 75000),
    (56, 'Gary Cook', 7, 80000),
    (57, 'Anna James', NULL, 85000),
    (58, 'Brian Gonzalez', 5, 70000),
    (59, 'Deborah Nelson', 5, 72000),
    (60, 'Carl Adams', 6, 68000),
    (61, 'Jacqueline Stewart', 6, 75000),
    (62, 'Keith Bell', 7, 78000),
    (63, 'Janet Bailey', 7, 80000),
    (64, 'Paula Hamilton', NULL, 85000),
    (65, 'Billy Price', NULL, 90000),
    (66, 'Tina Jenkins', 5, 70000),
    (67, 'Henry Barnes', 5, 72000),
    (68, 'Beverly Murphy', 4, 75000),
    (69, 'Ronald Cox', 6, 78000),
    (70, 'Marie Scott', 7, 80000),
    (71, 'Harry Lopez', 7, 85000),
    (72, 'Shirley Hill', NULL, 90000),
    (73, 'Philip Roberts', 5, 72000),
    (74, 'Norma Murphy', 5, 75000),
    (75, 'Phillip Lopez', 6, 78000),
    (76, 'Denise Hill', 6, 80000),
    (77, 'Jesse Scott', 7, 85000),
    (78, 'Ruth Lopez', 7, 90000),
    (79, 'Gerald Hill', NULL, 95000),
    (80, 'Lori Roberts', NULL, 98000),
    (81, 'Teresa Murphy', 5, 72000),
    (82, 'Eugene Cox', 5, 75000),
    (83, 'Sara Scott', 4, 78000),
    (84, 'Nicholas Lopez', 6, 80000),
    (85, 'Gloria Hill', 6, 85000),
    (86, 'Wanda Scott', 7, 90000),
    (87, 'Louis Lopez', 7, 95000),
    (88, 'Tammy Hill', NULL, 98000),
    (89, 'Phillip Cox', NULL, 100000),
    (90, 'Diane Scott', 5, 72000),
    (91, 'Russell Lopez', 5, 75000),
    (92, 'Geraldine Hill', 4, 78000),
    (93, 'Judy Roberts', 6, 80000),
    (94, 'Roy Murphy', 6, 85000),
    (95, 'Linda Garcia', 7, 90000),
    (96, 'Karen Martinez', 7, 95000),
    (97, 'Samantha Robinson', NULL, 98000),
    (98, 'Noah Clark', NULL, 100000),
    (99, 'Andrew Rodriguez', 5, 75000),
    (100, 'William Lewis', 5, 78000);

