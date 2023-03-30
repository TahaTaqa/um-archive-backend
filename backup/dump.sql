/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: activities
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `activities` (
  `activity_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `location` varchar(45) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `barcode_id` varchar(45) NOT NULL,
  `link` varchar(1000) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `order_date` date NOT NULL,
  `department` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 96 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: activities_has_users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `activities_has_users` (
  `activity_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`activity_id`, `user_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: activity_image
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `activity_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(1000) NOT NULL,
  `private` varchar(10) NOT NULL,
  `activity_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 76 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: reset_token
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `reset_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(2000) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 30 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: user_token
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `user_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `token` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id_token` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 99 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `department` varchar(100) NOT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 38 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: activities
# ------------------------------------------------------------

INSERT INTO
  `activities` (
    `activity_id`,
    `title`,
    `location`,
    `summary`,
    `barcode_id`,
    `link`,
    `start_date`,
    `end_date`,
    `order_date`,
    `department`,
    `type`
  )
VALUES
  (
    82,
    'tre',
    'نشاط داخلي',
    'kkk',
    'AC-503281018291',
    'jyjyjyj',
    NULL,
    NULL,
    '2023-03-02',
    'هندسة',
    'المحاضرات(السيمينرات)'
  );
INSERT INTO
  `activities` (
    `activity_id`,
    `title`,
    `location`,
    `summary`,
    `barcode_id`,
    `link`,
    `start_date`,
    `end_date`,
    `order_date`,
    `department`,
    `type`
  )
VALUES
  (
    83,
    'test',
    'نشاط داخلي',
    'test',
    'AC-713700104161',
    '',
    NULL,
    NULL,
    '2023-03-03',
    'تربية',
    'مناقشات طلبة الدراسات العليا'
  );
INSERT INTO
  `activities` (
    `activity_id`,
    `title`,
    `location`,
    `summary`,
    `barcode_id`,
    `link`,
    `start_date`,
    `end_date`,
    `order_date`,
    `department`,
    `type`
  )
VALUES
  (
    84,
    'l',
    'نشاط خارجي',
    '',
    'AC-091960552605',
    '',
    '2023-03-07',
    '2023-03-08',
    '2023-03-07',
    'هندسة',
    'المحاضرات(السيمينرات)'
  );
INSERT INTO
  `activities` (
    `activity_id`,
    `title`,
    `location`,
    `summary`,
    `barcode_id`,
    `link`,
    `start_date`,
    `end_date`,
    `order_date`,
    `department`,
    `type`
  )
VALUES
  (
    86,
    'bfbfb',
    'نشاط خارجي',
    '',
    'AC-631555770210',
    '',
    '2023-03-03',
    '2023-03-09',
    '2023-03-02',
    'هندسة',
    'المحاضرات(السيمينرات)'
  );
INSERT INTO
  `activities` (
    `activity_id`,
    `title`,
    `location`,
    `summary`,
    `barcode_id`,
    `link`,
    `start_date`,
    `end_date`,
    `order_date`,
    `department`,
    `type`
  )
VALUES
  (
    87,
    'fefe',
    'نشاط خارجي',
    'fefef',
    'AC-166048431211',
    'efefe',
    NULL,
    NULL,
    '2023-03-07',
    'هندسة',
    'المحاضرات(السيمينرات)'
  );
INSERT INTO
  `activities` (
    `activity_id`,
    `title`,
    `location`,
    `summary`,
    `barcode_id`,
    `link`,
    `start_date`,
    `end_date`,
    `order_date`,
    `department`,
    `type`
  )
VALUES
  (
    88,
    'dgdggd',
    'نشاط خارجي',
    'kjgg',
    'AC-956114700577',
    '',
    NULL,
    NULL,
    '2023-03-02',
    'علوم حاسبات',
    'المحاضرات(السيمينرات)'
  );
INSERT INTO
  `activities` (
    `activity_id`,
    `title`,
    `location`,
    `summary`,
    `barcode_id`,
    `link`,
    `start_date`,
    `end_date`,
    `order_date`,
    `department`,
    `type`
  )
VALUES
  (
    89,
    'العنوان',
    'نشاط خارجي',
    NULL,
    'AC-744948494770',
    '',
    NULL,
    NULL,
    '2023-03-01',
    'هندسة',
    'مناقشات طلبة الدراسات العليا'
  );
INSERT INTO
  `activities` (
    `activity_id`,
    `title`,
    `location`,
    `summary`,
    `barcode_id`,
    `link`,
    `start_date`,
    `end_date`,
    `order_date`,
    `department`,
    `type`
  )
VALUES
  (
    93,
    'dwdw',
    'نشاط خارجي',
    NULL,
    'AC-247266761125',
    '',
    NULL,
    NULL,
    '2023-03-07',
    'هندسة',
    'المحاضرات(السيمينرات)'
  );
INSERT INTO
  `activities` (
    `activity_id`,
    `title`,
    `location`,
    `summary`,
    `barcode_id`,
    `link`,
    `start_date`,
    `end_date`,
    `order_date`,
    `department`,
    `type`
  )
VALUES
  (
    94,
    'ewew',
    'نشاط خارجي',
    'ewewe',
    'AC-258205800444',
    'ewewe',
    NULL,
    NULL,
    '2023-03-07',
    'علوم حاسبات',
    'المحاضرات(السيمينرات)'
  );
INSERT INTO
  `activities` (
    `activity_id`,
    `title`,
    `location`,
    `summary`,
    `barcode_id`,
    `link`,
    `start_date`,
    `end_date`,
    `order_date`,
    `department`,
    `type`
  )
VALUES
  (
    95,
    'test',
    'نشاط خارجي',
    'test',
    'AC-783496876243',
    '',
    NULL,
    NULL,
    '2023-03-07',
    'علوم الحاسوب',
    'الدورات التدريبية'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: activities_has_users
# ------------------------------------------------------------

INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (89, 1);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (89, 24);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (93, 29);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (94, 24);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (95, 25);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: activity_image
# ------------------------------------------------------------

INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    71,
    'images\\BlzTqNQJIlnMoXp2FCTIb-169990_v9_bb.jpg',
    'true',
    86
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    72,
    'images\\51LHorZFsJNEJLslxGmZF-17735bb9ce7ba89b5fa2dc8eb2f19588069b7c83.jpg',
    'false',
    86
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    73,
    'images\\5PfllHYKdUmkzvTBq0FPJ-17735bb9ce7ba89b5fa2dc8eb2f19588069b7c83.jpg',
    'false',
    90
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    74,
    'images\\ieFq-TC4zAcHUIzN51Jbo-17735bb9ce7ba89b5fa2dc8eb2f19588069b7c83.jpg',
    'false',
    91
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    75,
    'images\\RxAMMfZNSlNJfn7uqZGFN-331088836_2281256408741917_7994410259147010706_n.jpg',
    'false',
    95
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: reset_token
# ------------------------------------------------------------

INSERT INTO
  `reset_token` (`id`, `token`, `user_id`)
VALUES
  (
    3,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjYsImlhdCI6MTY3OTM5ODcwMCwiZXhwIjoxNjc5NDAyMzAwfQ.RCKvNuqGwmUMGJEP1EJS0xhiJ81STt9qEx-orWdSBdk',
    '26'
  );
INSERT INTO
  `reset_token` (`id`, `token`, `user_id`)
VALUES
  (
    4,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjc5Mzk4NzI2LCJleHAiOjE2Nzk0MDIzMjZ9.L87jpPmV9qjKf-CFDz4lcJt2GpkmGba8UlGT5EEfS4w',
    '1'
  );
INSERT INTO
  `reset_token` (`id`, `token`, `user_id`)
VALUES
  (
    29,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjksImlhdCI6MTY3OTQ5OTI1NiwiZXhwIjoxNjc5NTAyODU2fQ.FL5DIGd4wG9PisTUQYKiUgsk29N9N6MgFGhfTWRINLs',
    '29'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: user_token
# ------------------------------------------------------------

INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    44,
    NULL,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXBhcnRtZW50IjoiYWRtaW4iLCJ0eXBlIjoiYWRtaW4iLCJpYXQiOjE2Nzc3NjIzNDcsImV4cCI6MTY5MzMxNDM0N30.5dp9iBnjjzjfBxXK40JHrZiSwpsQU-qjhAJQIf_Phyg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    63,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6ImFkbWluIiwidHlwZSI6ImFkbWluIiwiaWF0IjoxNjc4MzkwODkzLCJleHAiOjE2OTM5NDI4OTN9.kr5uv8unR_tDgNo-iPbm8ve5g3XEgufgBOsd-B3lMZY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    64,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6ImFkbWluIiwidHlwZSI6ImFkbWluIiwiaWF0IjoxNjc4NDc4ODA4LCJleHAiOjE2OTQwMzA4MDh9.FW8FEtGjIqhD4t1dISEyuc2O-GIBwP1AnrB1pN7w1Xg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    65,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImlhdCI6MTY3ODU2NzYxOCwiZXhwIjoxNjk0MTE5NjE4fQ.UZWftj5tvzAriqNCawmYPIpgPrcT6IlSb9ymYwd2u-I'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    66,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImlhdCI6MTY3ODU2NzkzOSwiZXhwIjoxNjk0MTE5OTM5fQ.Hrr7CgZ3CMRFHYWFmA6yK7ZdWsH-V8RCceYkL6Pkh_w'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    67,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImlhdCI6MTY3ODU2ODEzMiwiZXhwIjoxNjk0MTIwMTMyfQ.LyQwJE5zZtWUFJrNr8nvs0BSMmKGATnNDVqt-zuj_Kk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    68,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImlhdCI6MTY3ODU2ODk0OCwiZXhwIjoxNjk0MTIwOTQ4fQ.3qTX1j8a2RWD-nctNpBqNM1Lp3KQp5P4OjX2-8jpQsc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    69,
    25,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjUsImRlcGFydG1lbnQiOiLYudmE2YjZhSDYrdin2LPYqNin2KoiLCJ0eXBlIjoic3VwZXJ2aXNvciIsImlhdCI6MTY3ODcyNzU1MywiZXhwIjoxNjk0Mjc5NTUzfQ.La04O2clq5qe3aIIc5FeM94Bcd_OfrTYbmDgz8OSJvs'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    70,
    24,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjQsImRlcGFydG1lbnQiOiLZh9mG2K_Ys9ipIiwidHlwZSI6InVzZXIiLCJpYXQiOjE2Nzg3MjgwNzYsImV4cCI6MTY5NDI4MDA3Nn0.ov1PQo4yy2XQTdeYC0fRajTwntwAVv5aIUjxNMjEuX4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    71,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImlhdCI6MTY3ODcyODg2NiwiZXhwIjoxNjk0MjgwODY2fQ._iR4-f0XUSo4RJArXQwjBMqGU45oNHixZ76p1OK_Tko'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    72,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImlhdCI6MTY3ODkwNTA1OCwiZXhwIjoxNjk0NDU3MDU4fQ.q394Xf8xJDnSX6hzjBDiWcQg3TZ9K_BpBOXIB2GkuLg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    73,
    29,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjksImRlcGFydG1lbnQiOiLZh9mG2K_Ys9ipIiwidHlwZSI6InN1cGVydmlzb3IiLCJpYXQiOjE2Nzg5MDUxMDMsImV4cCI6MTY5NDQ1NzEwM30.VOZI4FoUrdVP7fstIzvaOvr2ebNIbSgIRtAIPK_vBCU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    74,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImlhdCI6MTY3ODkwNTExNiwiZXhwIjoxNjk0NDU3MTE2fQ.eg4yLQKNiOFs1x72Zc9WqYDz7m5xEhoPqD2fGuvclE0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    75,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImlhdCI6MTY3OTA3MTk1MiwiZXhwIjoxNjk0NjIzOTUyfQ.sPdeUtyI_0h2SF_WCE_oluBNS0xEbV3mi-TALI780ps'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    76,
    24,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjQsImRlcGFydG1lbnQiOiLZh9mG2K_Ys9ipIiwidHlwZSI6InVzZXIiLCJpYXQiOjE2NzkwNzIwODcsImV4cCI6MTY5NDYyNDA4N30.UONmMnhL2afBlKWm8xaRUZl-U6ILYCyCi_0d8HY_YIA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    77,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImlhdCI6MTY3OTA3NDM5OCwiZXhwIjoxNjk0NjI2Mzk4fQ.o51cZyvvQ16BMdleSVeK1fObjwl3r47cnqcIdCb4MLI'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    78,
    25,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjUsImRlcGFydG1lbnQiOiLYudmE2YjZhSDYrdin2LPYqNin2KoiLCJ0eXBlIjoic3VwZXJ2aXNvciIsImlhdCI6MTY3OTE0MjAxMSwiZXhwIjoxNjk0Njk0MDExfQ.-0RVOzdusNspvNGdA9EmXvIkp2VlwVvfv_5tYSnWDos'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    79,
    25,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjUsImRlcGFydG1lbnQiOiLYudmE2YjZhSDYrdin2LPYqNin2KoiLCJ0eXBlIjoic3VwZXJ2aXNvciIsImlhdCI6MTY3OTE0MjAxMSwiZXhwIjoxNjk0Njk0MDExfQ.-0RVOzdusNspvNGdA9EmXvIkp2VlwVvfv_5tYSnWDos'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    80,
    26,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjYsImRlcGFydG1lbnQiOiLYudmE2YjZhSDYrdin2LPYqNin2KoiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY3OTE3NjA3NCwiZXhwIjoxNjk0NzI4MDc0fQ.hC8bjsMZtLrVO-NN3Z3V-AWIemUWlUJ9TSVQk7pJAD8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    81,
    26,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjYsImRlcGFydG1lbnQiOiLYudmE2YjZhSDYrdin2LPYqNin2KoiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY3OTE3NjA3NCwiZXhwIjoxNjk0NzI4MDc0fQ.hC8bjsMZtLrVO-NN3Z3V-AWIemUWlUJ9TSVQk7pJAD8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    82,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImlhdCI6MTY3OTM0ODE2OSwiZXhwIjoxNjk0OTAwMTY5fQ.9Ra-iD2eM67hOJQnUyWNqmqC8spYgGyhzbmhbpQzt8o'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    83,
    26,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjYsImRlcGFydG1lbnQiOiLYudmE2YjZhSDYrdin2LPYqNin2KoiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY3OTQwMDgzMCwiZXhwIjoxNjk0OTUyODMwfQ.BS3XSalmUyY57ayIS8MpaMZoOMv1LJSiAD4u1UZi3M8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    84,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImlhdCI6MTY3OTQwMTA1MSwiZXhwIjoxNjk0OTUzMDUxfQ.AapvDTstd7pJ7IgkmIWMdcofVSxg9ifxmBEdFGXZTBQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    85,
    26,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjYsImRlcGFydG1lbnQiOiLYudmE2YjZhSDYrdin2LPYqNin2KoiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY3OTQwMTcwOSwiZXhwIjoxNjk0OTUzNzA5fQ.ATuOWZnQ5NChayQ5Df1ISj3WmqQV7lrwi26i66J-MHg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    86,
    29,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjksImRlcGFydG1lbnQiOiLZh9mG2K_Ys9ipIiwidHlwZSI6InN1cGVydmlzb3IiLCJpYXQiOjE2Nzk0MjYxMjksImV4cCI6MTY5NDk3ODEyOX0.S8K7Zq91IqMAv_yuC_c43Uy8UiTMWTq4-FlmLtkkLlU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    87,
    29,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjksImRlcGFydG1lbnQiOiLZh9mG2K_Ys9ipIiwidHlwZSI6InN1cGVydmlzb3IiLCJpYXQiOjE2Nzk0MjYzMzEsImV4cCI6MTY5NDk3ODMzMX0.gvWeaOx8eipkQzGsHrf26J0fkJEkX4R0RFt77YgOw_0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    88,
    26,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjYsImRlcGFydG1lbnQiOiLYudmE2YjZhSDYrdin2LPYqNin2KoiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY3OTUwMTAyNCwiZXhwIjoxNjk1MDUzMDI0fQ.7U_d9ssVE-bUw0gDgaP-rpEQK1xGo0c0lbUeGWoyTx0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    89,
    26,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjYsImRlcGFydG1lbnQiOiLYudmE2YjZhSDYrdin2LPYqNin2KoiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY3OTUwMTAyNCwiZXhwIjoxNjk1MDUzMDI0fQ.7U_d9ssVE-bUw0gDgaP-rpEQK1xGo0c0lbUeGWoyTx0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    90,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImlhdCI6MTY3OTUwMTA0OCwiZXhwIjoxNjk1MDUzMDQ4fQ.Q7w60lCH2ofo2I4WlyAynPgYFn2EbMw0YTChsooOydI'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    91,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImlhdCI6MTY3OTUwMTIxMiwiZXhwIjoxNjk1MDUzMjEyfQ.akr8n2E5CD3kOB-aRR_OVhQCt3MzPL9AcaKu1JlXKEY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    92,
    37,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzcsImRlcGFydG1lbnQiOiLYudmE2YjZhSDYrdin2LPYqNin2KoiLCJ0eXBlIjoiZGVlbiIsImlhdCI6MTY3OTUwNDI4OCwiZXhwIjoxNjk1MDU2Mjg4fQ.JvgHsifLLyzMoIYKFgDvKwxWbros0c5h9abunr6WS5Y'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    93,
    26,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjYsImRlcGFydG1lbnQiOiLYudmE2YjZhSDYrdin2LPYqNin2KoiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY3OTUxNjgyNiwiZXhwIjoxNjk1MDY4ODI2fQ.s_3x8GyFAXFjZbynQUCMKGFp_r_iF8xnw0ZVZ_wN8VU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    94,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImlhdCI6MTY3OTUxNzg0OCwiZXhwIjoxNjk1MDY5ODQ4fQ.ZUdY2LqaJSNKUnBHVEYikB-F9CRahma3dICa9PoS6ik'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    95,
    24,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjQsImRlcGFydG1lbnQiOiLZh9mG2K_Ys9ipIiwidHlwZSI6InVzZXIiLCJpYXQiOjE2Nzk1MTc4ODEsImV4cCI6MTY5NTA2OTg4MX0.uuMN3oc_D9sizYDgPU5nSCh1K9JQb0UmvfLbtzE5U_A'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    96,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImlhdCI6MTY3OTU2ODg2MSwiZXhwIjoxNjk1MTIwODYxfQ.MtCu9V5TxccQpsLmPjt_IEQggBAvHyXHAWzOigjVB2c'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    97,
    26,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjYsImRlcGFydG1lbnQiOiLYudmE2YjZhSDYrdin2LPYqNin2KoiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY3OTU2OTkzNCwiZXhwIjoxNjk1MTIxOTM0fQ.YvCmzg1gHM4XvcEGvICAj4PJ4Kspb_apxDS-AhdK4-0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    98,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6Iti52YTZiNmFINit2KfYs9io2KfYqiIsInR5cGUiOiJhZG1pbiIsImVtYWlsIjoiYWRtaW5AYXJjaGl2ZS5jb20iLCJpYXQiOjE2Nzk1ODEyNTQsImV4cCI6MTY5NTEzMzI1NH0.BDalIPfZGfRW3rw9a3wp3aqfPj4j9sxzOKEZ4TxWB_Q'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: users
# ------------------------------------------------------------

INSERT INTO
  `users` (
    `user_id`,
    `name`,
    `email`,
    `password`,
    `department`,
    `phone_number`,
    `type`
  )
VALUES
  (
    1,
    'admin',
    'admin@archive.com',
    '$2b$10$0bhlL9EAnIz6FwvqhuADHO2y2yVLbAGjCGYHWmDT.oM2ERL3Jr6da',
    'علوم حاسبات',
    '07712345678',
    'admin'
  );
INSERT INTO
  `users` (
    `user_id`,
    `name`,
    `email`,
    `password`,
    `department`,
    `phone_number`,
    `type`
  )
VALUES
  (
    24,
    'red',
    's2s2ssd2@f.h',
    '$2b$10$921nxP0xVrlrndsP6w7Fa.Cif8IF/AixfPWYN/nil6ekk6idf9WuK',
    'هندسة',
    '07712345678',
    'user'
  );
INSERT INTO
  `users` (
    `user_id`,
    `name`,
    `email`,
    `password`,
    `department`,
    `phone_number`,
    `type`
  )
VALUES
  (
    25,
    'rere',
    'fefe@f.c',
    '$2b$10$42VgVmy8WncUP0LeDTIQnOLkuSB4oFYxeJQXXIFreDSd59Cd.7.jK',
    'علوم حاسبات',
    '07712345678',
    'supervisor'
  );
INSERT INTO
  `users` (
    `user_id`,
    `name`,
    `email`,
    `password`,
    `department`,
    `phone_number`,
    `type`
  )
VALUES
  (
    26,
    'hjhjjg',
    'archive@admin.com',
    '$2b$10$wMhj85kFr9zIAoddSbSTfOvMRfdP2DLbFO3GelC9oILiM29zfN4.K',
    'علوم حاسبات',
    '07512345678',
    'user'
  );
INSERT INTO
  `users` (
    `user_id`,
    `name`,
    `email`,
    `password`,
    `department`,
    `phone_number`,
    `type`
  )
VALUES
  (
    27,
    'dwdwd',
    'dwdw@w.ci',
    NULL,
    'علوم حاسبات',
    '07512345678',
    'user'
  );
INSERT INTO
  `users` (
    `user_id`,
    `name`,
    `email`,
    `password`,
    `department`,
    `phone_number`,
    `type`
  )
VALUES
  (
    28,
    'fwwfw',
    'dwdw@w.ce',
    NULL,
    'تربية',
    '07512345678',
    'supervisor'
  );
INSERT INTO
  `users` (
    `user_id`,
    `name`,
    `email`,
    `password`,
    `department`,
    `phone_number`,
    `type`
  )
VALUES
  (
    29,
    'عبدالرحمن ماهر حسن',
    'ibn.maher.96@gmail.com',
    '$2b$10$VGcRSKZTUJJT1UxMwR7Rh.dcxWtcxjveQF5DrVWDpkwhW024J0TTG',
    'هندسة',
    '07512345678',
    'supervisor'
  );
INSERT INTO
  `users` (
    `user_id`,
    `name`,
    `email`,
    `password`,
    `department`,
    `phone_number`,
    `type`
  )
VALUES
  (
    30,
    'ق3ق3',
    'fefe@gmail.com',
    NULL,
    'علوم حاسبات',
    '07712345678',
    'user'
  );
INSERT INTO
  `users` (
    `user_id`,
    `name`,
    `email`,
    `password`,
    `department`,
    `phone_number`,
    `type`
  )
VALUES
  (
    31,
    'dwdwd',
    'dede@gmail.xx',
    NULL,
    'هندسة',
    '07512345678',
    'user'
  );
INSERT INTO
  `users` (
    `user_id`,
    `name`,
    `email`,
    `password`,
    `department`,
    `phone_number`,
    `type`
  )
VALUES
  (
    32,
    'dwdw',
    'dwdw@w.tt',
    NULL,
    'هندسة',
    '07512345678',
    'user'
  );
INSERT INTO
  `users` (
    `user_id`,
    `name`,
    `email`,
    `password`,
    `department`,
    `phone_number`,
    `type`
  )
VALUES
  (
    33,
    'e2e2',
    'e2@e2e2.f',
    NULL,
    'هندسة',
    '07512345678',
    'supervisor'
  );
INSERT INTO
  `users` (
    `user_id`,
    `name`,
    `email`,
    `password`,
    `department`,
    `phone_number`,
    `type`
  )
VALUES
  (
    34,
    'ewewe',
    'hg@f.c',
    NULL,
    'علوم حاسبات',
    '07512345678',
    'user'
  );
INSERT INTO
  `users` (
    `user_id`,
    `name`,
    `email`,
    `password`,
    `department`,
    `phone_number`,
    `type`
  )
VALUES
  (
    35,
    'dwdwd',
    'dwd@dw.c',
    NULL,
    'هندسة',
    '07512345678',
    'user'
  );
INSERT INTO
  `users` (
    `user_id`,
    `name`,
    `email`,
    `password`,
    `department`,
    `phone_number`,
    `type`
  )
VALUES
  (
    36,
    'ggg',
    'dqd@s.cm',
    NULL,
    'تربية',
    '07512345678',
    'deen'
  );
INSERT INTO
  `users` (
    `user_id`,
    `name`,
    `email`,
    `password`,
    `department`,
    `phone_number`,
    `type`
  )
VALUES
  (
    37,
    'deen',
    'deen@deen.com',
    '$2b$10$VRM96DGhOV8ecn/d4EWOIeUJorc80K9dRyPWtXmRV7AL..uABRslu',
    'علوم حاسبات',
    '07512345678',
    'deen'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
