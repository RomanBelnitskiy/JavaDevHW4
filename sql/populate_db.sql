INSERT INTO worker(ID, NAME, BIRTHDAY, LEVEL, SALARY) 
  VALUES(1, 'Robert', '1995-12-20', 'Junior', 1000),
  (2, 'Bernard', '1998-01-10', 'Middle', 5000),
  (3, 'Michle', '1991-07-22', 'Senior', 10000),
  (4, 'John', '2001-06-27', 'Middle', 4500),
  (5, 'Jane', '2000-11-05', 'Senior', 11000),
  (6, 'Jack', '1999-10-25', 'Middle', 3500),
  (7, 'Oliver', '2003-01-10', 'Junior', 1000),
  (8, 'Charlie', '2002-05-01', 'Middle', 5000),
  (9, 'Oscar', '1997-03-15', 'Junior', 1000),
  (10, 'Emily', '1991-11-24', 'Middle', 3000), 
  (11, 'Olivia', '1986-02-17', 'Middle', 4000);

INSERT INTO client(ID, NAME) VALUES 
  (1, 'Apple'),
  (2, 'Microsoft'),
  (3, 'Alphabet'),
  (4, 'Amazon'),
  (5, 'Nvidia'),
  (6, 'Tesla');

INSERT INTO project(ID, CLIENT_ID, "name", START_DATE, FINISH_DATE) VALUES 
  (1, 2, 'Project 1', '2020-12-01', '2021-05-12'),
  (2, 1, 'Project 2', '2021-05-18', '2023-08-01'),
  (3, 2, 'Project 3', '2021-01-04', '2022-07-01'),
  (4, 3, 'Project 4', '2021-05-15', '2023-01-01'),
  (5, 4, 'Project 5', '2021-09-01', '2023-06-24'),
  (6, 5, 'Project 6', '2021-12-10', '2023-02-08'),
  (7, 6, 'Project 7', '2022-02-13', '2023-09-13'),
  (8, 1, 'Project 8', '2022-05-20', NULL),
  (9, 4, 'Project 9', '2022-08-06', '2023-02-25'),
  (10, 6, 'Project A', '2022-11-19', NULL),
  (11, 5, 'Project B', '2023-01-23', '2023-04-22'),
  (12, 3, 'Project C', '2023-04-01', NULL),
  (13, 1, 'Project D', '2023-07-07', NULL),
  (14, 4, 'Project E', '2023-08-06', NULL);

INSERT INTO project_worker(PROJECT_ID, WORKER_ID) VALUES 
  (1, 3),
  (1, 2),
  (1, 4),
  (1, 9),
  (2, 5),
  (2, 8),
  (2, 9),
  (2, 10),
  (2, 11),
  (3, 1),
  (3, 6),
  (3, 7),
  (4, 3),
  (4, 2),
  (4, 4),
  (4, 8),
  (5, 5),
  (5, 9),
  (5, 10),
  (5, 11),
  (6, 8),
  (6, 1),
  (6, 6),
  (7, 5),
  (7, 10),
  (8, 3),
  (8, 2),
  (8, 4),
  (8, 9),
  (9, 11),
  (9, 1),
  (9, 6),
  (9, 5),
  (10, 10),
  (10, 3),
  (11, 7),
  (11, 9),
  (11, 8),
  (12, 5),
  (12, 4),
  (13, 6),
  (13, 1),
  (13, 3);