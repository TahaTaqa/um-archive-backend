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
  `title` varchar(1000) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `barcode_id` varchar(45) NOT NULL,
  `link` varchar(1000) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `order_date` date NOT NULL,
  `department` json DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 369 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: activities_has_users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `activities_has_users` (
  `activity_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`activity_id`, `user_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: activity_file
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `activity_file` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(1000) DEFAULT NULL,
  `activity_id` varchar(45) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 110 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: activity_image
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `activity_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(1000) NOT NULL,
  `private` varchar(10) NOT NULL,
  `activity_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 267 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: reset_token
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `reset_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(2000) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 44 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: user_code
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `user_code` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(6) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE = InnoDB AUTO_INCREMENT = 353 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

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
) ENGINE = InnoDB AUTO_INCREMENT = 630 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `department` json DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 385 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

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
    152,
    'مشاركة في مهجان الربيع',
    'نشاط داخلي',
    'مشاركة في مهرجان الربيع',
    'ACT-793550732272',
    '',
    '2023-05-30',
    '2023-05-31',
    '2023-04-25',
    '[\"ÙØ´ØªØ±Ù\"]',
    'الجامعة وخدمة المجتمع'
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
    157,
    'test',
    'نشاط داخلي',
    'test',
    'ACT-292120182907',
    '',
    '2023-05-12',
    '2023-05-12',
    '2023-05-12',
    '[\"ÙØ´ØªØ±Ù\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    159,
    'تكريم الكلبة الأوائل',
    'نشاط داخلي',
    'تكريم الطلبة الأوائل على أقسام الكلية في مقر العمادة',
    'ACT-726705313806',
    '',
    '2023-05-09',
    '2023-05-09',
    '2023-05-07',
    '[\"ÙØ´ØªØ±Ù\"]',
    'فعاليات التكريم'
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
    160,
    'ندوة حول شبكات الجيل الخامس',
    'نشاط داخلي',
    'ندوة حول شبكات الجيل الخامس',
    'ACT-631820638738',
    '',
    '2023-05-08',
    '2023-05-09',
    '2023-05-01',
    '[\"Ø§ÙØ´Ø¨ÙØ§Øª\"]',
    'الندوات العلمية'
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
    161,
    'مناقشة طالبة الماجستير هدى حازم',
    'نشاط داخلي',
    '',
    'ACT-753480607732',
    '',
    '2023-05-07',
    '2023-05-07',
    '2023-05-04',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    162,
    'عضوية اللجان الدائمة لسنة 2020-2021',
    'نشاط داخلي',
    'عضوية في اللجان الدائمة لسنة 2020-2021',
    'ACT-279958408417',
    '',
    '2020-10-12',
    '2021-10-12',
    '2020-10-12',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'العضوية في اللجان الدائمة'
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
    163,
    'عضوية اللجان الدائمة لسنة 2021-2022',
    'نشاط داخلي',
    'عضوية اللجان الدائمة لسنة 2021-2022',
    'ACT-596682676633',
    '',
    '2021-11-10',
    '2022-11-10',
    '2023-05-10',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'العضوية في اللجان الدائمة'
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
    164,
    'أمر إداري خاص بالمؤتمر الدولي الثامن IEEE',
    'نشاط داخلي',
    'تسمية أعضاء اللجان الخاصة بالمؤتمر الدولي الثامن لكلية علوم الحاسوب والرياضيات / جامعة الموصل تحت شعار (المؤتمر الدولي الثامن لتكنولوجيا المعلومات المعاصرة والرياضيات) برعاية مؤسسة IEEE',
    'ACT-180692862647',
    '',
    '2022-08-30',
    '2022-08-31',
    '2022-08-28',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    165,
    'أمر تكليف',
    'نشاط داخلي',
    'جداول توزیع المواد الدراسیة على أعضاء الھیئة التدریسیة لقسم علوم الحاسوب (للكورسین الاول والثاني) للعام الدراسي2021-2022 وللدراسة الأولیة والعلیا (صباحي ومسائي)',
    'ACT-480535419438',
    '',
    '2022-05-16',
    '2023-05-16',
    '2022-05-16',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'تكليف بالتدريس في الدراسات الأولية أو العليا'
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
    166,
    'امر اداري',
    'نشاط داخلي',
    'لجنة امتحانية',
    'ACT-459004953753',
    '',
    '2016-09-01',
    '2017-08-31',
    '2016-12-29',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'العضوية في اللجان الدائمة'
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
    170,
    'test',
    'نشاط داخلي',
    'test',
    'ACT-571051451906',
    '',
    '2023-06-05',
    '2023-06-23',
    '2023-06-23',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'تكليف بالتدريس في الدراسات الأولية أو العليا'
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
    172,
    'منصة البحوث التطبيقية - كلية علوم البيئة وتقاناتها - تأييد مشاركة - 2021',
    'نشاط داخلي',
    'ورشة عمل بعنوان (منصة البحوث التطبيقية) - وحدة التعليم المستمر في الكلية بالتعاون مع رئاسة جامعة الموصل / شعبة تسويق النتاجات العلمية',
    'ACT-088643892417',
    '',
    '2021-10-17',
    '2021-10-17',
    '2021-10-21',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    173,
    'اللجنة التحضيرية للورشة العلمية (التعلم العميق في ترتيل القرآن الكريم)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية بعنوان (التعلم العميق في ترتيل القرآن الكريم)',
    'ACT-111769541000',
    '',
    '2022-01-16',
    '2022-01-16',
    '2022-01-12',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    174,
    'اللجنة التحضيرية للورشة العلمية (Data Analysis with R)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (Data Analysis with R)',
    'ACT-762600759296',
    '',
    '2022-01-17',
    '2022-01-19',
    '2022-01-13',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    175,
    'اللجنة التحضيرية للورشة العلمية (Data Analysis with R) - ملحق',
    'نشاط داخلي',
    'إضافة تدريسيين إلى اللجنة التحضيرية للورشة العلمية (Data Analysis with R)',
    'ACT-426442084256',
    '',
    '2022-01-17',
    '2022-01-19',
    '2022-01-18',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    176,
    'اللجنة التحضيرية للورشة العلمية الالكترونية (LPWAN5G - Untapped opportunity for smart secure applications)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية الالكترونية (LPWAN5G - Untapped opportunity for smart secure applications)',
    'ACT-780321949166',
    '',
    '2022-01-24',
    '2022-01-24',
    '2022-01-24',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    177,
    'التعلم العميق في ترتيل القرآن الكريم - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (التعلم العميق في ترتيل القرآن الكريم)',
    'ACT-713006560205',
    '',
    '2022-01-16',
    '2022-01-16',
    '2022-01-24',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    178,
    'حوار مفتوح حول مستقبل التصميم والتعليم - تأييد حضور',
    'نشاط داخلي',
    'ورشة عمل بعنوان (حوار مفتوح حول مستقبل التصميم والتعليم) أقامها الدكتور عمر محمد عبدالكريم / مسؤول وحدة التأهيل والتوظيف والمتابعة في كلية الهندسة مع البروفسور ريان عبدالله (أستاذ التصميم بجامعة Leipzig الألمانية وعميد كلية التصميم بالجامعة الالمانية في القاهرة) - أقيمت الورشة عبر تطبيق zoom الساعة السابعة مساءا',
    'ACT-022005345963',
    '',
    '2022-01-20',
    '2022-01-20',
    '2022-01-25',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    179,
    'حوار مفتوح حول مستقبل التصميم والتعليم - تأييد حضور',
    'نشاط داخلي',
    'ورشة عمل بعنوان (حوار مفتوح حول مستقبل التصميم والتعليم) أقامها الدكتور عمر محمد عبدالكريم / مسؤول وحدة التأهيل والتوظيف والمتابعة في كلية الهندسة مع البروفسور ريان عبدالله (أستاذ التصميم بجامعة Leipzig الألمانية وعميد كلية التصميم بالجامعة الالمانية في القاهرة) - أقيمت الورشة عبر تطبيق zoom الساعة السابعة مساءا',
    'ACT-426200352570',
    '',
    '2022-01-20',
    '2022-01-20',
    '2022-01-25',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    180,
    'اللجنة التحضيرية للورشة العلمية (معالجة صورية باعتماد تقنيات حديثة في التعلم العميق)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (معالجة صورية باعتماد تقنيات حديثة في التعلم العميق)',
    'ACT-652937554460',
    '',
    '2022-01-26',
    '2022-01-26',
    '2022-01-26',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    181,
    'معالجة صورية باعتماد تقنيات حديثة في التعلم العميق - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (معالجة صورية باعتماد تقنيات حديثة في التعلم العميق)',
    'ACT-025034343957',
    '',
    '2022-01-26',
    '2022-01-26',
    '2022-01-31',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    182,
    'LPWAN5G - Untapped opportunity for smart secure applications - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (LPWAN5G - Untapped opportunity for smart secure applications) - أقيمت ألكترونيا',
    'ACT-136893344815',
    '',
    '2022-01-24',
    '2022-01-24',
    '2022-02-06',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    183,
    'التعلم العميق في ترتيل القرآن الكريم - تأييد مشاركة - ملحق',
    'نشاط داخلي',
    'ورشة عمل بعنوان (التعلم العميق في ترتيل القرآن الكريم)',
    'ACT-251822223736',
    '',
    '2022-01-17',
    '2022-01-17',
    '2022-02-07',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    184,
    'آلية تنصيب وتنفيذ نظام المستودع الرقمي الخاص بالبحوث المنشورة - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (آلية تنصيب وتنفيذ نظام المستودع الرقمي الخاص بالبحوث المنشورة)',
    'ACT-416627284334',
    '',
    '2019-11-26',
    '2019-11-26',
    '2022-02-17',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    185,
    'اللجنة التحضيرية للورشة العلمية الالكترونية (تقانة المعلومات ودورها في الاستراتيجية الوطنية للنزاهة ومكافحة الفساد)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية الالكترونية (تقانة المعلومات ودورها في الاستراتيجية الوطنية للنزاهة ومكافحة الفساد) بالتعاون مع وحدة تمكين المرأة في رئاسة جامعة الموصل',
    'ACT-869463751453',
    '',
    '2022-02-28',
    '2022-02-28',
    '2022-02-27',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    186,
    'اللجنة التحضيرية للورشة العلمية الالكترونية (أخلاقيات النشر في المجلات العالمية)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية الالكترونية (أخلاقيات النشر في المجلات العالمية)',
    'ACT-223708422188',
    '',
    '2022-03-02',
    '2022-03-02',
    '2022-03-01',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    187,
    'اللجنة التحضيرية للورشة العلمية (Twitter API :Explaining and Applying)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (Twitter API :Explaining and Applying) في قسم هندسة البرمجيات',
    'ACT-246241703611',
    '',
    '2022-03-27',
    '2022-03-27',
    '2022-03-09',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'العضوية في اللجان المؤقتة'
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
    188,
    'اللجنة التحضيرية للورشة العلمية (تطوير مناهج اقسام الاحصاء لمواجهة تحديات المستقبل)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (تطوير مناهج اقسام الاحصاء لمواجهة تحديثات المستقبل) في قسم الاحصاء والمعلوماتية',
    'ACT-132900921621',
    '',
    '2022-03-30',
    '2022-03-30',
    '2022-03-16',
    '[\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"]',
    'العضوية في اللجان المؤقتة'
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
    189,
    'منصة البحوث التطبيقية - كلية التربية للعلوم الصرفة - تأييد مشاركة - 2022',
    'نشاط داخلي',
    'ورشة عمل بعنوان (منصة البحوث التطبيقية) أقيمت في كلية التربية للعلوم الصرفة وبالتعاون مع شعبة تسويق النتاجات العلمية لقسم الشؤون العلمية في رئاسة جامعة الموصل',
    'ACT-438405715400',
    '',
    '2022-03-23',
    '2022-03-23',
    '2022-03-29',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    190,
    'اللجنة التحضيرية للورشة العلمية الالكترونية (منصة البحوث التطبيقية القابلة للتسويق)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية الالكترونية (منصة البحوث التطبيقية القابلة للتسويق)',
    'ACT-251550447792',
    '',
    '2022-03-31',
    '2022-03-31',
    '2022-03-29',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    191,
    'اللجنة التحضيرية للورشة العلمية الالكترونية (الافتراس والاحتيال للمجلات والمؤتمرات العلمية)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية الالكترونية (الافتراس والاحتيال للمجلات والمؤتمرات العلمية)',
    'ACT-945932672234',
    '',
    '2022-04-06',
    '2022-04-06',
    '2022-03-29',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    192,
    'اللجنة التحضيرية للورشة العلمية (تطوير مناهج اقسام الاحصاء لمواجهة تحديات المستقبل) - ملحق',
    'نشاط داخلي',
    'أمر إداري بإضافة السيد (نغم عجيل) إلى اللجنة التحضيرية للورشة العلمية (تطوير مناهج اقسام الاحصاء لمواجهة تحديثات المستقبل)',
    'ACT-037930526417',
    '',
    '2022-03-30',
    '2022-03-30',
    '2022-03-29',
    '[\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"]',
    'العضوية في اللجان المؤقتة'
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
    193,
    'تطوير مناهج اقسام الاحصاء لمواجهة تحديات المستقبل - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (تطوير مناهج اقسام الاحصاء لمواجهة تحديات المستقبل)',
    'ACT-071386320132',
    '',
    '2022-03-30',
    '2022-03-30',
    '2022-04-04',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    194,
    'Twitter API :Explaining and Applying - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (Twitter API :Explaining and Applying)',
    'ACT-876293459089',
    '',
    '2022-03-27',
    '2022-03-27',
    '2022-04-06',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    195,
    'اللجنة التحضيرية للورشة العلمية (أداة هامة للباحثين والمبرمجين GitHub)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (أداة هامة للباحثين والمبرمجين GitHub)',
    'ACT-569459142515',
    '',
    '2022-04-19',
    '2022-04-19',
    '2022-04-06',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'العضوية في اللجان المؤقتة'
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
    196,
    'اللجنة التحضيرية للورشة العلمية (أداة هامة للباحثين والمبرمجين GitHub) - إضافة محاضر إلى اللجنة',
    'نشاط داخلي',
    'أمر إداري بإضافة الدكتور (فارس عادل داؤد) كمحاضر إلى اللجنة التحضيرية للورشة العلمية (أداة هامة للباحثين والمبرمجين GitHub)',
    'ACT-277846305740',
    '',
    '2022-04-19',
    '2022-04-19',
    '2022-04-14',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'العضوية في اللجان المؤقتة'
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
    197,
    'اللجنة التحضيرية للورشة العلمية الالكترونية (Project-Based Approach to Learn Programming)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية الالكترونية (Project-Based Approach to Learn Programming) وباستضافة الدكتور Serge Demeyer من جامعة Antwerp البلجيكية',
    'ACT-481128629327',
    '',
    '2022-04-16',
    '2022-04-16',
    '2022-04-14',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    198,
    'اللجنة التحضيرية للورشة العلمية (أداة هامة للباحثين والمبرمجين GitHub) - ملحق',
    'نشاط داخلي',
    'أمر إداري بإضافة السيد (عمار محمد حسين) إلى اللجنة التحضيرية للورشة العلمية (أداة هامة للباحثين والمبرمجين GitHub)',
    'ACT-183068901782',
    '',
    '2022-04-19',
    '2022-04-19',
    '2022-04-18',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'العضوية في اللجان المؤقتة'
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
    199,
    'اللجنة التحضيرية للورشة العلمية (لغة Python واستخداماتها في الوقت الحاضر)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (لغة Python واستخداماتها في الوقت الحاضر)',
    'ACT-093012439262',
    '',
    '2022-04-25',
    '2022-04-25',
    '2022-04-25',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'العضوية في اللجان المؤقتة'
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
    200,
    'اللجنة التحضيرية للورشة العلمية الالكترونية (أساسيات كتابة البحث العلمي واستخدام برامجيات المراجع العلمية)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية الالكترونية (أساسيات كتابة البحث العلمي واستخدام برامجيات المراجع العلمية)',
    'ACT-668253875337',
    '',
    '2022-05-09',
    '2022-05-09',
    '2022-04-26',
    '[\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"]',
    'العضوية في اللجان المؤقتة'
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
    201,
    'لغة Python واستخداماتها في الوقت الحاضر - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (لغة Python واستخداماتها في الوقت الحاضر)',
    'ACT-652168714196',
    '',
    '2022-04-25',
    '2022-04-25',
    '2022-04-26',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    202,
    'منصة الباحث العلمي من Google',
    'نشاط داخلي',
    'ورشة عمل بعنوان (منصة الباحث العلمي من Google) المقدمة من قبل أ.م.د. محمد عبدالرزاق / مسؤول شعبة النتاجات العلمية / قسم الشؤون العلمية / جامعة الموصل',
    'ACT-573641751093',
    '',
    '2022-12-18',
    '2022-12-18',
    '2022-12-20',
    '[\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    203,
    'اللجنة التحضيرية للورشة العلمية (Next Generation Network)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (Next Generation Network)',
    'ACT-662600844193',
    '',
    '2022-05-11',
    '2022-05-11',
    '2022-05-09',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    204,
    'اللجنة التحضيرية للورشة العلمية (مفهوم انترنت السلوك Concept of Internet-of-Behavior (IOB))',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (مفهوم انترنت السلوك Concept of Internet-of-Behavior (IOB))',
    'ACT-884065629151',
    '',
    '2022-05-18',
    '2022-05-18',
    '2022-05-10',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'العضوية في اللجان المؤقتة'
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
    205,
    'أداة هامة للباحثين والمبرمجين GitHub - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (أداة هامة للباحثين والمبرمجين GitHub)',
    'ACT-283047097978',
    '',
    '2022-04-19',
    '2022-04-19',
    '2022-05-10',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    206,
    'منصة البحوث التطبيقية - تأييد مشاركة - 2022',
    'نشاط داخلي',
    'ورشة عمل بعنوان (منصة البحوث التطبيقية)',
    'ACT-422223727303',
    '',
    '2022-04-26',
    '2022-04-26',
    '2022-05-10',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    207,
    'اللجنة التحضيرية للورشة العلمية الالكترونية (اساسيات كتابة البحث العلمي واستخدام برامجيات المراجع العلمية) - ملحق',
    'نشاط داخلي',
    'أمر إدراي بإضافة تدريسيين إلى اللجنة التحضيرية للورشة العلمية الالكترونية (اساسيات كتابة البحث العلمي واستخدام برامجيات المراجع العلمية)',
    'ACT-442665272066',
    '',
    '2022-05-09',
    '2022-05-09',
    '2022-05-10',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    208,
    'اللجنة التحضيرية للورشة العلمية (استخدام التقنيات الذكائية في بحوث العمليات)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (استخدام التقنيات الذكائية في بحوث العمليات)',
    'ACT-527446909383',
    '',
    '2022-05-29',
    '2022-05-29',
    '2022-05-16',
    '[\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"]',
    'العضوية في اللجان المؤقتة'
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
    209,
    'اللجنة التحضيرية للورشة العلمية (مفهوم انترنت السلوك Concept of Internet-of-Behavior (IOB)) - ملحق',
    'نشاط داخلي',
    'أمر إداري بإضافة (م.د. بان شريف مصطفى) إلى اللجنة التحضيرية للورشة العلمية (مفهوم انترنت السلوك Concept of Internet-of-Behavior (IOB))',
    'ACT-982300617644',
    '',
    '2022-05-18',
    '2022-05-18',
    '2022-05-16',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'العضوية في اللجان المؤقتة'
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
    210,
    'اللجنة التحضيرية للكرنفال السنوي الثاني والسوق الخيري',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للكرنفال السنوي الثاني والسوق الخيري في كلية علوم الحاسوب والرياضيات',
    'ACT-578584385916',
    '',
    '2022-05-23',
    '2022-05-23',
    '2022-05-17',
    '[\"ÙØ´ØªØ±Ù\"]',
    'النشاطات الخيرية'
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
    211,
    'اللجنة التحضيرية للورشة العلمية (سرية البيانات في الحوسبة السحابية)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (سرية البيانات في الحوسبة السحابية)',
    'ACT-387421964233',
    '',
    '2022-05-26',
    '2022-05-26',
    '2022-05-18',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    212,
    'مفهوم انترنت السلوك Concept of Internet-of-Behavior (IOB) - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (مفهوم انترنت السلوك Concept of Internet-of-Behavior (IOB))',
    'ACT-960529356819',
    '',
    '2022-05-18',
    '2022-05-18',
    '2022-05-26',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    213,
    'استخدام التقنيات الذكائية في بحوث العمليات - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (استخدام التقنيات الذكائية في بحوث العمليات)',
    'ACT-944499151729',
    '',
    '2022-05-29',
    '2022-05-29',
    '2022-06-12',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    214,
    'Next Generation Network - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (Next Generation Network)',
    'ACT-564778557462',
    '',
    '2022-05-30',
    '2022-05-30',
    '2022-06-16',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    215,
    'منظومة صحة صدور الوثائق - مركز الحاسبة الالكترونية - تأييد مشاركة',
    'نشاط داخلي',
    'دورة تدريبية حول منظومة صحة صدور الوثائق - مركز الحاسبة الالكترونية',
    'ACT-945465555072',
    '',
    '2022-08-01',
    '2022-08-01',
    '2022-08-29',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    216,
    'منظومة التصنيف الوطني حسب تعليمات الفريق الوزاري للتصنيف الوطني - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة شعبة ضمان الجودة وتقييم الأداء بعنوان (منظومة التصنيف الوطني حسب تعليمات الفريق الوزاري للتصنيف الوطني)',
    'ACT-755916845662',
    '',
    '2022-09-12',
    '2022-09-12',
    '2022-09-28',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    217,
    'اللجنة التحضيرية للورشة العلمية (العملات الرقمية حقيقة المستقبل)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (العملات الرقمية حقيقة المستقبل)',
    'ACT-921227193750',
    '',
    '2022-10-17',
    '2022-10-17',
    '2022-10-16',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    218,
    'العملات الرقمية حقيقة المستقبل - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (العملات الرقمية حقيقة المستقبل)',
    'ACT-865767316653',
    '',
    '2022-10-17',
    '2022-10-17',
    '2022-10-20',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    219,
    'اللجنة التحضيرية للورشة العلمية (استخدام سلاسل ماركوف في صفوف الانتظار)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (استخدام سلاسل ماركوف في صفوف الانتظار)',
    'ACT-396492191260',
    '',
    '2022-10-24',
    '2022-10-24',
    '2022-10-20',
    '[\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"]',
    'العضوية في اللجان المؤقتة'
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
    220,
    'اللجنة التحضيرية للورشة العلمية (العملات الرقمية حقيقة المستقبل) - ملحق',
    'نشاط داخلي',
    'أمر إداري بإضافة السيد (عمار محمد حسين) إلى اللجنة التحضيرية للورشة العلمية (العملات الرقمية حقيقة المستقبل)',
    'ACT-819976931494',
    '',
    '2022-10-17',
    '2022-10-17',
    '2022-10-23',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    221,
    'استخدام سلاسل ماركوف في صفوف الانتظار - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (استخدام سلاسل ماركوف في صفوف الانتظار)',
    'ACT-944505227784',
    '',
    '2022-10-24',
    '2022-10-24',
    '2022-11-01',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    222,
    'اللجنة التحضيرية للورشة العلمية (ضرورة الجامعة الافتراضية للطلبة العراقيين)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (ضرورة الجامعة الافتراضية للطلبة العراقيين)',
    'ACT-627822206989',
    '',
    '2022-11-07',
    '2022-11-07',
    '2022-11-03',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    223,
    'ضرورة الجامعة الافتراضية للطلبة العراقيين - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (ضرورة الجامعة الافتراضية للطلبة العراقيين)',
    'ACT-387858960596',
    '',
    '2022-11-07',
    '2022-11-07',
    '2022-11-14',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    224,
    'العنف ضد المرأة وآثاره على المجتمع - تأييد اقامة محاضرة - الاستاذ الدكتور هدى عصام احمد',
    'نشاط داخلي',
    'تأييد إقامة المحاضرة الموسومة (العنف ضد المرأة وآثاره على المجتمع) للأستاذ الدكتورة هدى عصام احمد',
    'ACT-333519670605',
    '',
    '2022-11-28',
    '2022-11-28',
    '2022-11-30',
    '[\"ÙØ´ØªØ±Ù\"]',
    'إلقاء محاضرات ــ سيمينارات'
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
    225,
    'العنف ضد المرأة وآثاره على المجتمع - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عنمل بعنوان (العنف ضد المرأة وآثاره على المجتمع)',
    'ACT-595561781663',
    '',
    '2022-11-28',
    '2022-11-28',
    '2022-12-06',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    226,
    'Strategic Scholarly Publishing - كلية الهندسة - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (Strategic Scholarly Publishing) والتي أقيمت في كلية الهندسة - قسم الهندسة الكهربائية والتي ألقاها الدكتور أمين محمود عبوش - جامعة كوينزلاند',
    'ACT-096990750066',
    '',
    '2022-12-13',
    '2022-12-13',
    '2022-12-22',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    227,
    'اللجنة التحضيرية للورشة العلمية (الابتزاز الالكتروني)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (الابتزاز الالكتروني)',
    'ACT-814297907589',
    '',
    '2023-01-18',
    '2023-01-18',
    '2023-01-17',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    228,
    'الابتزاز الالكتروني - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (الابتزاز الالكتروني)',
    'ACT-090848218021',
    '',
    '2023-01-18',
    '2023-01-18',
    '2023-01-29',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    229,
    'اللجنة التحضيرية للورشة العلمية (الشبكات المعقدة : فن استعراض البيانات)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (الشبكات المعقدة : فن استعراض البيانات)',
    'ACT-610990848795',
    '',
    '2023-03-08',
    '2023-03-08',
    '2023-02-28',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    230,
    'اللجنة التحضيرية للورشة العلمية (الجيل القادم لبروتوكول الانترنت IPV6)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (الجيل القادم لبروتوكول الانترنت IPV6)',
    'ACT-330579330521',
    '',
    '2023-03-13',
    '2023-03-13',
    '2023-03-07',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    231,
    'الشبكات المعقدة : فن استعراض البيانات - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (الشبكات المعقدة : فن استعراض البيانات)',
    'ACT-783054730699',
    '',
    '2023-03-08',
    '2023-03-08',
    '2023-03-14',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    232,
    'الشبكات المعقدة : فن استعراض البيانات - تأييد مشاركة - ملحق',
    'نشاط داخلي',
    'إضافة منتسبين إلى تأييد المشاركة في ورشة العمل الموسومة (الشبكات المعقدة : فن استعراض البيانات)',
    'ACT-439362807887',
    '',
    '2023-03-08',
    '2023-03-08',
    '2023-03-19',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    233,
    'اللجنة التحضيرية للورشة العلمية (تعلم لاتيكس للمبتدئين)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (تعلم لاتيكس للمبتدئين)',
    'ACT-392075446590',
    '',
    '2023-03-27',
    '2023-03-27',
    '2023-03-26',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    234,
    'اللجنة التحضيرية للورشة العلمية (Digital Forencing)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (Digital Forencing)',
    'ACT-794561522946',
    '',
    '2023-03-29',
    '2023-03-29',
    '2023-03-26',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    235,
    'الجيل القادم لبروتوكول الانترنت IPV6 - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (الجيل القادم لبروتوكول الانترنت IPV6)',
    'ACT-884822362275',
    '',
    '2023-03-13',
    '2023-03-13',
    '2023-03-30',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    236,
    'اللجنة التحضيرية للورشة العلمية (IOT with BLYNK application and web server)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (IOT with BLYNK application and web server)',
    'ACT-507748119730',
    '',
    '2023-04-05',
    '2023-04-05',
    '2023-04-03',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    237,
    'Digital Forensics - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (Digital Forensics)',
    'ACT-405844105604',
    '',
    '2023-03-29',
    '2023-03-29',
    '2023-04-03',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    238,
    'تعلم لاتيكس للمبتدئين - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (تعلم لاتيكس للمبتدئين)',
    'ACT-096788463585',
    '',
    '2023-03-28',
    '2023-03-28',
    '2023-04-03',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    239,
    'اللجنة التحضيرية للورشة العلمية (الجريمة الالكترونية والمجتمع (الوقاية والحلول))',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (الجريمة الالكترونية والمجتمع (الوقاية والحلول))',
    'ACT-180056935663',
    '',
    '2023-04-10',
    '2023-04-10',
    '2023-04-06',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    240,
    'الجريمة الالكترونية والمجتمع (الوقاية والحلول) - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان الجريمة الالكترونية والمجتمع (الوقاية والحلول)',
    'ACT-315673225968',
    '',
    '2023-04-10',
    '2023-04-10',
    '2023-04-17',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    241,
    'IOT with BLYNK application and web server - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (IOT with BLYNK application and web server)',
    'ACT-875392103547',
    '',
    '2023-04-05',
    '2023-04-05',
    '2023-04-17',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    242,
    'اللجنة التحضيرية للورشة العلمية (طريقك لتكون عالم بيانات والأدوار المحورية لهذا التخصص)',
    'نشاط داخلي',
    'أمر إداري بتشكيل اللجنة التحضيرية للورشة العلمية (طريقك لتكون عالم بيانات والأدوار المحورية لهذا التخصص)',
    'ACT-634306559354',
    '',
    '2023-04-26',
    '2023-04-26',
    '2023-04-19',
    '[\"ÙØ´ØªØ±Ù\"]',
    'العضوية في اللجان المؤقتة'
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
    243,
    'طريقك لتكون عالم بيانات والأدوار المحورية لهذا التخصص - تأييد مشاركة',
    'نشاط داخلي',
    'ورشة عمل بعنوان (طريقك لتكون عالم بيانات والأدوار المحورية لهذا التخصص)',
    'ACT-856822036980',
    '',
    '2023-04-26',
    '2023-04-26',
    '2023-05-09',
    '[\"ÙØ´ØªØ±Ù\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    244,
    'لجنة مناقشة طالب الماجستير (محمد طارق صالح طه) في رسالته الموسومة (Real-Time Routing in IOT for Delivery and Fault Tolerance)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالب الماجستير (محمد طارق صالح طه) في رسالته الموسومة (Real-Time Routing in IOT for Delivery and Fault Tolerance) بمشاركة د.فراس محمود مصطفى من جامعة بوليتيكنك دهوك/الكلية التقنية الهندسية وبإشراف د.ضحى بشير عبدالله من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-978692106969',
    '',
    '2022-03-16',
    '2022-03-16',
    '2022-02-28',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    245,
    'لجنة مناقشة طالب الماجستير (عطاالله صالح احمد سالم) في رسالته الموسومة (Deep Learning for Retinal Disease Detection)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالب الماجستير (عطاالله صالح احمد قاسم) في رسالته الموسومة (Deep Learning for Retinal Disease Detection) بمشاركة د.حسنين سمير عدالله من الجامعة التكنولوجية/قسم علوم الحاسوب كعضو في لجنة المناقشة وبإشراف د.منار يونس احمد من جامعة نينوى/كلية تكنولوجيا المعلومات',
    'ACT-030577411342',
    '',
    '2022-03-22',
    '2022-03-22',
    '2022-03-01',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    246,
    'لجنة مناقشة طالبة الدكتوراه (بلقيس طلال حسن عبدالرحمن) في أطروحتها الموسومة (Improving Parallel Schedulers in Heterogeneous Distributed Computing for Containerized Big Data)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الدكتوراه (بلقيس طلال حسن عبدالرحمن) في أطروحتها الموسومة (Improving Parallel Schedulers in Heterogeneous Distributed Computing for Containerized Big Data) بمشاركة د.قاسم محمد حسين من جامعة تكريت/كلية هندسة النفط والمعادن و د.علي كاظم ادريس من جامعة بابل/كلية العلوم و د.محمد حازم الجماس من جامعة نينوى/كلية هندسة الالكترونيات وبإشراف د.ضحى بشير عبدالله من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-145663693338',
    '',
    '2022-03-20',
    '2022-03-20',
    '2022-03-01',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    247,
    'لجنة مناقشة طالبة الدبلوم العالي (صفا احمد عزيز فتحي) في رسالتها الموسومة (تصميم وتنفيذ نظام موزع لإدارة لقاحات الاطفال - حالة الدراسة : مركز صحي العربي في الموصل)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الدبلوم العالي (صفا احمد عزيز فتحي) في رسالتها الموسومة (تصميم وتنفيذ نظام موزع لإدارة لقاحات الاطفال - حالة الدراسة : مركز صحي العربي في الموصل) بإشراف د.عمار ظاهر ياسين من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-185765201126',
    '',
    '2022-03-23',
    '2022-03-23',
    '2022-03-09',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    248,
    'لجنة مناقشة طالب الماجستير (اركان عبدالاله خضر حبو) في رسالته الموسومة (Developing a Big-Data Platform for Monitoring Container-Based Environment)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالب الماجستير (اركان عبدالاله خضر حبو) في رسالته الموسومة (Developing a Big-Data Platform for Monitoring Container-Based Environment) بمشاركة د. فارس صالح فتحي من جامعة نينوى/هندسة الالكترونيات وبإشراف د. رواء بطرس بولص من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-216228283656',
    '',
    '2022-04-06',
    '2022-04-06',
    '2022-03-13',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    249,
    'لجنة مناقشة طالب الماجستير (عمر عبد نجم عبودي) في رسالته الموسومة (تقنية الاخفاء باستخدام صور Webp باستخدام خوارزمية M2PAM لتطبيقات الوسائط الاجتماعية)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالب الماجستير (عمر عبد نجم عبودي) في رسالته الموسومة (تقنية الاخفاء باستخدام صور Webp باستخدام خوارزمية M2PAM لتطبيقات الوسائط الاجتماعية) بمشاركة د. علاء كاظم فرحان من الجامعة التكنولوجية/قسم علوم الحاسوب وبإشراف د. احمد سامي نوري من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-318482844207',
    '',
    '2022-05-10',
    '2022-05-10',
    '2022-04-14',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    250,
    'لجنة مناقشة طالب الماجستير (محمد نايف عبد عبدالله) في رسالته الموسومة (كشف لغة المتحدث في ملف صوتي باستخدام تقنيات ذكائية)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالب الماجستير (محمد نايف عبد عبدالله) في رسالته الموسومة (كشف لغة المتحدث في ملف صوتي باستخدام تقنيات ذكائية) بمشاركة د. ميادة رامز محمود من جامعة زاخو/كلية العلوم وبإشراف د.فوزية محمود رمو من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-018289840827',
    '',
    '2022-05-08',
    '2022-05-08',
    '2022-04-14',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    251,
    'لجنة مناقشة طالبة الماجستير (الاء فارس حمدي مصطفى) في رسالتها الموسومة (تطبيق تتبع مرضى كورونا فايروس يركز على حقوق الخصوصية والأمان)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الماجستير (الاء فارس حمدي مصطفى) في رسالتها الموسومة (تطبيق تتبع مرضى كورونا فايروس يركز على حقوق الخصوصية والأمان) بمشاركة د.علي فوزي نجم من جامعة كربلاء/كلية الهندسة وبإشراف د.مفاز محسن خليل من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-706859169834',
    '',
    '2022-05-11',
    '2022-05-11',
    '2022-04-14',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    252,
    'لجنة مناقشة طالبة الدبلوم العالي (رغدة طارق الياس داؤد) في رسالتها الموسومة (تصميم وتنفيذ تطبيق لإجراء المزادات الكترونيا)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الدبلوم العالي (رغدة طارق الياس داؤد) في رسالتها الموسومة (تصميم وتنفيذ تطبيق لإجراء المزادات الكترونيا) بإشراف د. عدي هاشم سعيد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-306594755901',
    '',
    '2022-04-27',
    '2022-04-27',
    '2022-04-20',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    253,
    'لجنة مناقشة طالبة الماجستير (رنا عبدالغفور محمد طاهر اسماعيل) في رسالتها الموسومة (A Framework for Real-Time Big Data Analytics)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الماجستير (رنا عبدالغفور محمد طاهر اسماعيل) في رسالتها الموسومة (A Framework for Real-Time Big Data Analytics) بمشاركة د. مشاري عايد عسكر من جامعة تكريت/كلية علوم الحاسوب والرياضيات وبإشراف د.ضحى بشير عبدالله من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-295318845567',
    '',
    '2022-05-10',
    '2022-05-10',
    '2022-04-20',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    254,
    'لجنة مناقشة طالبة الماجستير (انفال محمود احمد محمد) في رسالتها الموسومة (Information Hiding Using Smart Phone Based on GPS)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الماجستير (انفال محمود احمد محمد) في رسالتها الموسومة (Information Hiding Using Smart Phone Based on GPS) بمشاركة د.منار يونس احمد من جامعة نينوى/كلية تكنولوجيا المعلومات و د.ميثاق طالب كاطع من الجامعة المستنصرية/كلية العلوم وبإشراف د. احمد سامي نوري من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-417488908789',
    '',
    '2022-05-12',
    '2022-05-12',
    '2022-04-20',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    255,
    'لجنة مناقشة طالب الماجستير (عدنان عبدالله عطية محمود) في رسالته الموسومة (Using Semantic Analysis for Location-aware Personalized News Recommendation)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالب الماجستير (عدنان عبدالله عطية محمود) في رسالته الموسومة (Using Semantic Analysis for Location-aware Personalized News Recommendation) بمشاركة د. حسين عطية لفتة من جامعة بابل/كلية العلوم للبنات وبإشراف د. غيداء عبدالعزيز مجيد الطالب من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-208737254986',
    '',
    '2022-05-11',
    '2022-05-11',
    '2022-04-25',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    256,
    'لجنة مناقشة طالبة الماجستير (هند عبدالغني احمد جاسم) في رسالتها الموسومة (Secure IoT Through Designing New S-Box)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الماجستير (هند عبدالغني احمد جاسم) في رسالتها الموسومة (Secure IoT Through Designing New S-Box) بمشاركة د. موان بهجت عبدالرزاق من جامعة زاخو/كلية العلوم وبإشراف د. سفيان سالم محمود من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-838240436438',
    '',
    '2022-05-15',
    '2022-05-15',
    '2022-04-27',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    257,
    'لجنة مناقشة طالبة الدكتوراه (سجى جاسم محمد قدو) في أطروحتها الموسومة (Using Homomorphic Encryption to Enhance the Secrecy Service in Cloud Computing)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الدكتوراه (سجى جاسم محمد قدو) في أطروحتها الموسومة (Using Homomorphic Encryption to Enhance the Secrecy Service in Cloud Computing) وبمشاركة د. منار يونس احمد من جامعة نينوى/كلية تكنولوجيا المعلومات ود. علي مكي صغير من كلية القلم الجامعة ود. وسام سمير بهيه من جامعة بابل/كلية تكنولوجيا المعلومات وبإشراف د. دجان بشير طه من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-863521373386',
    '',
    '2022-06-08',
    '2022-06-08',
    '2022-05-18',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    258,
    'لجنة مناقشة طالبة الدكتوراه (شذى عبدالمنعم بكر احمد) في أطروحتها الموسومة (Security Based Layers for IoT Applications)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الدكتوراه (شذى عبدالمنعم بكر احمد) في أطروحتها الموسومة (Security Based Layers for IoT Applications) بمشاركة د. ستار بدر سد خان من جامعة بابل/كلية العلوم و د. ضياء عيدان جبر الشمري من جامعة القادسية/كلية علوم الحاسوب وتكنولوجيا المعلومات و د. علي عثمان محمد من جامعة نينوى/كلية تكنولوجيا المعلومات وبإشراف د. احمد سامي نوري من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-456006378265',
    '',
    '2022-06-07',
    '2022-06-07',
    '2022-05-19',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    259,
    'لجنة مناقشة طالبة الدكتوراه (اديبة خالد عبو مطرود) في أطروحتها الموسومة (ِA Smartphone Model for Human Activity Recognition Using Intelligent Techniques)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الدكتوراه (اديبة خالد عبو مطرود) في أطروحتها الموسومة (ِA Smartphone Model for Human Activity Recognition Using Intelligent Techniques) بمشاركة د. احمد طالب عبدالامير من الجامعة التقنية الوسطى/الكلية التقنية الادارية و د. عادل صبري عيسى من جامعة زاخو/كلية العلوم وبإشراف د. لهيب محمد ابراهيم من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-944402671374',
    '',
    '2022-06-22',
    '2022-06-22',
    '2022-05-29',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    260,
    'تسمية السادة المشرفين على طلبة الدبلوم العالي/علوم الحاسوب اعتبارا من 14/6/2022',
    'نشاط داخلي',
    'أمر إداري بتسمية السادة المشرفين على طلبة الدبلوم العالي/علوم الحاسوب المؤشرين إزاء كل واحد منهم والتي تبدأ بالتسلسل 1-احمد سامي محمود وتنتهي بالتسلسل 9-ياسر رياض ناظم واعتبارا من 14/6/2022',
    'ACT-283531147313',
    '',
    '2022-06-14',
    '2022-06-14',
    '2022-06-21',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'الاشراف على طلبة الدراسات الأولية أو العليا'
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
    261,
    'تسمية السادة المشرفين على طلبة الدكتوراه/علوم الحاسوب اعتبارا من 5/7/2022',
    'نشاط داخلي',
    'أمر إداري بتسمية السادة المشرفين على طلبة الدكتوراه/علوم الحاسوب المؤشرين ازاء اسم كل منهم والتي تبدأ بالتسلسل 1-ميس الريم عضيد وتنتهي بالتسلسل 6-شيماء شكيب محمد واعتبارا من 5/7/2022',
    'ACT-361253598107',
    '',
    '2022-07-05',
    '2022-07-05',
    '2022-07-19',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'الاشراف على طلبة الدراسات الأولية أو العليا'
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
    262,
    'تسمية السادة المشرفين على طلبة الماجستير/علوم الحاسوب اعتبارا من 5/7/2022',
    'نشاط داخلي',
    'أمر إداري بتسمية السادة المشرفين على طلبة الماجستير/علوم الحاسوب المؤشرين ازاء اسم كل منهم والتي تبدأ بالتسلسل 1-محمود محمد محمود وتنتهي بالتسلسل 7-ريا اكرم حمدي واعتبارا من 5/7/2022',
    'ACT-769907892949',
    '',
    '2022-07-05',
    '2022-07-05',
    '2022-07-19',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'الاشراف على طلبة الدراسات الأولية أو العليا'
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
    263,
    'لجنة مناقشة طالب الدكتوراه (هشام هاشم محمد شيت) في أطروحته الموسومة (Real Time Smart Framework for Big Data Traffic Management Based on Fog Computing)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالب الدكتوراه (هشام هاشم محمد شيت) في أطروحته الموسومة (Real Time Smart Framework for Big Data Traffic Management Based on Fog Computing) بمشاركة د.علي كاظم ادريس من جامعة بابل/كلية العلوم و د.عيسى ابراهيم عيسى من الجامعة التقنية الشمالية/المعهد التقني الموصل وبإشراف د. ضحى بشير عبدالله من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-866561681806',
    '',
    '2022-09-22',
    '2022-09-22',
    '2022-08-31',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    264,
    'لجنة مناقشة طالب الدكتوراه (يونس عباس يونس ال عربو) في أطروحته الموسومة (Multi Objects Detection and Tracking in Video File)',
    'نشاط داخلي',
    'لجنة مناقشة طالب الدكتوراه (يونس عباس يونس ال عربو) في أطروحته الموسومة (Multi Objects Detection and Tracking in Video File) بمشاركة د.طارق احمد رشيد من جامعة كوردستان هولير/كلية العلوم والهندسة ود.ايمان صالح صكبان من جامعة بابل/كلية تكنولوجيا المعلومات و د. عادل صبري عيسى من جامعة زاخو/كلية العلوم وبإشراف د. خليل ابراهيم احمد من كلية الحدباء الجامعة/قسم هندسة تقنات الحاسوب',
    'ACT-272234753328',
    '',
    '2022-09-28',
    '2022-09-28',
    '2022-08-31',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    265,
    'لجنة مناقشة طالبة الدكتوراه (اسماء موفق محمد توفيق) في أطروحتها الموسومة (Protection of Relational Database by Means of Watermarking)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الدكتوراه (اسماء موفق محمد توفيق) في أطروحتها الموسومة (Protection of Relational Database by Means of Watermarking) بمشاركة د. وسام سمير بهيه من جامعة بابل/كلية تكنولوجيا المعلومات و د. علاء كاظم فرحان من الجامعة التكنولوجية/قسم علوم الحاسوب و د. محمد حازم يونس من جامعة نينوى/كلية هندسة الالكترونيات وبإشراف د. مفاز محسن خليل من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-541352186269',
    '',
    '2022-09-29',
    '2022-09-29',
    '2022-08-31',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    266,
    'لجنة مناقشة طالبة الماجستير (رشا جمال حسين علي) في رسالتها الموسومة (Design an Adaptive and Scalable Topologies for the Iraqi Power Grid Network)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الماجستير (رشا جمال حسين علي) في رسالتها الموسومة (Design an Adaptive and Scalable Topologies for the Iraqi Power Grid Network) بمشاركة د. صلاح عبدالغني جارو من جامعة الموصل/كلية الهندسة و د. احمد بهيج ياسين من جامعة دهوك/كلية العلوم و بإشراف د. منار يونس احمد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-795980178282',
    '',
    '2022-09-20',
    '2022-09-20',
    '2022-08-31',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    267,
    'لجنة مناقشة طالب الماجستير (مهند رافع محمد يونس) في رسالته الموسومة (Real Time Cloud-Based Robotic System: Framework, Scheduling and Deplolyment Models)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالب الماجستير (مهند رافع محمد يونس) في رسالته الموسومة (Real Time Cloud-Based Robotic System: Framework, Scheduling and Deployment Models) بمشاركة د. فراس محمود مصطفى من جامعة بوليتيكنك/دهوك وبإشراف د. ضحى بشير عبدالله من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-806256631199',
    '',
    '2022-10-18',
    '2022-10-18',
    '2022-09-28',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    268,
    'لجنة مناقشة طالبة الماجستير (امنة طه قاسم عبدالله) في رسالتها الموسومة (كشف التلاعب في الصور الرقمية)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الماجستير (امنة طه قاسم عبدالله) في رسالتها الموسومة (كشف التلاعب في الصور الرقمية) بمشاركة د. ماجد ضرار يونس من جامعة نينوى/كلية هندسة الالكترونيات وبإشراف أ.م. سندس خليل ابراهيم من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-797927584637',
    '',
    '2022-10-27',
    '2022-10-27',
    '2022-10-06',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    269,
    'لجنة مناقشة طالب الماجستير (زيد ناطق عبدالقادر مصطفى) في رسالته الموسومة (Improving the Visual Quality of Scanning Electron Microscopy Images Using a Multistage Processing Algorithm)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالب الماجستير (زيد ناطق عبدالقادر مصطفى) في رسالته الموسومة (Improving the Visual Quality of Scanning Electron Microscopy Images Using a Multistage Processing Algorithm) بمشاركة د. احمد خورشيد محمد من جامعة دهوك/كلية الهندسة وبإشراف د. زهير قيس الامين من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-385515167445',
    '',
    '2022-10-30',
    '2022-10-30',
    '2022-10-06',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    270,
    'لجنة مناقشة طالب الدكتوراه (عمر شاكر حسن صوفي) في أطروحته الموسومة (Heart Attacks Prediction Based on Intelligent Techniques)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالب الدكتوراه (عمر شاكر حسن صوفي) في أطروحته الموسومة (Heart Attacks Prediction Based on Intelligent Techniques) بمشاركة د. مرتضى محمد حمد من جامعة الانبار/كلية علوم الحاسوب وتكنولوجيا المعلومات و د. اياد روضان عباس من الجامعة التكنولوجية/قسم علوم الحاسوب ود. الاء ياسين طه من جامعة الموصل/كلية التربية للعلوم الصرفة وبإشراف د. ابراهيم احمد صالح من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-277719360891',
    '',
    '2022-11-08',
    '2022-11-08',
    '2022-10-09',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    271,
    'لجنة مناقشة طالبة الماجستير (وجدان يونس عبد يونس) في رسالتها الموسومة (محاكاة للواقع المعزز لمنظومة كشف الحرائق)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الماجستير (وجدان يونس عبد يونس) في رسالتها الموسومة (محاكاة للواقع المعزز لمنظومة كشف الحرائق)بمشاركة د. سلوى محمد نجرس من جهاز الاشراف والتقويم العلمي وبإشراف د. خليل ابراهيم احمد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-679469802891',
    '',
    '2022-10-26',
    '2022-10-26',
    '2022-10-09',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    272,
    'لجنة مناقشة طالب الماجستير (احمد نظام حمو محمود) في رسالته الموسومة (تصميم نموذج فعال لتشخيص سرطان الجلد باستخدام تقنيات تعليم الالة)',
    'نشاط داخلي',
    'أمر بتشكيل لجنة لجنة مناقشة طالب الماجستير (احمد نظام حمو محمود) في رسالته الموسومة (تصميم نموذج فعال لتشخيص سرطان الجلد باستخدام تقنيات تعليم الالة)',
    'ACT-785600274586',
    '',
    '2022-12-01',
    '2022-12-01',
    '2022-11-13',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    273,
    'لجنة مناقشة طالبة الدبلوم العالي (اوس سعد محمود شاهين) في رسالتها الموسومة (Docker Containers of Multithreaded Client-Server Sockets)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الدبلوم العالي (اوس سعد محمود شاهين) في رسالتها الموسومة (Docker Containers of Multithreaded Client-Server Sockets) بإشراف د. اياد حسين عبدالقادر من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-400788412158',
    '',
    '2022-11-23',
    '2022-11-23',
    '2022-11-16',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    274,
    'لجنة مناقشة طالبة الماجستير (رغد سليم محمد نجيب محمد سليم) في رسالتها الموسومة (اعادة بناء صور الاشعة السينية ثلاثية الابعاد من الصور ثنائية الابعاد)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الماجستير (رغد سليم محمد نجيب محمد سليم) في رسالتها الموسومة (اعادة بناء صور الاشعة السينية ثلاثية الابعاد من الصور ثنائية الابعاد) بمشاركة د. معن عبدالخالق يحيى من الجامعة التقنية الشمالية وبإشراف د. ايلاف اسامة عبدالمجيد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-494902345208',
    '',
    '2023-02-20',
    '2023-02-20',
    '2023-01-31',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    275,
    'لجنة مناقشة طالبة الماجستير (هدى حازم محمد محمود) في رسالتها الموسومة (نظام متابعة البريد الصادر والوارد باستخدام الرمز الشريطي)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الماجستير (هدى حازم محمد محمود) في رسالتها الموسومة (نظام متابعة البريد الصادر والوارد باستخدام الرمز الشريطي) بمشاركة د. اسراء زكي محمد من جامعة كركوك/كلية علوم الحاسوب وتكنولوجيا المعلومات وبإشراف د. اياد حسين عبدالقادر من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-921181266760',
    '',
    '2023-03-12',
    '2023-03-12',
    '2023-02-23',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    276,
    'لجنة مناقشة طالب الماجستير (محمد فوزي شيت يونس) في رسالته الموسومة (Preserving Security of Data in Cloud Using Deep Learning)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالب الماجستير (محمد فوزي شيت يونس) في رسالته الموسومة (Preserving Security of Data in Cloud Using Deep Learning) بإشراف أ.م. ميلاد جادر سعيد من كلية علوم الحاسوب والرياضيات/قسم علوم الحاسوب',
    'ACT-456654067541',
    '',
    '2023-03-19',
    '2023-03-19',
    '2023-02-23',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    277,
    'لجنة مناقشة طالبة الدكتوراه (نغم سالم محمد عمر) في أطروحتها الموسومة (Lips Shape Extraction and Movement Tracking for Arabic Speech)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الدكتوراه (نغم سالم محمد عمر) في أطروحتها الموسومة (Lips Shape Extraction and Movement Tracking for Arabic Speech) بمشاركة د. اسراء محمد خضر من جامعة الموصل/كلية التربية للعلوم الصرفة و د. ضياء عيدان جبر من جامعة القادسية/كلية علوم الحاسوب وتكنولوجيا المعلومات وبإشراف د. خليل ابراهيم احمد من كلية الحدباء الجامعة',
    'ACT-048631022310',
    '',
    '2023-03-14',
    '2023-03-14',
    '2023-02-28',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    278,
    'لجنة مناقشة طالبة الدكتوراه (سرى رمزي شريف احمد) في أطروحتها الموسومة (Isolate Arabic Words Recognition for Peoples with Pronunciation Based on Deep Learning)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الدكتوراه (سرى رمزي شريف احمد) في أطروحتها الموسومة (Isolate Arabic Words Recognition for Peoples with Pronunciation Based on Deep Learning) بمشاركة د. احمد حسين عيوي من جامعة الكوفة/ملية عوم الحاسوب والرياضيات و د. الاء ياسين طه من جامعة الموصل/كلية التربية للعلوم الصرفة وبإشراف د. يسرى فيصل محمد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-729547967932',
    '',
    '2023-03-16',
    '2023-03-16',
    '2023-03-01',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    279,
    'لجنة مناقشة طالبة الدكتوراه (عمر سامي طه مطرود) في أطروحتها الموسومة (Improvement and Enhancement for Routing Protocols Techniques Based on TCP used in MANET)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الدكتوراه (عمر سامي طه مطرود) في أطروحتها الموسومة (Improvement and Enhancement for Routing Protocols Techniques Based on TCP used in MANET) بمشاركة د. عيسى ابراهيم عيسى من جامعة كركوك/كلية علوم الحاسوب وتكنولوجيا المعلومات و د. صلاح عبدالغني جارو من جامعة الموصل/كلية الهندسة وبإشراف د. منار يونس احمد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-097026200518',
    '',
    '2023-03-15',
    '2023-03-15',
    '2023-03-01',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    280,
    'test',
    'نشاط داخلي',
    NULL,
    'ACT-270203867754',
    '',
    '2023-07-15',
    '2023-07-15',
    '2023-07-17',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'حضور المحافل العلمية (مؤتمرات ــ ندوات ــ ورش عمل أو سيمنارات ـ فعاليات تكريم)'
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
    281,
    'لجنة مناقشة طالب الدبلوم العالي (محمد سعدالدين جاسم محمد) في رسالته الموسومة (ٍSemantic Segmentation of Natural Images Using Machine Learning Models)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالب الدبلوم العالي (محمد سعدالدين جاسم محمد) في رسالته الموسومة (ٍSemantic Segmentation of Natural Images Using Machine Learning Models) بإشراف د. محمد جاجان يونس من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-236180007583',
    '',
    '2023-03-13',
    '2023-03-13',
    '2023-03-01',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    282,
    'لجنة مناقشة طالبة الماجستير (رقية خليل ابراهيم عبدالرزاق) في رسالتها الموسومة (استخلاص المعلومات واسترجاعها من البيانات النصية لكشف المواضيع الاكثر تداولا)',
    'نشاط داخلي',
    'أمر إداري بتشكيل لجنة مناقشة طالبة الماجستير (رقية خليل ابراهيم عبدالرزاق) في رسالتها الموسومة (استخلاص المعلومات واسترجاعها من البيانات النصية لكشف المواضيع الاكثر تداولا) بمشاركة د. عبدالستار محمد خضر من المعهد التقني الموصل/الجامعة التقنية الشمالية وبإشراف د. غيداء عبدالعزيز الطالب من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-083387419456',
    '',
    '2023-04-04',
    '2023-04-04',
    '2023-03-06',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    283,
    'لجنة مناقشة طالب الماجستير (مازن علي فاضل عبدالله) في رسالته الموسومة (Isolated Arabic Alphabet Digits Independent Speaker Recognition System Based on Machine Learning)',
    'نشاط داخلي',
    'امر إداري بتشكيل لجنة مناقشة طالب الماجستير (مازن علي فاضل عبدالله) في رسالته الموسومة (Isolated Arabic Alphabet Digits Independent Speaker Recognition System Based on Machine Learning)',
    'ACT-968461783186',
    '',
    '2023-03-26',
    '2023-03-26',
    '2023-03-08',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    284,
    'لجنة مناقشة طالب الدبلوم العالي (احمد محمد حسين صالح) في رسالته الموسومة (ٍاستخدام تقنية مطابقة النموذج والتشفير لتأمين كائن في الصورة الرقمية)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الدبلوم العالي (احمد محمد حسين صالح) في رسالته الموسومة (ٍاستخدام تقنية مطابقة النموذج والتشفير لتأمين كائن في الصورة الرقمية) بإشراف د. عمر مؤيد عبدالله من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-230218104978',
    '',
    '2023-03-19',
    '2023-03-19',
    '2023-03-13',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    285,
    'لجنة مناقشة طالبة الدبلوم العالي (نور زياد طه حسين) في رسالتها الموسومة (نظام مراقبة الطاقة والتحكم بالاعتماد على انترنت الاشياء)',
    'نشاط داخلي',
    'امر ادري بتشكيل لجنة مناقشة طالبة الدبلوم العالي (نور زياد طه حسين) في رسالتها الموسومة (نظام مراقبة الطاقة والتحكم بالاعتماد على انترنت الاشياء) بإشراف د. عامر استقلال بدران من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-513167212878',
    '',
    '2023-03-19',
    '2023-03-19',
    '2023-03-13',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    286,
    'لجنة مناقشة طالبة الدبلوم العالي (فاطمة عويس مصلح خلف) في رسالتها الموسومة (تطوير تطبيق للتحكم في استخدام الاطفال للهاتف المحمول ومراقبتهم)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الدبلوم العالي (فاطمة عويس مصلح خلف) في رسالتها الموسومة (تطوير تطبيق للتحكم في استخدام الاطفال للهاتف المحمول ومراقبتهم)',
    'ACT-171825739702',
    '',
    '2023-03-19',
    '2023-03-19',
    '2023-03-13',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    287,
    'لجنة مناقشة طالبة الدكتوراه (اشرف عبدالمنعم عبدالمجيد ذنون) في أطروحتها الموسومة (Detection and Classification COVID-19 by Using Machine Learning Techniques)',
    'نشاط داخلي',
    'امر ادري بتشكيل لجنة مناقشة طالبة الدكتوراه (اشرف عبدالمنعم عبدالمجيد ذنون) في أطروحتها الموسومة (Detection and Classification COVID-19 by Using Machine Learning Techniques) بمشاركة د. مرتضى محمد حمد من جامعة الانبار/كلية علوم الحاسوب وتكنولوجيا المعلومات وبإشراف د. ندى نعمت سليم من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-651611292876',
    '',
    '2023-04-13',
    '2023-04-13',
    '2023-03-28',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    288,
    'لجنة مناقشة طالبة الماجستير (نادية محمد مجيد ابراهيم) في رسالتها الموسومة (تصميم وتنفيذ سرب التعلم التجميعي لاختيار الميزات)',
    'نشاط داخلي',
    'امر ادري بتشكيل لجنة مناقشة طالبة الماجستير (نادية محمد مجيد ابراهيم) في رسالتها الموسومة (تصميم وتنفيذ سرب التعلم التجميعي لاختيار الميزات) بمشاركة د. الاء ياسين طه من جامعة الموصل/كلية التربية للعلوم الصرفة وبإشراف د. فوزية محمود رمو من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-251518718551',
    '',
    '2023-04-19',
    '2023-04-19',
    '2023-04-03',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    289,
    'لجنة مناقشة طالب الدكتوراه (وائل وعدالله محمود شريف) في أطروحته الموسومة (Amelioration Real Time Big Data Streaming for Online E-Learning System in Cloud Environment)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الدكتوراه (وائل وعدالله محمود شريف) في أطروحته الموسومة (Amelioration Real Time Big Data Streaming for Online E-Learning System in Cloud Environment) بمشاركة د. معن عبدالخالق يحيى من الجامعة التقنية الشمالية وبإشراف د. ضحى بشير عبدالله من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-631702989417',
    '',
    '2023-04-26',
    '2023-04-26',
    '2023-04-05',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    290,
    'لجنة مناقشة طالب الدكتوراه (ابراهيم محمد احمد محمد) في أطروحته الموسومة (Cybersecurity Enhancement Using Intelligent System)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الدكتوراه (ابراهيم محمد احمد محمد) في أطروحته الموسومة (Cybersecurity Enhancement Using Intelligent System) بمشاركة د. مشاري عايد عسكر من جامعة تكريت/كلية علوم الحاسوب والرياضيات و مشاركة وإشراف د. منار يونس احمد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-821222195107',
    '',
    '2023-05-02',
    '2023-05-02',
    '2023-04-05',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    291,
    'لجنة مناقشة طالب الماجستير (عبدالله عبدالفتاح ابراهيم حسين) في رسالته الموسومة (Test and Evaluate the Performance of Web Sites Using Software Engineering Tools (University of Mosul Website-model))',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (عبدالله عبدالفتاح ابراهيم حسين) في رسالته الموسومة (Test and Evaluate the Performance of Web Sites Using Software Engineering Tools (University of Mosul Website-model)) باشراف د. شيماء مصطفى محي الدين من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-422570866687',
    '',
    '2023-04-26',
    '2023-04-26',
    '2023-04-06',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    292,
    'لجنة مناقشة طالبة الدكتوراه (حليمة عيسى سليمان عمر) في أطروحتها الموسومة (Container-Based Provisioning and Orchestration of IoT Application on the Edge and Cloud)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الدكتوراه (حليمة عيسى سليمان عمر) في أطروحتها الموسومة (Container-Based Provisioning and Orchestration of IoT Application on the Edge and Cloud) بمشاركة د. باسل شكر محمود من جامعة الموصل/كلية الهندسة (استاذ متمرس) و د. احمد بهيج ياسين من جامعة دهوك/كلية العلوم وباشراف د. رواء بطرس بولص من جامعة الموصل/كلية عوم الحاسوب والرياضيات',
    'ACT-704701208184',
    '',
    '2023-05-08',
    '2023-05-08',
    '2023-04-19',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    293,
    'لجنة مناقشة طالب الدكتوراه (حسن ماهر احمد انور) في أطروحته الموسومة (Skin Disease Detection Based on Deep Learning)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الدكتوراه (حسن ماهر احمد انور) في أطروحته الموسومة (Skin Disease Detection Based on Deep Learning) بمشاركة د. خليل ابراهيم احمد من كلية الحدباء الجامعة و د. اسراء محمد خضر من جامعة الموصل/كلية التربية للعوم الصرفة و مشاركة واشراف د. منار يونس احمد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-424273325168',
    '',
    '2023-05-07',
    '2023-05-07',
    '2023-04-19',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    294,
    'لجنة مناقشة طالبة الدكتوراه (ربى طلال ابراهيم احمد) في أطروحتها الموسومة (Classification of Personality Traits Based on Data Fusion Using Artificial Intelligence)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الدكتوراه (ربى طلال ابراهيم احمد) في أطروحتها الموسومة (Classification of Personality Traits Based on Data Fusion Using Artificial Intelligence) بمشاركة د. منار يونس احمد من جامعة الموصل/كلية علوم الحاسوب والرياضيات و د. محمد عبدالمطلب محمد من جامعة نينوى/كلية هندسة الالكترونيات وبإشراف د. فوزية محمود رمو من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-639718599059',
    '',
    '2023-05-10',
    '2023-05-10',
    '2023-04-19',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    295,
    'لجنة مناقشة طالب الدكتوراه (محمود صبحي محمود سعيد) في أطروحته الموسومة (Intrusion Detection Model for Cyberspace Based on Blockchain)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الدكتوراه (محمود صبحي محمود سعيد) في أطروحته الموسومة (Intrusion Detection Model for Cyberspace Based on Blockchain) بمشاركة د. عيسى ابراهيم عيسى من جامعة كركوك/كلية علوم الحاسوب وتكنولوجيا المعلومات و د. الاء ياسين طه من جامعة الموصل/كلية التربية للعلوم الصرفة وباشراف د. نجلاء بديع ابراهيم من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-236180022906',
    '',
    '2023-05-09',
    '2023-05-09',
    '2023-04-19',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    296,
    'لجنة مناقشة طالب الماجستير (منذر يونس شيت ذنون) في رسالته الموسومة (تأثير مبدأ الانحراف على قواعد البيانات المستمرة لاساتذة قسم علوم الحاسوب)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (منذر يونس شيت ذنون) في رسالته الموسومة (تأثير مبدأ الانحراف على قواعد البيانات المستمرة لاساتذة قسم علوم الحاسوب) بإشراف د. عمار ظاهر ياسين من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-115450032937',
    '',
    '2023-05-08',
    '2023-05-08',
    '2023-04-19',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    297,
    'لجنة مناقشة طالب الدكتوراه (ايوب علي محمد سعيد علي) في أطروحته الموسومة (Intelligent Textual Plagiarism Detection Model)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الدكتوراه (ايوب علي محمد سعيد علي) في أطروحته الموسومة (Intelligent Textual Plagiarism Detection Model) بمشاركة د. ميوان بهجت عبدالرزاق وبإشراف د. الاء ياسين طه من جامعة الموصل/كلية التربية للعلوم الصرفة',
    'ACT-670151952270',
    '',
    '2023-05-14',
    '2023-05-14',
    '2023-04-25',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    298,
    'لجنة مناقشة طالب الماجستير (غزوان عبدالله محمد حسين) في رسالته الموسومة (Enhancing the Performance of the Software Defined Network)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (غزوان عبدالله محمد حسين) في رسالته الموسومة (Enhancing the Performance of the Software Defined Network) بمشاركة د. منار يونس احمد من جامعة الموصل/كلية علوم الحاسوب والرياضيات و د. صلاح عبدالغني جارو من جامعة الموصل/كلية الهندسة وبغشراف د. عمر عبدالمنعم ابراهيم من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-272698286070',
    '',
    '2023-05-18',
    '2023-05-18',
    '2023-04-25',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    299,
    'لجنة مناقشة طالب الماجستير (امجد انور محمد جميل محمود) في رسالته الموسومة (اجراء مضاد قائم على التشفير لانترنت الاشياء)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (امجد انور محمد جميل محمود) في رسالته الموسومة (اجراء مضاد قائم على التشفير لانترنت الاشياء) باشراف د. نجلاء بديع اراهيم من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-809486987008',
    '',
    '2023-05-16',
    '2023-05-16',
    '2023-04-25',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    300,
    'لجنة مناقشة طالب الماجستير (احمد ميسر فتحي محمود) في رسالته الموسومة (التعرف على الاشخاص من خلال قزحية العين باستخدام تقنية التعلم العميق)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (احمد ميسر فتحي محمود) في رسالته الموسومة (التعرف على الاشخاص من خلال قزحية العين باستخدام تقنية التعلم العميق) بإشراف د. بيداء ابراهيم خليل من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-496424558475',
    '',
    '2023-05-15',
    '2023-05-15',
    '2023-04-25',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    301,
    'تسمية السادة المشرفين على طلبة الماجستير/علوم الحاسوب اعتبارا من 21/6/2023',
    'نشاط داخلي',
    'امر اداري بتسمية السادة المشرفين على طلبة الماجستير/عوم الحاسوب المؤشرين إزاء اسم كل منهم والتي تبدأ بالتسلسل 1-خالد دباس محارب وتنتهي بالتسلسل 12-علي طالب عباس',
    'ACT-330547419477',
    '',
    '2023-06-21',
    '2023-06-21',
    '2023-07-04',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'الاشراف على طلبة الدراسات الأولية أو العليا'
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
    302,
    'تسمية السادة المشرفين على طلبة الدبلوم العالي/علوم الحاسوب اعتبارا من 21/6/2023',
    'نشاط داخلي',
    'امر اداري بتسمية السادة المشرفين على طلبة الدبلوم العالي/علوم الحاسوب اعتبارا من المؤشرين ازاء اسم كل منهم والتي تبدأ بالتسلسل 1- علاء عبدالله ادريس وتنتهي بالتسلسل 7-مروة باسم مصطفى',
    'ACT-201961224589',
    '',
    '2023-06-21',
    '2023-06-21',
    '2023-07-04',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'الاشراف على طلبة الدراسات الأولية أو العليا'
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
    303,
    'لجنة مناقشة طالبة الدكتوراه (حنان انس قاسم اسماعيل) في أطروحتها الموسومة (Prediction for Future of Physical Activity Impact of COVID-19 Using AI)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الدكتوراه (حنان انس قاسم اسماعيل) في أطروحتها الموسومة (Prediction for Future of Physical Activity Impact of COVID-19 Using AI) بمشاركة د. سنان عدنان ديوان من جامعة واسط/كلية علوم الحاسوب وتكنولوجيا المعلومات وبإشراف د. غيداء عبدالعزيز الطالب من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-231216650364',
    '',
    '2023-07-30',
    '2023-07-30',
    '2023-07-09',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    304,
    'لجنة مناقشة طالب الماجستير (عبدالامير علي سعد حسن) في رسالته الموسومة (طرائق التدرج المترافق المحسنة لإيجاد القيمة الصغرى لمسائل الامثلية غير المقيدة)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (عبدالامير علي سعد حسن) في رسالته الموسومة (طرائق التدرج المترافق المحسنة لإيجاد القيمة الصغرى لمسائل الامثلية غير المقيدة) وبمشاركة د. عباس يونس الياس من جامعة تلعفر/كلية التربية الاساسية (استاذ متمرس) وباشراف د. باسم عباس حسن من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-363349027437',
    '',
    '2023-08-01',
    '2023-08-01',
    '2023-07-04',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    305,
    'لجنة مناقشة طالبة الماجستير (سماء عبدالقادر مجيد عبدالله) في رسالتها الموسومة (معلمات جديدة لتسريع طرق التدرج المترافق ثلاثية الحدود في الامثلية غير المقيدة)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (سماء عبدالقادر مجيد عبدالله) في رسالتها الموسومة (معلمات جديدة لتسريع طرق التدرج المترافق ثلاثية الحدود في الامثلية غير المقيدة) بإشراف د. غادة مؤيد رشيد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-165400144173',
    '',
    '2023-07-26',
    '2023-07-26',
    '2023-07-04',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    306,
    'لجنة مناقشة طالبة الدكتوراه (حنين عادل عبدالرحمن حسين) في أطروحتها الموسومة (Designed Some a New Conjugate Gradient Algorithms to Restore Corrupted Problems)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الدكتوراه (حنين عادل عبدالرحمن حسين) في أطروحتها الموسومة (Designed Some a New Conjugate Gradient Algorithms to Restore Corrupted Problems) بمشاركة د. مهى صلاح يونس من جامعة الموصل/كلية التربية للعلوم الصرفة و د. ايفان صبحي لطيف من جامعة صلاح الدين/كلية التربية وبإشراف د. باسم عباس حسن من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-190254147456',
    '',
    '2023-07-20',
    '2023-07-20',
    '2023-07-04',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    307,
    'لجنة مناقشة طالبة الماجستير (زينب حسين محمد حشاش) في رسالتها الموسومة (Study Stability and Instability Criteria for Some Differential Dynamical Systems with Applications)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (زينب حسين محمد حشاش) في رسالتها الموسومة (Study Stability and Instability Criteria for Some Differential Dynamical Systems with Applications) بمشاركة د. اكرم حسان محمود من جامعة الموصل/كلية التربية للعلوم الصرفة ود. احمد محمد جمعة من جامعة الموصل/كلية علوم الحاسوب والرياضيات وبإشراف د. ثائر يونس ذنون من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-234678382859',
    '',
    '2023-06-25',
    '2023-06-25',
    '2023-06-07',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    308,
    'لجنة مناقشة طالب الماجستير (احمد هشام صالح محمد) في رسالته الموسومة (Visualizing Biological Networks Using Virtual Reality in Metaverse)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (احمد هشام صالح محمد) في رسالته الموسومة (Visualizing Biological Networks Using Virtual Reality in Metaverse) بإشراف د. باسم محمد محمود من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-391307685745',
    '',
    '2023-06-25',
    '2023-06-25',
    '2023-06-07',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    309,
    'لجنة مناقشة طالبة الماجستير (سيبل سعيد خليل حسن) في رسالتها الموسومة (On Differential Subordination of Holomorphic Univalent and Multivalent Functions)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (سيبل سعيد خليل حسن) في رسالتها الموسومة (On Differential Subordination of Holomorphic Univalent and Multivalent Functions) بمشاركة د. وقاص غالب عطشان من جامعة القادسية/كلية العلوم وبإشراف د. عبدالرحمن سلمان جمعة من جامعة الانبار/كلية التربية للعلوم الصرفة',
    'ACT-938654097497',
    '',
    '2023-06-22',
    '2023-06-22',
    '2023-05-21',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    310,
    'لجنة مناقشة طالبة الماجستير (امنة خالد خليل ابراهيم) في رسالتها الموسومة (حل مشاكل طرائق التشفير الكتلي باستخدام الدالة الفوضوية)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (امنة خالد خليل ابراهيم) في رسالتها الموسومة (حل مشاكل طرائق التشفير الكتلي باستخدام الدالة الفوضوية) بمشاركة د. محمد حازم الجماس من جامعة نينوى/هندسة الالكترونيات وبإشراف د. ياسين حكمت اسماعيل من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-147792373903',
    '',
    '2023-06-07',
    '2023-06-07',
    '2023-05-17',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    311,
    'لجنة مناقشة طالبة الماجستير (منال ابراهيم محمد نزيل) في رسالتها الموسومة (دراسة مقارنة لطرائق اشباه نيوتن الجديدة لايجاد القيمة الصغرى لمسائل الامثلية غير المقيدة)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (منال ابراهيم محمد نزيل) في رسالتها الموسومة (دراسة مقارنة لطرائق اشباه نيوتن الجديدة لايجاد القيمة الصغرى لمسائل الامثلية غير المقيدة) بمشاركة د. خليل خضر عبو من جامعة تلعفر/كلية التربية الاساسية و د. مهى صلاح يونس من جامعة الموصل/كلية التربية للعلوم الصرفة وبإشراف د. باسم عباس حسن من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-109834998629',
    '',
    '2023-06-06',
    '2023-06-06',
    '2023-05-17',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    312,
    'لجنة مناقشة طالبة الماجستير (رشا وائل علي احمد) في رسالتها الموسومة (استخراج الاحداث من مواقع الويب)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (رشا وائل علي احمد) في رسالتها الموسومة (استخراج الاحداث من مواقع الويب) بمشاركة د. عبدالستار محمد خضر من المعهد التقني الموصل/الجامعة التقنية الشمالية وبإشراف د. بان شريف مصطفى من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-706104196931',
    '',
    '2023-06-04',
    '2023-06-04',
    '2023-05-17',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    313,
    'لجنة مناقشة طالب الماجستير (محمد عيد خميس سالم) في رسالته الموسومة (Design a Tool to Gauge the Resistance of Block Cipher Algorithm to Linear and Differential Cryptanalysis)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (محمد عيد خميس سالم) في رسالته الموسومة (Design a Tool to Gauge the Resistance of Block Cipher Algorithm to Linear and Differential Cryptanalysis) بمشاركة أ.م. علياء موفق عبدالمجيد من جامعة الموصل/كلية علوم الحاسوب والرياضيات وبإشراف د. سفيان سالم محمود من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-444832268503',
    '',
    '2023-06-05',
    '2023-06-05',
    '2023-05-17',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    314,
    'لجنة مناقشة طالب الماجستير (زيد خلف عبد سعود) في رسالته الموسومة (تحسين وتحديد اولويات عوامل الخطر ياستخدام ذكاء السرب)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (زيد خلف عبد سعود) في رسالته الموسومة (تحسين وتحديد اولويات عوامل الخطر ياستخدام ذكاء السرب) بإشراف د. نجلاء اكرم يونس من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-469485266409',
    '',
    '2023-05-31',
    '2023-05-31',
    '2023-05-16',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    315,
    'لجنة مناقشة طالب الماجستير (علي عبدالحق اسماعيل خضير) في رسالته الموسومة (دراسة استقرارية الحل لبعض المعادلات التفاضلية التصادفية بحدود دوال مثلثية مع التطبيق)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (علي عبدالحق اسماعيل خضير) في رسالته الموسومة (دراسة استقرارية الحل لبعض المعادلات التفاضلية التصادفية بحدود دوال مثلثية مع التطبيق) بإشراف د. عبدالغفور جاسم سالم من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-929514568658',
    '',
    '2023-05-24',
    '2023-05-24',
    '2023-05-03',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    316,
    'لجنة مناقشة طالبة الماجستير (فاطمة محمد احمد حسين) في رسالتها الموسومة (اقتراح خوارزمية حصينة لاختزال متغيرات الانحدار مع المحاكاة والتطبيق على بيانات مرضى الثلاسيميا في نينوى)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (فاطمة محمد احمد حسين) في رسالتها الموسومة (اقتراح خوارزمية حصينة لاختزال متغيرات الانحدار مع المحاكاة والتطبيق على بيانات مرضى الثلاسيميا في نينوى) بمشاركة د. فارس غانم احمد من جامعة الموصل/كلية طب الاسنان وبإشراف د. بشار عبدالعزيز الطالب من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-543194006490',
    '',
    '2023-05-21',
    '2023-05-21',
    '2023-04-27',
    '[\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    317,
    'لجنة مناقشة طالبة الماجستير (فاطمة محمد ياسين محمد) في رسالتها الموسومة (Combined Laplace Transform and Adomian Decomposition Method for Solving Singular IVPs of Lane-Emden Type Differential Equations)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (فاطمة محمد ياسين محمد) في رسالتها الموسومة (Combined Laplace Transform and Adomian Decomposition Method for Solving Singular IVPs of Lane-Emden Type Differential Equations) بإشراف د. وليد محمد فتحي من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-480869841456',
    '',
    '2023-07-04',
    '2023-07-04',
    '2023-06-18',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    318,
    'لجنة مناقشة طالبة الماجستير (فاطمة عبدالرزاق ايوب مصطفى) في رسالتها الموسومة (تقدير معلمات عملية قانون القوة التصادفية باستخدام طرائق مقترحة مع التطبيق)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (فاطمة عبدالرزاق ايوب مصطفى) في رسالتها الموسومة (تقدير معلمات عملية قانون القوة التصادفية باستخدام طرائق مقترحة مع التطبيق) بمشاركة د. باسل يونس ذنون من جامعة الموصل/كلية علوم الحاسوب والرياضيات (استاذ متمرس) وبإشراف د. مثنى صبحي سليمان من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-425809573814',
    '',
    '2023-05-17',
    '2023-05-17',
    '2023-04-25',
    '[\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    319,
    'لجنة مناقشة طالب الماجستير (عمر ابراهيم شيت داود) في رسالته الموسومة (انشاء اداة قائمة على العلم الالي لتقييم مخاطر الامن السيبراني)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (عمر ابراهيم شيت داود) في رسالته الموسومة (انشاء اداة قائمة على العلم الالي لتقييم مخاطر الامن السيبراني) بإشراف د. لهيب محمد ابراهيم',
    'ACT-446595125542',
    '',
    '2023-05-14',
    '2023-05-14',
    '2023-04-25',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    320,
    'لجنة مناقشة طالبة الماجستير (ريم طلال طه عبدالقادر) في رسالتها الموسومة (التنبؤ بنماذج الصندوق الاسود - دراسة مقارنة)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (ريم طلال طه عبدالقادر) في رسالتها الموسومة (التنبؤ بنماذج الصندوق الاسود - دراسة مقارنة) بمشاركة د. طه حسين علي من جامعة صلاح الدين/كلية الادارة والاقتصاد وبإشراف د. هيام عبدالمجيد حياوي من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-203137832850',
    '',
    '2023-05-08',
    '2023-05-08',
    '2023-04-19',
    '[\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    321,
    'لجنة مناقشة طالبة الدكتوراه (ايلاف سليمان خليل يوسف) في أطروحتها الموسومة (An Adaptive of Different Mathematical Models for Constrained Optimization)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الدكتوراه (ايلاف سليمان خليل يوسف) في أطروحتها الموسومة (An Adaptive of Different Mathematical Models for Constrained Optimization) بمشاركة د. عباس يونس الياس من جامعة تلعفر/كلية التربية الاساسية (استاذ متمرس) وبإشراف د. ايمان طارق حامد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-679148932268',
    '',
    '2023-04-27',
    '2023-04-27',
    '2023-04-05',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    322,
    'لجنة مناقشة طالبة الماجستير (تسنيم محمد حسن مصطفى) في رسالتها الموسومة (الكشف عن Covid-19 باستخدام الذكاء الاصطناعي)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (تسنيم محمد حسن مصطفى) في رسالتها الموسومة (الكشف عن Covid-19 باستخدام الذكاء الاصطناعي) بمشاركة د. اسراء محمد خضر من جامعة الموصل/كلية التربية للعلوم الصرفة وبإشراف د. جمال صلاح الدين مجيد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-718800644567',
    '',
    '2023-05-02',
    '2023-05-02',
    '2023-04-04',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    323,
    'لجنة مناقشة طالبة الماجستير (رغدة عنان عبدالغني عبدالرحمن) في رسالتها الموسومة (بناء اداة اختبار تراجعي لحالات الاختبار المثلى باستخدام خوارزمية بحث الغراب المحسنة)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (رغدة عنان عبدالغني عبدالرحمن) في رسالتها الموسومة (بناء اداة اختبار تراجعي لحالات الاختبار المثلى باستخدام خوارزمية بحث الغراب المحسنة) بمشاركة د. محمد عبدالغني طه من جامعة الموصل/كلية علوم الحاسوب والرياضيات وبإشراف د. شهباء ابراهيم خليل من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-755815013485',
    '',
    '2023-04-27',
    '2023-04-27',
    '2023-04-04',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    324,
    'لجنة مناقشة طالب الماجستير (محمد ماهر حسن داود) في رسالته الموسومة (تصميم اداة لتخمين كلفة مشاريع البرمجيات بالاعتماد على تقنيات الذكاء الاصطناعي)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (محمد ماهر حسن داود) في رسالته الموسومة (تصميم اداة لتخمين كلفة مشاريع البرمجيات بالاعتماد على تقنيات الذكاء الاصطناعي) بمشاركة د. محمد عبدالمطلب محمد من جامعة نينوى/كلية هندسة الالكترونيات وبإشراف د. جمال صلاح الدين مجيد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-852767140356',
    '',
    '2023-04-27',
    '2023-04-27',
    '2023-04-02',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    325,
    'لجنة مناقشة طالبة الماجستير (اسماء صدام جعفر محمود) في رسالتها الموسومة (تقدير اجهاد الخطوة الجزئي لاختبارات الحياة المعجلة للتوزيع الاسي)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (اسماء صدام جعفر محمود) في رسالتها الموسومة (تقدير اجهاد الخطوة الجزئي لاختبارات الحياة المعجلة للتوزيع الاسي) بمشاركة د.يونس حازم اسماعيل من جامعة الموصل/كلية التربية للعلوم الصرفة وبإشراف د. خالدة احمد محمد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-280170752619',
    '',
    '2023-04-18',
    '2023-04-18',
    '2023-03-29',
    '[\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    326,
    'لجنة مناقشة طالب الماجستير (محمد امين عقبة محمد نوري) في رسالته الموسومة (تقدير بيز لموثوقية قوة الاجهاد لـP(T<X<Z) لبعض توزيعات الحياة)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (محمد امين عقبة محمد نوري) في رسالته الموسومة (تقدير بيز لموثوقية قوة الاجهاد لـP(T<X<Z) لبعض توزيعات الحياة) بمشاركة د. ذنون يونس ذنون من الجامعة التقنية الشمالية/الكلية التقنية الادارية وبإشراف د. ريا سالم محمد علي من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-230621092393',
    '',
    '2023-04-16',
    '2023-04-16',
    '2023-03-29',
    '[\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    327,
    'لجنة مناقشة طالب الدكتوراه (محمد باسل شكر) في أطروحته الموسومة (نظام مراقبة وتحكم كفوء بانترنت الاشياء الصناعية لهياكل الشبكة المعقدة باستخدام الحوسبة السحابية باعتماد الية المسار المزدوج والبروتوكول المزدوج)',
    'نشاط داخلي',
    'مشاركة ثلاثة تدريسيين من كلية علوةم الحاسوب والرياضيات بلجنة مناقشة طالب الدكتوراه (محمد باسل شكر) في أطروحته الموسومة (نظام مراقبة وتحكم كفوء بانترنت الاشياء الصناعية لهياكل الشبكة المعقدة باستخدام الحوسبة السحابية باعتماد الية المسار المزدوج والبروتوكول المزدوج) والتي تمت في جامعة الموصل/كلية الهندسة-قسم هندسة الحاسوب وبمشاركة د. صديق يوسف امين من جامعة دهوك التقنية و د. صلاح عبدالغني جارو من جامعة الموصل/كلية الهندسة و بعضوية وإشراف د. جاسم محمد عبدالجبار من جامعة الموصل/كلية الهندسة (متقاعد)',
    'ACT-330798685827',
    '',
    '2023-04-17',
    '2023-04-17',
    '2023-03-28',
    '[\"ÙØ´ØªØ±Ù\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    328,
    'لجنة مناقشة طالبة الماجستير (هند عادل احمد سعيد) في رسالتها الموسومة (استخدام عائلة Topp-Leone في تعميم توزيعي رايلي ورايلي المرفوع مع التطبيق)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (هند عادل احمد سعيد) في رسالتها الموسومة (استخدام عائلة Topp-Leone في تعميم توزيعي رايلي ورايلي المرفوع مع التطبيق) بإشراف د. هيفاء عبدالجواد سعيد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-801196684239',
    '',
    '2023-04-17',
    '2023-04-17',
    '2023-03-28',
    '[\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    329,
    'لجنة مناقشة طالب الماجستير (انمار محمد شاكر حسن حسين) في رسالته الموسومة (الطبيعة الفوضوية التبددية والمحافظة لبعض الانظمة الديناميكية اللاخطية مع التزامن)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (انمار محمد شاكر حسن حسين) في رسالته الموسومة (الطبيعة الفوضوية التبددية والمحافظة لبعض الانظمة الديناميكية اللاخطية مع التزامن) بمشاركة د. محمد شامي حسو من جامعة كويه/كية العلوم والصحة وبإشراف د. سعد فوزي جاسم من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-140275083508',
    '',
    '2023-04-06',
    '2023-04-06',
    '2023-03-14',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    330,
    'لجنة مناقشة طالبة الماجستير (الاء باسل محمد شريف محمد علي) في رسالتها الموسومة (Requirements Analysis, Design and Implementation of a Self-Managed e-Classroom)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (الاء باسل محمد شريف محمد علي) في رسالتها الموسومة (Requirements Analysis, Design and Implementation of a Self-Managed e-Classroom) بمشاركة د. وسام داؤد عبدالله من جامعة تكريت/كلية علوم الحاسوب والرياضيات وبإشراف د. محمد عبدالغني طه من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-196223055168',
    '',
    '2023-03-20',
    '2023-03-20',
    '2023-03-05',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    331,
    'لجنة مناقشة طالبة الماجستير (اسماء محمد سليمان حسين) في رسالتها الموسومة (Study Some Oscillation Criteria for Solutions of Differential Equations with Parameter)',
    'نشاط داخلي',
    'امر ادراي بتشكيل لجنة مناقشة طالبة الماجستير (اسماء محمد سليمان حسين) في رسالتها الموسومة (Study Some Oscillation Criteria for Solutions of Differential Equations with Parameter) بمشاركة د. اكرم حسان محمود من جامعة الموصل/كلية التربية للعلوم الصرفة وبإشراف د. ثائر يونس ذنون من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-419880221045',
    '',
    '2023-03-28',
    '2023-03-28',
    '2023-03-01',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    332,
    'لجنة مناقشة طالبة الماجستير (نور سليمان خضير مهاوش) في رسالتها الموسومة (Application of Machine Learning in Software Testing)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (نور سليمان خضير مهاوش) في رسالتها الموسومة (Application of Machine Learning in Software Testing) بإشراف د. صفوان عمر حسون من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-018827064034',
    '',
    '2023-03-20',
    '2023-03-20',
    '2023-03-01',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    333,
    'لجنة مناقشة طالب الدكتوراه (مروان عزيز جردو احمد) في أطروحته الموسومة (بعض خواص جبور باناخ ذات البعد الثلاثي تحت تأثير الضرب المضطرب باستخدام تشاكلات مستمرة)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الدكتوراه (مروان عزيز جردو احمد) في أطروحته الموسومة (بعض خواص جبور باناخ ذات البعد الثلاثي تحت تأثير الضرب المضطرب باستخدام تشاكلات مستمرة) بمشاركة د. عمار صديق محمود من جامعة الموصل/كلية التربية للعلوم الصرفة و د. مناف عدنان صالح من جامعة النهرين/كلية العلوم وبإشراف د. عامر عبدالاله محمد من جامعة الموصل/كلية التربية للعلوم الصرفة',
    'ACT-419375311758',
    '',
    '2023-03-07',
    '2023-03-07',
    '2023-02-13',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    334,
    'لجنة مناقشة طالب الماجستير (صائب ميسر فتحي محمود) في رسالته الموسومة (اكتشاف وتقييم حالة الاجهاد اثناء السياقة)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (صائب ميسر فتحي محمود) في رسالته الموسومة (اكتشاف وتقييم حالة الاجهاد اثناء السياقة) بإشراف د. غسان جاسم محمد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-427373213219',
    '',
    '2023-03-06',
    '2023-03-06',
    '2023-02-13',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    335,
    'لجنة مناقشة طالبة الماجستير (رحمة نزار ابراهيم محمد علي) في رسالتها الموسومة (وثوقية الفيديو والتحقق من تكامليته)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (رحمة نزار ابراهيم محمد علي) في رسالتها الموسومة (وثوقية الفيديو والتحقق من تكامليته) بمشاركة د. ميثم مصطفى حمود من جامعة تكريت/كلية علوم الحاسوب والرياضيات وبإشراف د. شهد عبدالرحمن حسو من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-419220517958',
    '',
    '2023-03-08',
    '2023-03-08',
    '2023-02-12',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    336,
    'لجنة مناقشة طالبة الماجستير (شيماء فهد راشد عبدالباري) في رسالتها الموسومة (Cloud-Based Big Data Framework for Cultural Heritage Preservation in Nineveh)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (شيماء فهد راشد عبدالباري) في رسالتها الموسومة (Cloud-Based Big Data Framework for Cultural Heritage Preservation in Nineveh) بمشاركة د. فارس صالح فتحي من جامعة نينوى/كلية هندسة الالكترونيات وبإشراف د. رواء بطرس بولص من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-927713583472',
    '',
    '2023-02-26',
    '2023-02-26',
    '2023-02-01',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    337,
    'لجنة مناقشة طالب الدكتوراه (محمد عمر شعبان محمد) في أطروحته الموسومة (Investigation of Numerical and Analytical Methods for Solving Fractional Partial Differential Equations)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الدكتوراه (محمد عمر شعبان محمد) في أطروحته الموسومة (Investigation of Numerical and Analytical Methods for Solving Fractional Partial Differential Equations) بمشاركة د. روستم كريم سعيد من جامعة صلاح الدين/كلية العلوم و د. قيس اسماعيل ابراهيم من جامعة الموصل/كلية التربية للعلوم الصرفة وبإشراف د. عبدالغفور محمد امين خضر من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-993635626589',
    '',
    '2023-02-23',
    '2023-02-23',
    '2023-01-31',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    338,
    'لجنة مناقشة طالب الماجستير (عبدالرحمن مصطفى علي مصطفى) في رسالته الموسومة (تصنيف متطلبات البرمجيات باستخدام التعلم العميق)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (عبدالرحمن مصطفى علي مصطفى) في رسالته الموسومة (تصنيف متطلبات البرمجيات باستخدام التعلم العميق) بمشاركة د. محمد عبدالمطلب محمد من جامعة نينوى/كلية هندسة الالكترونيات',
    'ACT-485752754495',
    '',
    '2023-02-22',
    '2023-02-22',
    '2023-01-30',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    339,
    'لجنة مناقشة طالبة الماجستير (منار مزاحم علاوي محمد) في رسالتها الموسومة (Select Feature Modeling Using Machine Learning with Software Product Line of IoT Applications)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (منار مزاحم علاوي محمد) في رسالتها الموسومة (Select Feature Modeling Using Machine Learning with Software Product Line of IoT Applications) بإشراف د. محمد زكي حسن من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-330743772859',
    '',
    '2023-02-13',
    '2023-02-13',
    '2023-01-22',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    340,
    'لجنة مناقشة طالبة الدبلوم العالي (بسمة ارشد صالح ابراهيم) في رسالتها الموسومة (مراقبة جودة مياه اشرب ضمن بقعة جغرافية حضرية باعتماد انترنت الاشياء)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الدبلوم العالي (بسمة ارشد صالح ابراهيم) في رسالتها الموسومة (مراقبة جودة مياه اشرب ضمن بقعة جغرافية حضرية باعتماد انترنت الاشياء) بإشراف د. غسان جاسم محمد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-675405185508',
    '',
    '2023-01-18',
    '2023-01-18',
    '2023-01-11',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    341,
    'لجنة مناقشة طالبة الماجستير (اسماء اسماعيل محمد صالح) في رسالتها الموسومة (تطبيق التعلم بالعمق على تحليل البيانات)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (اسماء اسماعيل محمد صالح) في رسالتها الموسومة (تطبيق التعلم بالعمق على تحليل البيانات) بمشاركة د. ميادة رامز محمود من جامعة زاخو/كلية العلوم وبإشراف د. صفوان عمر حسون من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-598154842177',
    '',
    '2023-02-02',
    '2023-02-02',
    '2023-01-10',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    342,
    'لجنة مناقشة طالب الماجستير (ابو ذر عبدالله خلف عطية) في رسالته الموسومة (السلوك الفوضوي والسيطرة عليه في النماذج المستمرة مع التطبيقات)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (ابو ذر عبدالله خلف عطية) في رسالته الموسومة (السلوك الفوضوي والسيطرة عليه في النماذج المستمرة مع التطبيقات) بمشاركة د. مزعل حمد ناوي من جامعة تكريت/كلية علوم الحاسوب والرياضيات وبإشراف د. ميسون مال الله عزيز من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-168281853073',
    '',
    '2023-01-30',
    '2023-01-30',
    '2023-01-09',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    343,
    'لجنة مناقشة طالبة الماجستير (سبأ عبدالجبار محمد فتحي) في رسالتها الموسومة (تحليل الاستقرارية وتشخيص الفوضى في الانظمة الحركية المتقطعة مع التطبيقات)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (سبأ عبدالجبار محمد فتحي) في رسالتها الموسومة (تحليل الاستقرارية وتشخيص الفوضى في الانظمة الحركية المتقطعة مع التطبيقات) بمشاركة د. ازهر عباس محمد من جامعة تكريت/كلية علوم الحاسوب والرياضيات وبإشراف د. ميسون مال الله عزيز من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-563163228827',
    '',
    '2023-01-26',
    '2023-01-26',
    '2023-01-08',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    344,
    'لجنة مناقشة طالب الدبلوم العالي (احمد سامي محمود فتحي) في رسالته الموسومة (ٍMachine Learning Based-System for Predicting Dairy Cows Diseases)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الدبلوم العالي (احمد سامي محمود فتحي) في رسالته الموسومة (ٍMachine Learning Based-System for Predicting Dairy Cows Diseases) بإشراف د. طرفة ياسين حامد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-098572213513',
    '',
    '2023-01-17',
    '2023-01-17',
    '2022-12-28',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    345,
    'لجنة مناقشة طالب الماجستير (محمد عبدالستار عبدالغني عبدالله) في رسالته الموسومة (تطوير برمجيات التعرف على قناع الوجه في الوقت الحقيقي اثناء جائحة COVID)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (محمد عبدالستار عبدالغني عبدالله) في رسالته الموسومة (تطوير برمجيات التعرف على قناع الوجه في الوقت الحقيقي اثناء جائحة COVID) بمشاركة د. ميوان بهجت عبدالرزاق من جامعة زاخو/كلية العلوم وبإشراف د. لهيب محمد ابراهيم من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-774103979082',
    '',
    '2023-01-12',
    '2023-01-12',
    '2022-12-26',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    346,
    'لجنة مناقشة طالب الماجستير (عمار رعد وعدالله ذنون) في رسالته الموسومة (بعض الادلة التبولوجية لانواع من السلاسل لبعض البيانات الخاصة)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (عمار رعد وعدالله ذنون) في رسالته الموسومة (بعض الادلة التبولوجية لانواع من السلاسل لبعض البيانات الخاصة) بمشاركة د. هيرش عمر عبدالله من جامعة صلاح الدين/كلية العلوم وبإشراف د. احمد محمد علي من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-769429562299',
    '',
    '2022-12-28',
    '2022-12-28',
    '2022-12-11',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    347,
    'لجنة مناقشة طالب الماجستير (شامل عزالدين نجم عبدالله) في رسالته الموسومة (خوارزمية السمكة المنتفخة المعدلة لتأمين البيانات في التخزين السحابي)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (شامل عزالدين نجم عبدالله) في رسالته الموسومة (خوارزمية السمكة المنتفخة المعدلة لتأمين البيانات في التخزين السحابي) بإشراف د. عدي هاشم سعيد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-272914849098',
    '',
    '2022-12-27',
    '2022-12-27',
    '2022-12-11',
    '[\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    348,
    'لجنة مناقشة طالب الدكتوراه (شعاع محمود عزيز ابراهيم) في أطروحته الموسومة (High Dimensional Dynamical System and its Synchronization Phenomena)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الدكتوراه (شعاع محمود عزيز ابراهيم) في أطروحته الموسومة (High Dimensional Dynamical System and its Synchronization Phenomena) بمشاركة د. رحيم احمد منصور من جامعة تكريت/كلية التربية للعلوم الصرفة و د. معن عبدالكاظم رشيد من الجامعة المستنصرية/كلية التربية الاساسية و د. اكرم حسان محمود من جامعة الموصل/كلية التربية للعلوم الصرفة و د. احمد محمد جمعة من جامعة الموصل/كلية علوم الحاسوب والرياضيات وبإشراف د. سعد فوزي جاسم من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-197221470409',
    '',
    '2023-01-04',
    '2023-01-04',
    '2022-12-11',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    349,
    'لجنة مناقشة طالب الماجستير (محمود محمد يونس سليمان) في رسالته الموسومة (تخمين الكلفة لتحسين امثلية اختيار افضل مسار في الشبكات المخصصة باستخدام تقنية الذئاب الرمادية المطورة)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (محمود محمد يونس سليمان) في رسالته الموسومة (تخمين الكلفة لتحسين امثلية اختيار افضل مسار في الشبكات المخصصة باستخدام تقنية الذئاب الرمادية المطورة) بمشاركة د. قتيبة ابراهيم علي من جامعة الموصل/كلية الهندسة و د. احمد بهيج ياسين من جامعة دهوك/كلية العلوم وبإشراف د. اخلاص عبدالجبار سلطان من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-894439268371',
    '',
    '2022-12-21',
    '2022-12-21',
    '2022-11-29',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    350,
    'لجنة مناقشة طالب الماجستير (علي ابراهيم احمد صالح) في رسالته الموسومة (التشفير وفك التشفير باستخدام LDPC (Low Density Parity Check) باستخدام انترنت الجيل الخامس)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (علي ابراهيم احمد صالح) في رسالته الموسومة (التشفير وفك التشفير باستخدام LDPC (Low Density Parity Check) باستخدام انترنت الجيل الخامس) بمشاركة د. عبدالستار محمد خضر من الجامعة التقنية الشمالية/المعهد التقني الموصل وبإشراف د. رياض زغلول محمود من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-096052693404',
    '',
    '2022-12-04',
    '2022-12-04',
    '2022-11-17',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    351,
    'لجنة مناقشة طالب الماجستير (علاء عبدالقادر ياسين محمد) في رسالته الموسومة (دراسة حول طريقة المويجات المعممة لحل المعادلات التفاضلية الجزئيئة غير الخطية )',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (علاء عبدالقادر ياسين محمد) في رسالته الموسومة (دراسة حول طريقة المويجات المعممة لحل المعادلات التفاضلية الجزئيئة غير الخطية ) بإشراف د. اخلاص سعدالله احمد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-619991492411',
    '',
    '2022-12-05',
    '2022-12-05',
    '2022-11-16',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    352,
    'لجنة مناقشة طالبة الماجستير (عبير عادل حميد الجبر) في رسالتها الموسومة (التقدير واختيار المتغيرات في نماذج البيانات الطولية المتزنة وغير المتزنة)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (عبير عادل حميد الجبر) في رسالتها الموسومة (التقدير واختيار المتغيرات في نماذج البيانات الطولية المتزنة وغير المتزنة) بمشاركة د. صفاء يونس طليع من جامعة الموصل/كلية علوم الحاسوب والرياضيات (استاذ متمرس) و د. صادق عواد كاظم من وزارة التعليم العالي والبحث العلمي/دائرة البعثات والعلاقات الثقافية وبإشراف د. زكريا يحيى نوري من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-198714508870',
    '',
    '2022-12-07',
    '2022-12-07',
    '2022-11-16',
    '[\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    353,
    'لجنة مناقشة طالب الماجستير (ماهر فخرالدين اسماعيل جاسم) في رسالته الموسومة (اكتشاف وتحليل البرمجيات الخبيثة بالاعتماد على مفهوم الهندسة العكسية)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (ماهر فخرالدين اسماعيل جاسم) في رسالته الموسومة (اكتشاف وتحليل البرمجيات الخبيثة بالاعتماد على مفهوم الهندسة العكسية) بمشاركة د. علاء كاظم فرحان من الجامعة التكنولوجية/قسم علوم الحاسوب وبإشراف د. كرم حاتم ذنون من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-528006647899',
    '',
    '2022-12-11',
    '2022-12-11',
    '2022-11-16',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    354,
    'لجنة مناقشة طالب الدكتوراه (زياد يحيى علي عبدالله) في أطروحته الموسومة (بعض تطبيقات الرياضيات في مجالات الرياضة)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الدكتوراه (زياد يحيى علي عبدالله) في أطروحته الموسومة (بعض تطبيقات الرياضيات في مجالات الرياضة) بمشاركة د. ياسين طه محمد علي من كلية النور الجامعة و د. ازهر عباس محمد من جامعة تكريت/كلية علوم الحاسوب والرياضيات وبإشراف د. باسل يونس ذنون من جامعة الموصل/كلية علوم الحاسوب والرياضيات (استاذ متمرس)',
    'ACT-034120359879',
    '',
    '2022-12-06',
    '2022-12-06',
    '2022-11-16',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    355,
    'لجنة مناقشة طالبة الماجستير (نبأ محمد رشيد حسن حيدو) في رسالتها الموسومة (بعض الطرائق المهجنة للمتجهات المترافقة لحل مسائل الامثلية غير المقيدة)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (نبأ محمد رشيد حسن حيدو) في رسالتها الموسومة (بعض الطرائق المهجنة للمتجهات المترافقة لحل مسائل الامثلية غير المقيدة) بمشاركة د. هوراز ناظم جبار من جامعة كركوك/كلية العلوم وبإشراف د. خليل خضر عبو من جامعة تلعفر/كلية التربية الاساسية',
    'ACT-653535331133',
    '',
    '2022-11-28',
    '2022-11-28',
    '2022-11-08',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    356,
    'لجنة مناقشة طالبة الدكتوراه (ميادة خليل غفار حسن) في أطروحتها الموسومة (Stabilizability and Solvability of Certain Types of Differential Equations with Application in Graph Theory)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الدكتوراه (ميادة خليل غفار حسن) في أطروحتها الموسومة (Stabilizability and Solvability of Certain Types of Differential Equations with Application in Graph Theory) بمشاركة د. رعد نوري بطرس من جامعة دهوك/كلية التربية الاساسية و د. برهان فخر الدين جمعة من جامعة كركوك/كلية علوم الحاسوب وتكنولوجيا المعلومات وبإشراف كل من د. فاضل صبحي فاضل من جامعة النهرين/كلية العلوم و د. نبيل عز الدين عارف من جامعة تكريت/كلية علوم الحاسوب والرياضيات',
    'ACT-525550389285',
    '',
    '2022-11-24',
    '2022-11-24',
    '2022-10-19',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    357,
    'لجنة مناقشة طالبة الماجستير (نوريهان نجدة فاضل عباس) في رسالتها الموسومة (انواع معينة من الحلقات النقية الضعيفة من النمط -N)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (نوريهان نجدة فاضل عباس) في رسالتها الموسومة (انواع معينة من الحلقات النقية الضعيفة من النمط -N) بمشاركة د. سنان عمر ابراهيم من جامعة تكريت/كلية التربية للبنات وبإشراف د. زبيدة محمد ابراهيم من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-551030877814',
    '',
    '2022-11-15',
    '2022-11-15',
    '2022-10-19',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    358,
    'لجنة مناقشة طالب الدكتوراه (احمد سالار جلال امين) في أطروحته الموسومة (The Influence of Using Different Mathematical Techniques on Fluid Flow Solutions with Several Aspects of Heart Transfer)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الدكتوراه (احمد سالار جلال امين) في أطروحته الموسومة (The Influence of Using Different Mathematical Techniques on Fluid Flow Solutions with Several Aspects of Heart Transfer) بمشاركة د. احمد مولود عبدالهادي من جامعة بغداد/كلية العلوم و د. علاء عبدالرحيم احمد من جامعة الموصل/كلية التربية للعلوم الصرفة و د. غسان عزالدين عارف من جامعة تكريت/كلية التربية للعلوم الصرفة وبإشراف د. احمد محمد جمعة من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-982212633676',
    '',
    '2022-11-09',
    '2022-11-09',
    '2022-10-19',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    359,
    'لجنة مناقشة طالب الماجستير (احمد عبدالرحمن ادريس صالح) في رسالته الموسومة (تطوير برمجيات التعرف على النصوص المكتوبة بخط اليد والقابلة لإعادة الاستخدام بالاعتماد على TensorFlow)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (ماهر فخرالدين اسماعيل جاسم) في رسالته الموسومة (تطوير برمجيات التعرف على النصوص المكتوبة بخط اليد والقابلة لإعادة الاستخدام بالاعتماد على TensorFlow) بمشاركة د. مشاري عايد عسكر من جامعة تكريت/كلية علوم الحاسوب والرياضيات وبإشراف د. دجان بشير طه من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-965276038413',
    '',
    '2022-11-10',
    '2022-11-10',
    '2022-10-19',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    360,
    'لجنة مناقشة طالب الماجستير (مصطفى زكي محمد يعقوب) في رسالته الموسومة (التنبؤ واختبار توليد البيانات لكشف اخطاء البرامج باستخدام الذكاء الاصطناعي)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (مصطفى زكي محمد يعقوب) في رسالته الموسومة (التنبؤ واختبار توليد البيانات لكشف اخطاء البرامج باستخدام الذكاء الاصطناعي) بمشاركة د. عبدالستار محمد خضر من الجامعة التقنية الشمالية/المعهد التقني الموصل و د. محمد عبدالغني طه من جامعة الموصل/كلية علوم الحاسوب والرياضيات وبإشراف د. ابراهيم احمد صالح من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-412395440207',
    '',
    '2022-11-13',
    '2022-11-13',
    '2022-10-19',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    361,
    'لجنة مناقشة طالبة الماجستير (سمية محمد عبدالمحيي سلمان) في رسالتها الموسومة (Extended Idempotent Divisor Graphs of a Commutative Rings)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (سمية محمد عبدالمحيي سلمان) في رسالتها الموسومة (Extended Idempotent Divisor Graphs of a Commutative Rings) بمشاركة د. نزار حمدون شكر من جامعة الموصل/كلية علوم الحاسوب والرياضيات (استاذ متمرس) و د. بيمان عباس رشيد من جامعة صلاح الدين/كلية التربية الاساسية وبإشراف د. حسام قاسم محمد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-879258036775',
    '',
    '2022-11-17',
    '2022-11-17',
    '2022-10-19',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    362,
    'لجنة مناقشة طالبة الدكتوراه (سارة غانم محمود احمد) في أطروحتها الموسومة (تحسين التحليل العنقودي الجزائي في تنقيب البيانات الضخمة)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الدكتوراه (سارة غانم محمود احمد) في أطروحتها الموسومة (تحسين التحليل العنقودي الجزائي في تنقيب البيانات الضخمة) بمشاركة د. عباس يونس الياس من جامعة تلعفر/كلية التربية الاساسية و د. صلاح غازي شريف من جامعة زاخو/كلية العلوم و د. منذر عبدالله خليل من جامعة تكريت/كلية علوم الحاسوب والرياضيات وبإشراف د. زكريا يحيى نوري من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-703528993513',
    '',
    '2022-11-07',
    '2022-11-07',
    '2022-10-11',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    363,
    'لجنة مناقشة طالب الماجستير (سيف رمزي احمد ابراهيم) في رسالته الموسومة (طرق حصينة مقترحة لنمذجة المعادلات المهيكلة - دراسة مقارنة)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (سيف رمزي احمد ابراهيم) في رسالته الموسومة (طرق حصينة مقترحة لنمذجة المعادلات المهيكلة - دراسة مقارنة) بمشاركة د. طه حسين علي من جامعة صلاح الدين/كلية الادارة والاقتصاد و د. عمر سالم ابراهيم من جامعة الموصل/كلية علوم الحاسوب والرياضيات وبإشراف د. بشار عبدالعزيز مجيد من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-691644513704',
    '',
    '2022-11-06',
    '2022-11-06',
    '2022-10-09',
    '[\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    364,
    'لجنة مناقشة طالب الماجستير (احمد خضر خلف خضر) في رسالته الموسومة (New Dynamic Systems Based on Chaotic System with an Exponential Term)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالب الماجستير (احمد خضر خلف خضر) في رسالته الموسومة (New Dynamic Systems Based on Chaotic System with an Exponential Term) بمشاركة د. محمد شامي حسو من جامعة كويا/كلية العلوم والصحة وبإشراف د. سعد فوزي جاسم من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-219898835721',
    '',
    '2022-11-01',
    '2022-11-01',
    '2022-10-09',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    365,
    'لجنة مناقشة طالبة الماجستير (سلوى صلاح الدين قاسم خالد) في رسالتها الموسومة (استخدام انحدار كوكس الحصين الموزون مع البوتستراب في تحليل بيانات المصابات بسرطان الثدي في محافظة نينوى)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (سلوى صلاح الدين قاسم خالد) في رسالتها الموسومة (استخدام انحدار كوكس الحصين الموزون مع البوتستراب في تحليل بيانات المصابات بسرطان الثدي في محافظة نينوى) بمشاركة د. دلشاد شكر اسماعيل بوتاني من جامعة صلاح الدين/كلية الادارة والاقتصاد وبإشراف د. بشار عبدالعزيز مجيد من جامعة الموصل/كلية علوم الحاسوب والرياضيات ',
    'ACT-815037169205',
    '',
    '2022-10-30',
    '2022-10-30',
    '2022-10-09',
    '[\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    366,
    'لجنة مناقشة طالب الماجستير (نواف ناصر رشو قاسم) في رسالته الموسومة (تهجين خوارزميات امثلية الاسراب مع نماذج ماركوف المخفية لتمييز الانماط)',
    'نشاط داخلي',
    'امر ادراي بتشكيل لجنة مناقشة طالب الماجستير (نواف ناصر رشو قاسم) في رسالته الموسومة (تهجين خوارزميات امثلية الاسراب مع نماذج ماركوف المخفية لتمييز الانماط) بمشاركة د. نزار خلف حسين من جامعة تكريت/كلية علوم الحاسوب والرياضيات وبإشراف د. بان احمد حسن من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-387874019281',
    '',
    '2022-10-31',
    '2022-10-31',
    '2022-10-06',
    '[\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
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
    367,
    'لجنة مناقشة طالبة الماجستير (فرح باسل احمد ذنون) في رسالتها الموسومة (تصميم اداة لتقدير جهد البرمجيات باستخدام التعليم الالي)',
    'نشاط داخلي',
    'امر اداري بتشكيل لجنة مناقشة طالبة الماجستير (فرح باسل احمد ذنون) في رسالتها الموسومة (تصميم اداة لتقدير جهد البرمجيات باستخدام التعليم الالي) بمشاركة د. محمد عبدالمطلب محمد من جامعة نينوى/كلية هندسة الالكترونيات/هندسة الحاسوب وبإشراف د. لهيب محمد ابراهيم من جامعة الموصل/كلية علوم الحاسوب والرياضيات',
    'ACT-687211878888',
    '',
    '2022-10-25',
    '2022-10-25',
    '2022-10-06',
    '[\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"]',
    'مناقشة طلبة الدراسات الأولية أو العليا'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: activities_has_users
# ------------------------------------------------------------

INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (162, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 97);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 105);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 112);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 114);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 124);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 134);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 137);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 138);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 141);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 148);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 149);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 152);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 153);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 154);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 156);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 167);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 168);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 169);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 175);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 176);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 202);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (163, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 97);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 108);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 112);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 133);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 134);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 139);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 156);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 171);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 183);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 185);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 186);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 187);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 189);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 191);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 194);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 195);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 196);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 198);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 199);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 201);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 203);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 206);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 207);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 218);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 219);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 224);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 232);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 237);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 239);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 246);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 249);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 251);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (164, 257);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 97);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 98);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 105);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 112);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 114);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 124);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 134);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 137);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 138);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 141);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 148);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 149);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 152);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 153);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 154);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 167);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 169);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 175);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 176);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 202);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (165, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (166, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (172, 153);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (173, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (173, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (173, 112);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (173, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (173, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (173, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (173, 175);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (173, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (173, 317);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (173, 318);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (174, 133);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (174, 183);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (174, 185);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (174, 187);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (174, 191);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (174, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (175, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (175, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (176, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (176, 216);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (176, 229);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (176, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (176, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (176, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 97);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 104);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 109);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 112);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 114);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 128);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 144);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 145);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 153);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 156);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 165);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 168);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 175);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 176);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 215);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 216);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 218);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 219);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 221);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 223);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 224);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 225);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 229);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 230);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 311);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 312);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 314);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 317);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 318);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 319);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 320);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 323);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 324);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 325);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 327);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 328);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 331);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 332);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 333);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 335);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 336);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 337);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 338);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 339);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 340);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 341);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (177, 367);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (178, 316);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (179, 319);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (179, 320);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (180, 98);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (180, 154);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (180, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (180, 167);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (180, 168);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (180, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (180, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (180, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (180, 318);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (180, 340);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (180, 342);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 97);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 98);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 105);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 112);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 114);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 128);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 130);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 134);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 137);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 141);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 145);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 148);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 150);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 154);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 156);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 165);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 166);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 167);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 168);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 169);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 171);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 176);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 184);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 189);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 216);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 218);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 221);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 226);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 229);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 312);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 314);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 325);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 333);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 337);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 340);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 341);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 342);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 343);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 344);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 345);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (181, 346);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 98);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 101);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 103);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 104);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 109);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 116);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 118);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 123);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 124);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 128);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 129);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 144);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 145);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 171);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 175);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 183);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 185);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 188);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 189);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 190);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 191);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 203);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 204);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 208);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 210);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 212);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 215);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 216);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 217);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 218);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 225);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 228);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 229);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 230);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 262);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 263);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 266);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 267);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 270);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 272);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 274);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 276);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 278);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 300);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 311);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 312);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 313);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 314);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 319);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 323);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 324);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 335);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 336);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 337);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 338);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 339);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 343);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 344);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 346);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 347);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 348);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 349);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 350);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 351);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 352);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 353);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 354);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 355);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 356);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 357);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 358);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (182, 359);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (183, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (183, 141);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (183, 201);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (183, 346);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (184, 333);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (185, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (185, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (185, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (185, 244);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (185, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (185, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (185, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (186, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (186, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (186, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (186, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (187, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (187, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (187, 166);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (187, 228);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (187, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (187, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (187, 371);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (188, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (188, 118);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (188, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (188, 183);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (188, 185);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (188, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (188, 273);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (188, 323);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (189, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (189, 153);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (190, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (190, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (190, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (190, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (190, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (190, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (191, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (191, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (191, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (191, 198);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (191, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (191, 315);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (191, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (192, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 101);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 103);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 108);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 111);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 116);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 118);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 126);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 127);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 129);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 132);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 133);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 135);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 136);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 139);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 145);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 152);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 161);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 181);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 182);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 183);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 188);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 189);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 190);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 191);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 197);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 198);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 201);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 203);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 204);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 205);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 206);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 207);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 208);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 209);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 210);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 212);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 213);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 242);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 243);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 262);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 263);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 264);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 265);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 266);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 267);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 269);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 270);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 272);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 273);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 274);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 275);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 276);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 278);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 279);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 280);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 281);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 282);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 283);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 285);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 288);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 289);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 290);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 291);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 293);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 301);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 307);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 311);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 323);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 324);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 349);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 353);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 354);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 358);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 360);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 361);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 362);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 363);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 364);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 365);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 366);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 367);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (193, 371);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 98);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 102);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 104);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 109);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 123);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 128);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 130);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 133);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 144);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 145);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 154);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 165);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 166);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 167);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 175);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 176);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 198);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 202);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 215);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 216);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 219);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 220);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 221);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 223);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 224);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 226);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 228);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 229);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 230);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 232);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 265);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 268);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 311);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 312);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 314);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 317);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 320);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 336);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 337);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 338);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 339);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 344);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 346);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 347);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 348);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 349);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 363);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 367);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 368);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 369);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (194, 371);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (195, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (195, 114);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (195, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (195, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (195, 149);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (195, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (195, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (195, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (195, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (196, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (197, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (197, 144);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (197, 215);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (197, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (197, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (197, 335);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (197, 348);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (198, 318);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (199, 150);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (199, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (199, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (199, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (199, 320);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (199, 338);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (199, 348);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (199, 371);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (200, 101);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (200, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (200, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (200, 183);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (200, 185);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (200, 191);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (200, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (200, 265);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 102);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 109);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 114);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 123);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 128);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 130);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 144);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 149);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 150);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 166);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 168);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 171);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 216);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 217);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 219);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 220);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 221);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 223);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 224);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 226);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 228);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 229);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 230);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 312);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 314);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 319);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 320);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 324);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 335);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 338);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 339);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 344);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 346);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 348);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 349);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (201, 370);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (202, 121);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (203, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (203, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (203, 226);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (203, 228);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (203, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (203, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (203, 335);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (203, 348);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (203, 372);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (204, 105);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (204, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (204, 148);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (204, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (204, 152);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (204, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (204, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (204, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (204, 318);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (204, 325);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (204, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (204, 332);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 97);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 105);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 114);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 130);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 137);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 144);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 148);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 149);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 153);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 154);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 166);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 167);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 168);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 169);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 175);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 202);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 223);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 314);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 317);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 318);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 319);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 322);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 325);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 328);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 333);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 336);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (205, 337);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 97);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 98);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 121);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 122);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 127);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 128);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 134);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 135);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 136);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 148);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 149);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 152);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 153);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 161);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 167);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 169);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 171);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 176);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 183);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 200);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 203);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 204);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 205);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 207);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 215);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 223);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 226);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 228);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 230);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 262);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 263);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 267);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 275);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 286);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 316);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 323);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 328);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 332);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 335);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 336);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (206, 369);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (207, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (207, 268);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (208, 103);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (208, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (208, 108);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (208, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (208, 206);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (208, 209);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (208, 211);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (208, 212);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (208, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (208, 313);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (209, 328);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 134);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 135);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 156);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 166);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 185);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 191);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 198);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 207);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 209);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 224);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 234);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 238);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 239);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 246);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 251);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 279);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 280);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 294);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 297);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 298);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 303);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 308);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 316);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 318);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 327);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 331);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 346);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (210, 349);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (211, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (211, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (211, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (211, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (211, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (211, 320);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (211, 335);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (211, 348);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (211, 349);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 97);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 105);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 114);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 134);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 138);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 145);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 148);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 149);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 152);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 167);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 168);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 223);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 226);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 228);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 300);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 311);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 315);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 317);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 318);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 325);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 327);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 328);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 331);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (212, 332);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 100);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 101);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 103);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 108);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 111);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 121);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 129);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 132);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 135);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 182);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 183);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 184);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 185);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 188);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 189);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 190);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 191);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 203);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 204);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 205);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 206);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 207);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 208);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 209);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 210);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 211);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 212);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 213);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 262);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 263);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 264);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 265);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 266);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 267);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 272);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 273);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 276);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 278);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 300);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 313);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 353);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 354);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 356);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 359);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 362);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (213, 364);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 102);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 109);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 123);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 128);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 144);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 218);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 219);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 220);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 221);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 223);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 224);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 225);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 229);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 312);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 314);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 320);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 345);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 346);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 348);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (214, 370);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (215, 98);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (215, 294);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (215, 304);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (215, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 95);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 100);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 103);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 116);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 118);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 121);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 129);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 132);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 133);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 138);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 148);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 149);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 150);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 169);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 175);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 182);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 183);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 189);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 194);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 195);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 204);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 205);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 207);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 209);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 211);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 212);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 239);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 240);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 243);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 247);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 251);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 252);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 257);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 262);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 264);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 267);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 269);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 270);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 272);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 273);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 275);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 278);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 284);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 288);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 289);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 300);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 313);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 316);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 323);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 324);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 354);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 357);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 367);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (216, 370);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (217, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (217, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (217, 153);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (217, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (217, 168);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (217, 169);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (217, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (217, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (217, 332);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (217, 352);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (217, 367);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 105);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 114);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 128);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 134);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 137);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 138);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 141);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 144);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 145);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 148);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 152);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 153);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 165);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 167);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 168);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 169);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 175);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 176);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 202);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 215);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 223);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 228);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 312);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 317);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 318);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 320);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 325);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 332);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 338);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 342);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 346);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 352);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 367);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (218, 370);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (219, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (219, 121);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (219, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (219, 161);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (219, 183);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (219, 185);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (219, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (220, 318);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 101);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 116);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 118);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 121);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 127);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 129);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 133);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 135);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 181);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 182);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 185);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 186);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 187);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 188);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 189);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 190);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 191);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 198);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 209);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 246);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 262);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 263);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 264);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 265);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 266);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 267);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 269);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 272);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 273);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 275);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 276);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 277);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 278);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 301);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 323);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 353);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 354);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 370);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (221, 371);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (222, 97);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (222, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (222, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (222, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (222, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (222, 176);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (222, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (222, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (222, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (222, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (222, 317);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (222, 318);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (222, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 105);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 112);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 114);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 137);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 138);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 141);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 148);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 149);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 152);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 153);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 154);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 165);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 166);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 167);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 168);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 176);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 202);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 215);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 228);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 315);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 317);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 318);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 320);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 325);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 341);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 342);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 367);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 368);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (223, 370);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (224, 213);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (225, 100);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (225, 103);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (225, 132);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (225, 135);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (225, 203);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (225, 204);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (225, 205);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (225, 207);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (225, 208);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (225, 209);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (225, 210);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (225, 211);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (225, 212);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (225, 213);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (226, 354);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (227, 195);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (227, 232);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (227, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (227, 282);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (227, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (227, 316);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (227, 335);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 97);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 102);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 104);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 109);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 113);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 120);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 128);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 130);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 144);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 150);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 154);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 165);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 171);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 175);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 176);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 195);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 196);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 199);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 200);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 204);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 209);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 211);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 215);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 216);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 217);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 218);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 219);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 220);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 221);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 223);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 224);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 225);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 226);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 229);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 230);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 232);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 234);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 240);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 242);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 244);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 247);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 281);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 291);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 312);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 313);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 314);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 316);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 320);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 328);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 332);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 338);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 339);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 345);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 346);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 348);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (228, 349);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (229, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (229, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (229, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (229, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (229, 315);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (229, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (229, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (230, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (230, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (230, 114);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (230, 202);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (230, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (230, 322);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (230, 370);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (230, 371);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 97);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 104);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 112);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 133);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 137);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 138);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 144);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 148);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 149);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 150);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 153);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 154);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 165);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 166);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 167);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 169);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 173);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 175);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 176);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 185);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 187);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 191);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 198);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 205);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 216);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 219);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 229);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 230);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 232);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 233);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 239);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 241);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 245);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 251);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 255);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 257);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 298);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 300);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 302);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 311);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 317);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 320);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 331);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 332);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 333);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 335);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 339);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 342);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 346);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 348);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 367);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (231, 371);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (232, 109);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (232, 139);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (232, 220);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (232, 221);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (232, 224);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (232, 271);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (233, 112);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (233, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (233, 134);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (233, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (233, 149);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (233, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (233, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (233, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (233, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (233, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (233, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (233, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (233, 318);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (233, 331);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (234, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (234, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (234, 128);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (234, 130);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (234, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (234, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (234, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (234, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (234, 346);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 102);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 109);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 114);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 127);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 128);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 130);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 134);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 139);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 144);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 145);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 148);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 150);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 152);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 153);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 154);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 167);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 168);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 169);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 176);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 185);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 191);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 202);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 216);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 219);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 220);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 221);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 223);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 224);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 226);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 229);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 233);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 238);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 240);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 241);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 243);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 248);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 257);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 259);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 271);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 293);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 296);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 298);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 301);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 302);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 311);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 312);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 313);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 314);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 317);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 320);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 322);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 331);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 332);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 335);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 338);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 346);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 348);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 355);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 370);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (235, 371);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (236, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (236, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (236, 130);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (236, 166);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (236, 215);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (236, 219);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (236, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (236, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (236, 297);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 95);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 102);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 104);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 109);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 112);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 122);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 128);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 130);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 134);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 139);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 145);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 149);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 150);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 165);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 166);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 168);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 176);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 198);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 202);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 204);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 216);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 218);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 219);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 220);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 221);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 223);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 224);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 225);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 228);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 229);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 230);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 232);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 233);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 238);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 240);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 241);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 243);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 244);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 245);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 246);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 247);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 248);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 271);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 274);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 286);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 289);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 292);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 296);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 298);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 301);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 302);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 305);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 306);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 312);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 314);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 317);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 318);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 320);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 338);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 342);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 345);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 346);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 365);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (237, 371);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 97);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 98);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 112);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 117);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 137);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 138);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 148);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 149);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 150);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 152);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 153);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 154);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 167);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 168);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 169);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 176);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 185);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 191);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 226);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 240);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 242);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 243);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 247);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 270);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 296);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 300);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 306);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 311);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 317);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 318);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 327);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 328);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 331);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 332);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 342);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (238, 343);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (239, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (239, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (239, 128);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (239, 130);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (239, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (239, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (239, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (239, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 103);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 105);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 108);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 111);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 112);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 113);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 114);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 116);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 122);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 123);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 125);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 128);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 129);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 130);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 136);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 142);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 153);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 156);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 161);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 162);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 168);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 181);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 185);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 191);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 196);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 199);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 200);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 202);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 205);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 209);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 210);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 212);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 213);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 215);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 228);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 233);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 235);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 237);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 238);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 239);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 240);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 241);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 242);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 243);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 244);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 246);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 247);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 249);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 250);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 251);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 253);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 254);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 256);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 258);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 259);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 264);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 269);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 270);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 271);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 274);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 279);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 293);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 294);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 296);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 297);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 298);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 302);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 304);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 305);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 306);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 309);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 311);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 317);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 320);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 322);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 324);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 325);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 327);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 329);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 331);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 332);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 342);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 343);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 346);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 353);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 365);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 370);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (240, 371);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 101);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 104);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 109);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 110);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 114);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 129);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 144);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 145);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 149);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 150);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 153);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 165);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 166);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 167);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 175);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 184);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 188);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 189);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 190);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 215);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 216);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 218);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 219);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 221);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 223);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 224);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 225);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 228);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 229);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 230);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 232);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 235);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 237);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 238);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 240);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 242);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 243);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 244);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 245);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 246);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 247);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 249);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 250);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 251);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 253);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 257);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 266);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 274);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 293);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 297);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 300);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 305);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 306);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 309);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 311);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 312);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 313);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 314);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 320);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 325);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 330);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 335);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 338);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 339);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 345);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 346);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 347);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 348);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 370);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 371);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (241, 372);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (242, 107);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (242, 118);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (242, 183);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (242, 185);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (242, 191);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (242, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (242, 273);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (242, 297);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 98);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 101);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 102);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 108);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 109);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 111);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 113);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 121);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 122);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 127);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 129);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 132);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 133);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 136);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 137);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 139);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 147);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 157);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 161);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 167);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 168);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 170);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 174);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 175);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 182);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 183);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 184);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 185);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 186);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 188);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 189);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 190);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 191);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 193);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 196);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 197);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 198);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 199);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 201);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 204);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 205);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 207);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 208);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 209);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 210);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 211);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 212);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 213);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 214);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 215);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 219);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 220);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 221);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 224);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 228);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 233);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 235);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 236);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 237);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 238);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 240);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 241);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 242);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 243);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 244);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 245);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 246);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 249);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 250);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 252);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 253);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 254);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 255);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 256);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 258);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 259);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 262);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 263);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 264);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 265);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 266);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 267);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 268);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 269);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 270);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 271);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 272);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 273);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 274);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 275);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 276);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 277);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 278);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 279);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 280);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 281);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 282);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 283);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 284);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 285);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 286);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 287);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 288);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 289);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 290);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 291);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 292);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 293);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 294);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 295);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 296);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 297);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 298);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 299);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 300);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 301);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 302);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 303);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 304);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 305);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 306);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 307);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 308);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 309);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 311);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 312);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 313);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 314);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (243, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (244, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (244, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (244, 370);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (245, 171);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (245, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (246, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (246, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (246, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (247, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (247, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (247, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (248, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (248, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (248, 373);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (249, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (249, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (249, 198);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (250, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (250, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (250, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (251, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (251, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (251, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (252, 169);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (252, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (252, 373);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (253, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (253, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (253, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (254, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (254, 130);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (255, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (255, 328);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (255, 345);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (256, 123);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (256, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (256, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (257, 123);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (257, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (257, 373);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (258, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (258, 123);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (258, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (259, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (259, 171);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (259, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (259, 344);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (260, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (260, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (260, 152);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (260, 154);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (260, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (260, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (261, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (261, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (261, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (261, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (261, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (261, 345);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (262, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (262, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (262, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (262, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (262, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (262, 315);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (262, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (263, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (263, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (263, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (264, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (264, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (264, 340);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (265, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (265, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (265, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (266, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (267, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (267, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (267, 370);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (268, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (268, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (268, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (269, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (269, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (269, 315);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (270, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (270, 344);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (270, 345);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (271, 152);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (271, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (271, 340);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (272, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (272, 315);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (272, 339);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (273, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (273, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (273, 373);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (274, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (274, 154);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (274, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (275, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (275, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (275, 198);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (276, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (276, 169);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (276, 217);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (276, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (277, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (277, 315);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (277, 340);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (277, 344);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (278, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (278, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (278, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (278, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (279, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (279, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (279, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (280, 1);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (281, 143);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (281, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (281, 328);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (282, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (282, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (282, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (283, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (283, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (283, 217);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (283, 328);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (284, 152);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (284, 158);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (284, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (285, 148);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (285, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (285, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (286, 138);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (286, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (286, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (287, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (287, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (287, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (287, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (287, 339);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (288, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (288, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (288, 344);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (289, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (289, 123);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (289, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (289, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (289, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (290, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (290, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (290, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (290, 345);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (291, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (291, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (291, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (291, 373);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (292, 123);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (292, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (292, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (292, 373);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (293, 315);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (293, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (293, 340);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (293, 344);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (294, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (294, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (294, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (294, 344);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (295, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (295, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (295, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (295, 373);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (296, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (296, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (296, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (296, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (297, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (297, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (297, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (297, 217);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (298, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (298, 202);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (299, 123);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (299, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (299, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (299, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (300, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (300, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (300, 138);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (300, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (301, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (301, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (301, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (301, 148);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (301, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (301, 152);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (301, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (301, 261);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (301, 315);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (301, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (301, 328);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (302, 131);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (302, 138);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (302, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (302, 151);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (302, 152);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (302, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (302, 328);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (303, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (303, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (303, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (303, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (303, 345);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (304, 200);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (304, 364);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (304, 377);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (305, 108);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (305, 197);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (305, 377);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (305, 378);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (306, 100);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (306, 197);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (306, 361);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (306, 377);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (307, 120);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (307, 194);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (308, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (308, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (308, 370);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (308, 376);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (309, 283);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (309, 379);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (310, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (310, 172);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (310, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (311, 197);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (311, 377);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (312, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (312, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (312, 328);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (313, 123);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (313, 138);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (313, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (314, 171);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (314, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (314, 328);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (314, 344);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (315, 95);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (315, 120);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (315, 194);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (315, 201);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (316, 118);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (316, 133);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (316, 360);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (317, 95);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (317, 195);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (317, 380);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (317, 381);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (318, 101);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (318, 183);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (318, 189);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (319, 146);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (319, 198);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (319, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (319, 344);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (320, 189);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (320, 272);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (320, 362);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (321, 100);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (321, 108);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (321, 197);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (321, 281);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (321, 364);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (322, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (322, 165);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (322, 217);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (323, 160);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (323, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (323, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (324, 130);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (324, 171);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (324, 217);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (325, 116);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (325, 183);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (325, 343);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (326, 129);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (326, 190);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (326, 343);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (327, 164);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (327, 178);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (327, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (328, 129);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (328, 190);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (328, 323);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (328, 360);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (329, 120);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (329, 289);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (329, 382);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (330, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (330, 376);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (331, 120);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (331, 381);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (331, 382);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (332, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (332, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (332, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (332, 345);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (333, 283);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (333, 379);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (333, 383);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (334, 96);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (334, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (334, 154);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (334, 312);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (335, 145);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (335, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (335, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (336, 321);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (336, 373);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (336, 376);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (337, 120);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (337, 195);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (337, 281);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (337, 381);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (338, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (338, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (338, 339);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (339, 79);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (339, 171);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (339, 310);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (339, 370);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (340, 106);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (340, 154);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (340, 179);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (341, 155);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (341, 326);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (341, 339);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (342, 95);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (342, 132);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (342, 201);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (343, 120);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (343, 201);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (343, 210);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (344, 78);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (344, 119);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (344, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (345, 159);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (345, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (345, 344);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (346, 283);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (346, 379);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (346, 383);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (347, 123);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (347, 140);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (347, 192);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (347, 373);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (348, 120);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (348, 382);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (349, 345);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (349, 349);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (350, 130);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (350, 145);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (350, 334);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (351, 95);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (351, 195);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (351, 281);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (351, 380);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (352, 186);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (352, 360);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (353, 123);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (353, 198);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (353, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (354, 183);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (354, 194);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (354, 384);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (355, 364);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (355, 377);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (356, 120);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (356, 194);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (356, 381);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (357, 283);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (357, 285);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (357, 383);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (358, 201);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (358, 382);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (359, 123);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (359, 222);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (359, 312);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (360, 339);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (360, 345);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (361, 285);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (361, 383);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (362, 360);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (362, 361);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (362, 384);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (363, 118);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (363, 189);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (364, 120);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (364, 381);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (364, 382);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (365, 101);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (365, 118);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (365, 360);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (366, 212);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (366, 361);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (366, 377);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (367, 171);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (367, 231);
INSERT INTO
  `activities_has_users` (`activity_id`, `user_id`)
VALUES
  (367, 344);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: activity_file
# ------------------------------------------------------------

INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    23,
    'files/بعض الملاحظات الاولية حول النظام.pdf-KcDGWZY-akOgzOmv2_VLe',
    '157',
    'بعض الملاحظات الاولية حول النظام.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    24,
    'files/اختبار.pdf-OF5I0ukSAFKsQ2geJefik',
    '157',
    'اختبار.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    26,
    'files/بعض الملاحظات الاولية حول النظام.pdf-rxkK2QLYVgfV4wmAKi4Bg',
    '160',
    'بعض الملاحظات الاولية حول النظام.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    28,
    'files/اختبار.pdf-_nRtPyrLMb2CM3tC6d_BM.pdf',
    '159',
    'اختبار.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    30,
    'files/طلب تغيير عنوان بحث.pdf-T5D1Kv7goZ2sX2WglWiKc.pdf',
    '161',
    'طلب تغيير عنوان بحث.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    31,
    'files/اللجان الدائمة.pdf-fgS91TU7nQXYaYkOlG41-.pdf',
    '162',
    'اللجان الدائمة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    32,
    'files/اللجان العاملة 21-22.pdf-HkBguZuPSx74GiR-mvdUK.pdf',
    '163',
    'اللجان العاملة 21-22.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    33,
    'files/أمر إداري بلجان المؤتمر الثامن.pdf-k_CIbUYWXQ-vLlkLeFgdR.pdf',
    '164',
    'أمر إداري بلجان المؤتمر الثامن.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    34,
    'files/امر التكليف 1.pdf-8l4W9PaTJy4ufpf1fD7jY.pdf',
    '165',
    'امر التكليف 1.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    35,
    'files/Eloquent_JavaScript_small.pdf-nfE6Q1yfmY046GHPunqFB.pdf',
    '169',
    'Eloquent_JavaScript_small.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    36,
    'files/منصة البحوث التطبيقية - 2021 - تأييد مشاركة.pdf-_4KipPQgyuQJjJxwqSPVH.pdf',
    '172',
    'منصة البحوث التطبيقية - 2021 - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    37,
    'files/التعلم العميق في ترتيل القرآن الكريم - لجنة.pdf-xvyg7ehbBp4OUeFbGjYCX.pdf',
    '173',
    'التعلم العميق في ترتيل القرآن الكريم - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    38,
    'files/Data Analysis with R - لجنة.pdf-qqj2gXAkG0rRwkY2Fk2hg.pdf',
    '174',
    'Data Analysis with R - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    39,
    'files/Data Analysis with R - لجنة - ملحق.pdf-5j3kOCN04hxdk1EkKdWXi.pdf',
    '175',
    'Data Analysis with R - لجنة - ملحق.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    40,
    'files/LPWAN5G - Untapped oportunity for smart secure applications - لجنة.pdf-mh1tDAtQl_UXf-ESJWdLq.pdf',
    '176',
    'LPWAN5G - Untapped oportunity for smart secure applications - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    41,
    'files/التعلم العميق في ترتيل القرآن الكريم - تأييد مشاركة.pdf-9nHgbvptP_ww1JU1IhAd1.pdf',
    '177',
    'التعلم العميق في ترتيل القرآن الكريم - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    42,
    'files/حوار مفتوح حول مستقبل التصميم والتعليم - تأييد حضور - ملحق.pdf-vZ0rV0e5gLgN1ZO6Nia5W.pdf',
    '178',
    'حوار مفتوح حول مستقبل التصميم والتعليم - تأييد حضور - ملحق.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    43,
    'files/حوار مفتوح حول مستقبل التصميم والتعليم - تأييد حضور.pdf-5WR3wLroYsH1V5hvbbv-p.pdf',
    '179',
    'حوار مفتوح حول مستقبل التصميم والتعليم - تأييد حضور.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    44,
    'files/معالجة صورية باعتماد تقنيات حديثة في التعلم العميق - لجنة.pdf-DBg1wyXnO-6JQTD4MOjnc.pdf',
    '180',
    'معالجة صورية باعتماد تقنيات حديثة في التعلم العميق - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    45,
    'files/LPWAN5G - Untapped oportunity for smart secure applications - تأييد مشاركة.pdf-SXEct9WnrHaAbK4kAlDi1.pdf',
    '182',
    'LPWAN5G - Untapped oportunity for smart secure applications - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    46,
    'files/التعلم العميق في ترتيل القرآن الكريم - تأييد مشاركة - ملحق.pdf-KUHdmspiKACfhuSKCF46H.pdf',
    '183',
    'التعلم العميق في ترتيل القرآن الكريم - تأييد مشاركة - ملحق.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    47,
    'files/آلية تنصيب وتنفيذ نظام المستودع الرقمي الخاص بالبحوث المنشورة - تأييد مشاركة - هبة ادريس ذنون.pdf-IluUKpJXVomrxsqHGM5k-.pdf',
    '184',
    'آلية تنصيب وتنفيذ نظام المستودع الرقمي الخاص بالبحوث المنشورة - تأييد مشاركة - هبة ادريس ذنون.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    48,
    'files/تقانة المعلومات ودورها في الاستراتيجية الوطنية للنزاهة ومكافحة الفساد - لجنة.pdf-DHlQjIMy1O9q9P7ZFZulP.pdf',
    '185',
    'تقانة المعلومات ودورها في الاستراتيجية الوطنية للنزاهة ومكافحة الفساد - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    49,
    'files/اخلاقيات النشر في المجلات العالمية - لجنة.pdf-Iigge3kO5Bzqeh_-QUChx.pdf',
    '186',
    'اخلاقيات النشر في المجلات العالمية - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    50,
    'files/Twitter API  Explaining and Applying - لجنة.pdf-qJudwN3BAkHOaqwiE40dr.pdf',
    '187',
    'Twitter API  Explaining and Applying - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    51,
    'files/تطوير مناهج اقسام الاحصاء لمواجهة تحديات المستقبل - لجنة.pdf-wwhRfLfHLX9-1gr9EBqWd.pdf',
    '188',
    'تطوير مناهج اقسام الاحصاء لمواجهة تحديات المستقبل - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    52,
    'files/منصة البحوث التطبيقية - كلية التربية - تأييد مشاركة.pdf-9L4WfFkO9kHDpsoMtqbpl.pdf',
    '189',
    'منصة البحوث التطبيقية - كلية التربية - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    55,
    'files/تطوير مناهج اقسام الاحصاء لمواجهة تحديات المستقبل - لجنة - ملحق.pdf-uwKD33FdCerNAPI8w43Gr.pdf',
    '192',
    'تطوير مناهج اقسام الاحصاء لمواجهة تحديات المستقبل - لجنة - ملحق.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    56,
    'files/منصة البحوث التطبيقية القابلة للتسويق - لجنة.pdf-LulDLO9Mg8lc-W9ROGnKt.pdf',
    '190',
    'منصة البحوث التطبيقية القابلة للتسويق - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    57,
    'files/الافتراس والاحتيال للمجلات والمؤتمرات العلمية - لجنة.pdf-VgpE9JxhYFLU_doyS9Jyl.pdf',
    '191',
    'الافتراس والاحتيال للمجلات والمؤتمرات العلمية - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    58,
    'files/تطوير مناهج اقسام الاحصاء لمواجهة تحديات المستقبل - تأييد مشاركة.pdf-lm6pK5vCXukXxqTtzXb5U.pdf',
    '193',
    'تطوير مناهج اقسام الاحصاء لمواجهة تحديات المستقبل - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    59,
    'files/Twitter API  Explaining and Applying - تأييد مشاركة.pdf-SAF3S7GKAvvZAEITflR1G.pdf',
    '194',
    'Twitter API  Explaining and Applying - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    60,
    'files/اداة هامة للباحثين والمبرمجين Github - لجنة.pdf-Z4fpymuccxfBqdCHTPyif.pdf',
    '195',
    'اداة هامة للباحثين والمبرمجين Github - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    61,
    'files/Project-Based approach to Learn Programming - لجنة.pdf-VaNXr1Nm2dzbSRJKalBk7.pdf',
    '197',
    'Project-Based approach to Learn Programming - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    62,
    'files/اداة هامة للباحثين والمبرمجين Github - لجنة - ملحق.pdf-vD6e1TVOaohAzlxhRpsyW.pdf',
    '196',
    'اداة هامة للباحثين والمبرمجين Github - لجنة - ملحق.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    63,
    'files/اداة هامة للباحثين والمبرمجين Github - لجنة - ملحق1.pdf-JtDGWiuBPD_FHIP6LjIuX.pdf',
    '198',
    'اداة هامة للباحثين والمبرمجين Github - لجنة - ملحق1.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    64,
    'files/لغة Python واستخداماتها في الوقت الحاضر - لجنة.pdf-c7FJYtywhlWz77FFMtjDF.pdf',
    '199',
    'لغة Python واستخداماتها في الوقت الحاضر - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    65,
    'files/أساسيات كتابة البحث العلمي واستخدام برامجيات المراجع العلمية - لجنة.pdf-Drs2cziln4fiCRVK5dfQi.pdf',
    '200',
    'أساسيات كتابة البحث العلمي واستخدام برامجيات المراجع العلمية - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    66,
    'files/لغة Python واستخداماتها في الوقت الحاضر - تأييد مشاركة.pdf-hm0hPBuNX8kjL6sFDhwwi.pdf',
    '201',
    'لغة Python واستخداماتها في الوقت الحاضر - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    67,
    'files/منصة الباحث العلمي من Google - تأييد مشاركة.pdf-WuwXn8KAZrTD1V7KGBedF.pdf',
    '202',
    'منصة الباحث العلمي من Google - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    68,
    'files/Next Generation Network - لجنة.pdf-Yn8mjv2upFa7hjERjLF2h.pdf',
    '203',
    'Next Generation Network - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    69,
    'files/مفهوم انترنت السلوك Concept of Internet-of-Behavior (IOB) - لجنة.pdf-_Z3ZZQsSNCvg8IMgQbh7g.pdf',
    '204',
    'مفهوم انترنت السلوك Concept of Internet-of-Behavior (IOB) - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    70,
    'files/اداة هامة للباحثين والمبرمجين Github - تأييد مشاركة.pdf-AsiX1p9KnvRZ6dXNC2_dU.pdf',
    '205',
    'اداة هامة للباحثين والمبرمجين Github - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    71,
    'files/منصة البحوث التطبيقية - 2022 - تأييد مشاركة.pdf-mdpWP_PfJo4vnKsRd989x.pdf',
    '206',
    'منصة البحوث التطبيقية - 2022 - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    72,
    'files/اساسيات كتابة البحث العلمي واستخدام برامجيات المراجع العلمية - لجنة - ملحق.pdf-eiI0QFE0meYz-fzmevpHw.pdf',
    '207',
    'اساسيات كتابة البحث العلمي واستخدام برامجيات المراجع العلمية - لجنة - ملحق.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    73,
    'files/استخدام التقنيات الذكائية في بحوث العمليات - لجنة.pdf-pYznqP0RNvCkvQqjY6O0J.pdf',
    '208',
    'استخدام التقنيات الذكائية في بحوث العمليات - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    74,
    'files/مفهوم انترنت السلوك Concept of Internet-of-Behavior (IOB) - لجنة - ملحق.pdf-K4GEmFih-UeOooeS8d85A.pdf',
    '209',
    'مفهوم انترنت السلوك Concept of Internet-of-Behavior (IOB) - لجنة - ملحق.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    75,
    'files/الكرنفال السنوي الثاني والسوق الخيري في كلية علوم الحاسوب والرياضيات - لجنة.pdf-NliNdU5a7NIFtXHdQ7rIA.pdf',
    '210',
    'الكرنفال السنوي الثاني والسوق الخيري في كلية علوم الحاسوب والرياضيات - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    76,
    'files/سرية البيانات في الحوسبة السحابية - لجنة.pdf-ZtQNt_aJcgDV9G93NwMmV.pdf',
    '211',
    'سرية البيانات في الحوسبة السحابية - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    77,
    'files/مفهوم انترنت السلوك Concept of Internet-of-Behavior (IOB) - تأييد مشاركة.pdf-wOxlktNgs9E3FCLlh5EZx.pdf',
    '212',
    'مفهوم انترنت السلوك Concept of Internet-of-Behavior (IOB) - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    78,
    'files/استخدام التقنيات الذكائية في بحوث العمليات - تأييد مشاركة.pdf-kYMmubFlRF8ooOTZhk2to.pdf',
    '213',
    'استخدام التقنيات الذكائية في بحوث العمليات - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    79,
    'files/Next Generation Network - تأييد مشاركة.pdf-RVnQCLU2o5YM2kqdijUJt.pdf',
    '214',
    'Next Generation Network - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    80,
    'files/دورة منظومة صحة صدور الوثائق - تأييد مشاركة.pdf-okPgnhNKzus6GNNeBCkRA.pdf',
    '215',
    'دورة منظومة صحة صدور الوثائق - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    81,
    'files/منظومة التصنيف الوطني حسب تعليمات الفريق الوزاري للتصنيف الوطني - تأييد مشاركة.pdf-3Pu9D9QfyQJB4yK6kDfGw.pdf',
    '216',
    'منظومة التصنيف الوطني حسب تعليمات الفريق الوزاري للتصنيف الوطني - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    82,
    'files/العملات الرقمية - حقيقة المستقبل - لجنة.pdf-_AuJAWl-6fYkvBexo5V0L.pdf',
    '217',
    'العملات الرقمية - حقيقة المستقبل - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    83,
    'files/العملات الرقمية - حقيقة المستقبل - تأييد مشاركة.pdf-Rn44xlRPtscyT30EzEFOO.pdf',
    '218',
    'العملات الرقمية - حقيقة المستقبل - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    84,
    'files/استخدام سلاسل ماركوف في صفوف الانتظار - لجنة.pdf-XccwVUsnUp7T1IHTsCGj8.pdf',
    '219',
    'استخدام سلاسل ماركوف في صفوف الانتظار - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    85,
    'files/العملات الرقمية - حقيقة المستقبل - تأييد مشاركة - عمار محمد حسين.pdf-HR-D2aQVgSDz2Vz-lEOzv.pdf',
    '220',
    'العملات الرقمية - حقيقة المستقبل - تأييد مشاركة - عمار محمد حسين.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    86,
    'files/استخدام سلاسل ماركوف في صفوف الانتظار - تأييد مشاركة.pdf-oc87d8kKyOaqQiqXllVYR.pdf',
    '221',
    'استخدام سلاسل ماركوف في صفوف الانتظار - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    87,
    'files/ضرورة الجامعة الافتراضية للطلبة العراقيين - لجنة.pdf-azMTQHMfIepLJgIZweXhr.pdf',
    '222',
    'ضرورة الجامعة الافتراضية للطلبة العراقيين - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    88,
    'files/ضرورة الجامعة الافتراضية للطلبة العراقيين - تأييد مشاركة.pdf-EUKYRaXGvHVphfNlUxp8v.pdf',
    '223',
    'ضرورة الجامعة الافتراضية للطلبة العراقيين - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    89,
    'files/العنف ضد المرأة وآثاره على المجتمع - تأييد إقامة محاضرة - هدى عصام احمد.pdf-SoapFAnDvfnwcrsxK9QcK.pdf',
    '224',
    'العنف ضد المرأة وآثاره على المجتمع - تأييد إقامة محاضرة - هدى عصام احمد.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    90,
    'files/العنف ضد المرأة وآثاره على المجتمع - تأييد مشاركة.pdf-WrFmUhgz7jMVS76fnUBZ-.pdf',
    '225',
    'العنف ضد المرأة وآثاره على المجتمع - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    91,
    'files/Strategic Scholarly Publishing - تأييد مشاركة.pdf-0pjbXfxH516j2tgX4M_R-.pdf',
    '226',
    'Strategic Scholarly Publishing - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    92,
    'files/الابتزاز الالكتروني - لجنة.pdf-oAkIsxuHOlQEbF36LE_Xt.pdf',
    '227',
    'الابتزاز الالكتروني - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    93,
    'files/الابتزاز الالكتروني - تأييد مشاركة.pdf-LGWRnzzuuAkBLp477wlaz.pdf',
    '228',
    'الابتزاز الالكتروني - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    94,
    'files/الشبكات المعقدة - فن استعراض البيانات - لجنة.pdf-o_uA8te7Db7AXBwff3Klj.pdf',
    '229',
    'الشبكات المعقدة - فن استعراض البيانات - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    95,
    'files/الجيل القادم لبروتوكول الانترنت IPV6 - لجنة.pdf-P1StREMTuyti9v9jyKN-D.pdf',
    '230',
    'الجيل القادم لبروتوكول الانترنت IPV6 - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    96,
    'files/الشبكات المعقدة - فن استعراض البيانات ـ تأييد مشاركة.pdf-KqsdcQ4bJERmSdMfGAYtw.pdf',
    '231',
    'الشبكات المعقدة - فن استعراض البيانات ـ تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    97,
    'files/الشبكات المعقدة - فن استعراض البيانات ـ تأييد مشاركة 1.pdf-_H_A1B7jaD044ciTDMAHo.pdf',
    '232',
    'الشبكات المعقدة - فن استعراض البيانات ـ تأييد مشاركة 1.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    98,
    'files/تعلم لاتيكس للمبتدئين - لجنة.pdf-YjD_u-38ASlmtxmMI6vOK.pdf',
    '233',
    'تعلم لاتيكس للمبتدئين - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    99,
    'files/Digital Forencing - لجنة.pdf-MNG5L00gNvxE7ugOjNtbO.pdf',
    '234',
    'Digital Forencing - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    100,
    'files/الجيل القادم لبروتوكول الانترنت IPV6 - تأييد مشاركة.pdf-ITYrtTtJjVh1AsAu90Jnq.pdf',
    '235',
    'الجيل القادم لبروتوكول الانترنت IPV6 - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    101,
    'files/IOT with BLYNK application and web server - لجنة.pdf-4orltHOs72Gl1gF2gWZ9J.pdf',
    '236',
    'IOT with BLYNK application and web server - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    102,
    'files/Digital Forencing - تأييد مشاركة.pdf-T2O_cc7vXn62LiS0pYcgQ.pdf',
    '237',
    'Digital Forencing - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    103,
    'files/تعلم لاتيكس للمبتدئين - تأييد مشاركة.pdf-n59bDOcSBjVbjBZDV5IY3.pdf',
    '238',
    'تعلم لاتيكس للمبتدئين - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    104,
    'files/الجريمة الالكترونية والمجتمع (الوقاية والحلول) - لجنة.pdf-TIlTTxmACKMj-dHUer0Pq.pdf',
    '239',
    'الجريمة الالكترونية والمجتمع (الوقاية والحلول) - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    105,
    'files/الجريمة الالكترونية والمجتمع (الوقاية والحلول) - تأييد مشاركة.pdf-yE6Uhl_E5_yme1L4N_Tt0.pdf',
    '240',
    'الجريمة الالكترونية والمجتمع (الوقاية والحلول) - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    106,
    'files/IOT with BLYNK application and web server - تأييد مشاركة.pdf-hXylYSa2lBmqGjaZRLWDt.pdf',
    '241',
    'IOT with BLYNK application and web server - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    107,
    'files/طريقك  لتكون عالم بيانات والادوار المحورية لهذا التخصص - لجنة.pdf-4AqPWHCIdApyalzsh5yW2.pdf',
    '242',
    'طريقك  لتكون عالم بيانات والادوار المحورية لهذا التخصص - لجنة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    108,
    'files/طريقك  لتكون عالم بيانات والادوار المحورية لهذا التخصص - تأييد مشاركة.pdf-jkLK8ErxmYb9YwuO1EajZ.pdf',
    '243',
    'طريقك  لتكون عالم بيانات والادوار المحورية لهذا التخصص - تأييد مشاركة.pdf'
  );
INSERT INTO
  `activity_file` (`id`, `url`, `activity_id`, `name`)
VALUES
  (
    109,
    'files/Doc 13_Part34.pdf-LRnJ46qXpZyUV2FTbG82J.pdf',
    '290',
    'Doc 13_Part34.pdf'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: activity_image
# ------------------------------------------------------------

INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    90,
    'images/UuB1jGeyWPdGY4lNECHM8-Web Browser.jpg',
    'false',
    153
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    91,
    'images/3gPrM0DIpz-MoUTsIrrlk-MySQL Database.jpg',
    'true',
    153
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    96,
    'images/ozfuRoG1pn61vneiWEonx-Admin.jpg',
    'false',
    154
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    97,
    'images/wgEEfwLoVG38CTS4YAW5k-Dean.jpg',
    'true',
    154
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    98,
    'images/toljLvBne_UwsmnUUd7Tt-Head of Dep.jpg',
    'true',
    154
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    99,
    'images/Fxaa0kMt6-2j_DSLt9gMx-User.jpg',
    'true',
    154
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    100,
    'images/4q_5WZZRsdwJbo1Z_cvKd-Admin.jpg',
    'false',
    155
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    101,
    'images/d19cdvyjdYWZ3YXCwgj1K-Dean.jpg',
    'true',
    155
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    102,
    'images/qpayV_r-iAWD0CyKzjnPV-Head of Dep.jpg',
    'true',
    155
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    103,
    'images/MJXmHl4sB9fWkuY19yflo-User.jpg',
    'true',
    155
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    108,
    'images/PRHOlXANLgsGzH6wRI94d-Admin.jpg',
    '0',
    159
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    109,
    'images/rOERQ7uWykvvDZ2CSa4HN-Dean.jpg',
    '0',
    159
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    110,
    'images/cimrBWqnWpFcVaiLjd4qB-Head of Dep.jpg',
    '0',
    159
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    111,
    'images/2iXszrvHSvEFQ9vsP-71d-User.jpg',
    '0',
    159
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    112,
    'images/hYw-gX6pKXlNVQY54uY0k-Web-Based.jpg',
    '0',
    159
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    113,
    'images/otRVKsj4hUgDJYxK5CAcA-Client.jpg',
    '0',
    160
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    114,
    'images/tN4bYBWZRNZcjJZpqPtFn-MySQL Database.jpg',
    '0',
    160
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    116,
    'images/6-RlwsNe5tRLtMP3XGoII-05van-gogh-met-videoSixteenByNine3000.jpg',
    '0',
    158
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    117,
    'images/ImuTeCwQnYIepDoFejS9F-17735bb9ce7ba89b5fa2dc8eb2f19588069b7c83.jpg',
    '0',
    158
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    120,
    'images/Rg0Pb9yvy5hreaa6Izi-j-ÙÙØ±Ø¬Ø§Ù Ø§ÙØ±Ø¨ÙØ¹ 2.jpg',
    '0',
    160
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    121,
    'images/tbE28xOtvXvjUo07GhwBn-ØªÙØ³ÙÙ Ø¯Ø±Ø¬Ø§Øª Ø§ÙÙÙØ§ÙØ´Ø©.jpg',
    '0',
    160
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    124,
    'images/uni-logo.png-PoNZJqm2I7g7N2kAMsTYl.pdf',
    '0',
    167
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    125,
    'images/computerScience.png-sTH0dgRtT8HID-QDWHO0C.pdf',
    '0',
    167
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    128,
    'images/uni-logo.png-B6Gjf2p-TETQJLsQg-4qh.png',
    '0',
    168
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    129,
    'images/computerScience.png-a3yZSiEqvdjkoFc-8FLR5.png',
    '0',
    168
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    130,
    'images/ماجستير-محمد طارق صالح طه.jpg-0X6HtYpZ05DOwt9QmvTFC.jpeg',
    '0',
    244
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    131,
    'images/ماجستير-عطاالله صالح احمد سالم.jpg-j9r8ZjoDlhO4SgDwMAWER.jpeg',
    '0',
    245
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    132,
    'images/دكتوراه-بلقيس طلال حسن عبدالرحمن.jpg-cFtThFV8hEAKgjGlGuAHF.jpeg',
    '0',
    246
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    133,
    'images/دبلوم عالي-صفا احمد عزيز فتحي.jpg-d9ek6RG91vQndp335NJ3C.jpeg',
    '0',
    247
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    134,
    'images/ماجستير-اركان عبدالاله خضر حبو.jpg-6iFg721gIJJrWdb368RhN.jpeg',
    '0',
    248
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    136,
    'images/ماجستير-عمر عبد نجم عبودي.jpg-yGyO5e1ue_xf-NZe_hjtT.jpeg',
    '0',
    249
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    137,
    'images/ماجستير-محمد نايف عبد عبدالله.jpg-Gy6gd5Fsq8QgFXqVgSyqM.jpeg',
    '0',
    250
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    138,
    'images/ماجستير-الاء فارس حمدي مصطفى.jpg-NfU1GGcHI4qwAehtMti5D.jpeg',
    '0',
    251
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    139,
    'images/دبلوم عالي-رغدة طارق الياس داؤد.jpg--i2M7odBBfHrDaAmV4FmS.jpeg',
    '0',
    252
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    140,
    'images/ماجستير-رنا عبدالغفور محمد طاهر اسماعيل.jpg-Opwt-K7ewA_TFOZVC42k3.jpeg',
    '0',
    253
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    141,
    'images/ماجستير-انفال محمود احمد محمد.jpg-Ndbpvo3QFzGR4T_ThLKEk.jpeg',
    '0',
    254
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    142,
    'images/ماجستير-عدنان عبدالله عطية محمود.jpg-vi72ZhUjluK4Bis968azs.jpeg',
    '0',
    255
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    143,
    'images/ماجستير-هند عبدالغني احمد جاسم.jpg-U86js6h1h9gAR1f3lsHnl.jpeg',
    '0',
    256
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    144,
    'images/دكتوراه-سجى جاسم محمد قدو.jpg-A38GL1ZxOZCxrFBX5oHjT.jpeg',
    '0',
    257
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    145,
    'images/دكتوراه - شذى عبدالمنعم بكر احمد copy.jpg-YGUaqwISHflF4Be5Il1bZ.jpeg',
    '0',
    258
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    146,
    'images/دكتوراه - اديبة خالد عبو مطرود copy.jpg-ge9Z0TGVq4YVsh3mGYtgO.jpeg',
    '0',
    259
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    147,
    'images/تسمية السادة المشرفين على طلبة الدبلوم العالي 2659 في 21-06-2022 - الأسماء.jpg-71APk4xFHquGWCHBHfLNn.jpeg',
    '0',
    260
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    148,
    'images/تسمية السادة المشرفين على طلبة الدبلوم العالي 2659 في 21-06-2022.jpg-1Gw6Z51pUs7LblyJr24dB.jpeg',
    '0',
    260
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    149,
    'images/تسمية السادة المشرفين على طلبة الدكتوراه - علوم الحاسوب 3181 في 19-07-2022.jpg-mhoI9HY6Z3gXgKgajmkC0.jpeg',
    '0',
    261
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    150,
    'images/تسمية السادة المشرفين على طلبة الدكتوراه - علوم الحاسوب 3181 في 19-07-2022 - الأسماء.jpg-rEcMb1hPi0dMn8Hrmqmyb.jpeg',
    '0',
    261
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    151,
    'images/تسمية السادة المشرفين على طلبة الماجستير - علوم الحاسوب 3182 في 19-07-2022.jpg-4Vd2B9ujsrvhKfkQ8PDot.jpeg',
    '0',
    262
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    152,
    'images/تسمية السادة المشرفين على طلبة الماجستير - علوم الحاسوب 3182 في 19-07-2022 - الأسماء.jpg-zUkE_AbvTZrz1BiDxAxht.jpeg',
    '0',
    262
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    153,
    'images/دكتوراه - هشام هاشم محمد شيت.jpg-VAp9Jgdg4YnD7bw93tVSp.jpeg',
    '0',
    263
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    154,
    'images/دكتوراه - يونس عباس يونس ال عربو.jpg-aZqwelYNA6OeVqfGXUofo.jpeg',
    '0',
    264
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    155,
    'images/دكتوراه - اسماء موفق محمد توفيق.jpg-iJ7jqdjfvfmDGOlSICwu2.jpeg',
    '0',
    265
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    156,
    'images/ماجستير - رشا جمال حسين علي.jpg-mnm_kp8uvOLRRazATRiGF.jpeg',
    '0',
    266
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    157,
    'images/ماجستير - مهند رافع محمد يونس.jpg-U9fasDJaLwip_kicHztac.jpeg',
    '0',
    267
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    158,
    'images/ماجستير - امنة طه قاسم عبدالله.jpg-HY11lorsZRYxDiPoncyyU.jpeg',
    '0',
    268
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    159,
    'images/ماجستير - زيد ناطق عبدالقادر مصطفى.jpg-_h3WG1KfRHHCpztFxdbYR.jpeg',
    '0',
    269
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    160,
    'images/دكتوراه - عمر شاكر حسن صوفي.jpg-8m5Iai0QoUsBAb8TYyEHB.jpeg',
    '0',
    270
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    161,
    'images/ماجستير - وجدان يونس عبد يونس.jpg-1mLfTYLuPVDH4tOz9dy86.jpeg',
    '0',
    271
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    162,
    'images/ماجستير - احمد نظام حمو محمود.jpg-JX-3rbP9wDDSJijit5u7v.jpeg',
    '0',
    272
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    163,
    'images/دبلوم عالي - اوس سعد محمود شاهين.jpg-uHS0G5SDOLTLeUWRYrvb-.jpeg',
    '0',
    273
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    164,
    'images/ماجستير - رغد سليم محمد نجيب محمد سليم.jpg-wWVwAzcdM3PiDRYxB8BM6.jpeg',
    '0',
    274
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    165,
    'images/ماجستير - هدى حازم محمد محمود.jpg-yI-hqfvLiba8I1Sye0wri.jpeg',
    '0',
    275
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    166,
    'images/ماجستير - محمد فوزي شيت يونس.jpg-Ytf4B7XGV6QvcnmsiCIfX.jpeg',
    '0',
    276
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    167,
    'images/دكتوراه - نغم سالم محمد عمر.jpg-zAwDT3eOJE4P6-W-ng_8G.jpeg',
    '0',
    277
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    168,
    'images/دكتوراه - سرى رمزي شريف احمد.jpg-JCBlK2M3mGCntRADN7XGL.jpeg',
    '0',
    278
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    169,
    'images/دكتوراه - عمر سامي طه مطرود.jpg-WFivEdAV2nEN3VrJCUmww.jpeg',
    '0',
    279
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    170,
    'images/دبلوم عالي - محمد سعدالدين جاسم محمد.jpg-dhYwm4kODR0lK0by-jX46.jpeg',
    '0',
    281
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    171,
    'images/ماجستير - رقية خليل ابراهيم عبدالرزاق.jpg-NHiZHp_9nQRLiLje_h_pl.jpeg',
    '0',
    282
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    172,
    'images/ماجستير - مازن علي فاضل عبدالله.jpg-OKgyLfaszltyQQOAYQFce.jpeg',
    '0',
    283
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    173,
    'images/دبلوم عالي - أحمد محمد حسين صالح.jpg-n2_WFlYYge2imo8fzfUCI.jpeg',
    '0',
    284
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    174,
    'images/دبلوم عالي - نور زياد طه حسين.jpg-5htXiLqCa0nbec2eJVd3B.jpeg',
    '0',
    285
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    175,
    'images/دبلوم عالي - فاطمة عويس مصلح خلف.jpg-wHSvkgrzUduvNOoYVQdj8.jpeg',
    '0',
    286
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    176,
    'images/دكتوراه - اشرف عبدالمنعم عبدالمجيد ذنون.jpg-41hXLU9kzA2QGeGI0HuCS.jpeg',
    '0',
    287
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    177,
    'images/ماجستير - نادية محمد مجيد ابراهيم.jpg-3hUeCVy2iei_Lmi-hkyCU.jpeg',
    '0',
    288
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    178,
    'images/دكتوراه - وائل وعدالله محمود شريف.jpg--cxp_pIQ55R2Ztz3QzKI4.jpeg',
    '0',
    289
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    179,
    'images/دكتوراه - ابراهيم محمد احمد محمد.jpg-eon2OG1akAnapuFxErtjf.jpeg',
    '0',
    290
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    180,
    'images/ماجستير - عبدالله عبدالفتاح ابراهيم حسين.jpg-3dwzvhJxAsHdlXYK9VR7d.jpeg',
    '0',
    291
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    181,
    'images/دكتوراه - حليمة عيسى سليمان عمر.jpg-_O-DBSmVe7LT4eMYLPovA.jpeg',
    '0',
    292
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    184,
    'images/دكتوراه - ربى طلال ابراهيم احمد.jpg-UxnZpTGOW5VSxCSjo4N4B.jpeg',
    '0',
    294
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    185,
    'images/دكتوراه - محمود صبحي محمود سعيد.jpg-hxqp5kmEi9YYqo0DQStJ1.jpeg',
    '0',
    295
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    186,
    'images/ماجستير - منذر يونس شيت ذنون.jpg-FHrPybVhyB3dHMPiHMBGb.jpeg',
    '0',
    296
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    187,
    'images/دكتوراه - ايوب علي محمد سعيد علي.jpg-T_URuV2qfQMsV6LUaYGTn.jpeg',
    '0',
    297
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    188,
    'images/ماجستير - غزوان عبدالله محمد حسين.jpg-6p72Qp7po9M6nwBpxidge.jpeg',
    '0',
    298
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    189,
    'images/ماجستير - امجد انور محمد جميل محمود.jpg-Px9tuv8ID0HIwSRfO-QV7.jpeg',
    '0',
    299
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    190,
    'images/ماجستير - احمد ميسر فتحي محمود.jpg-Bm6d3WXI7w8iOD9j7qaj7.jpeg',
    '0',
    300
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    191,
    'images/تسمية السادة المشرفين على طلبة الماجستير 3549 في 04-07-2023 - الأسماء2.jpg-FcCOhLWWWp-8dsf4IWKha.jpeg',
    '0',
    301
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    192,
    'images/تسمية السادة المشرفين على طلبة الماجستير 3549 في 04-07-2023.jpg-g-V-apbVKhdimlrLNkux4.jpeg',
    '0',
    301
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    193,
    'images/تسمية السادة المشرفين على طلبة الماجستير 3549 في 04-07-2023 - الأسماء1.jpg-7jysewH2TVRG21y4PyKGh.jpeg',
    '0',
    301
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    194,
    'images/تسمية السادة المشرفين على طلبة الدبلوم العالي - علوم الحاسوب 3605 في 04-07-2023.jpg-4QHurXACxHjcZiev7CxTi.jpeg',
    '0',
    302
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    195,
    'images/تسمية السادة المشرفين على طلبة الدبلوم العالي - علوم الحاسوب 3605 في 04-07-2023 - الأسماء.jpg-ew_it_1sVjBvUDEaJvufo.jpeg',
    '0',
    302
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    196,
    'images/دكتوراه - حنان انس قاسم اسماعيل.jpg-KIazIYAAHhwLT3QdNBsqZ.jpeg',
    '0',
    303
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    197,
    'images/ماجستير - عبدالامير علي سعد حسن.jpg-4ld39hKKyqPgv8MjtsgpK.jpeg',
    '0',
    304
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    198,
    'images/ماجستير - سماء عبدالقادر مجيد عبدالله.jpg-eZ-vGPTMjpxIBJu3VNDdf.jpeg',
    '0',
    305
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    199,
    'images/دكتوراه - حنين عادل عبدالرحمن حسين.jpg-mCXxoX5C_IxccNWbDNRaV.jpeg',
    '0',
    306
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    200,
    'images/ماجستير - زينب حسين محمد حشاش.jpg-l8NEWNjoqkzwd2c80JTF8.jpeg',
    '0',
    307
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    201,
    'images/ماجستير - احمد هشام صالح محمد.jpg-ROK1iWD7tvxmKeRSIbPV8.jpeg',
    '0',
    308
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    202,
    'images/ماجستير - سيبل سعيد خليل حسن.jpg-FHYpUvbWpjGZozxJMfACq.jpeg',
    '0',
    309
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    203,
    'images/ماجستير - امنة خالد خليل ابراهيم.jpg-XPKkmdKqWI9bkisHPgjAA.jpeg',
    '0',
    310
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    204,
    'images/ماجستير - منال ابراهيم محمد نزيل.jpg-nrHwwRVeIIff7ymKSPHOi.jpeg',
    '0',
    311
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    205,
    'images/ماجستير - رشا وائل علي احمد.jpg-W-_igJgLfaF4Gmskd5hB1.jpeg',
    '0',
    312
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    207,
    'images/ماجستير - زيد خلف عبد سعود.jpg--kVjmEMkiJ5hj7mIfuid1.jpeg',
    '0',
    314
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    208,
    'images/ماجستير - محمد عيد خميس سالم.jpg-1bQkfhmd_ZFqFAjVjFTf0.jpeg',
    '0',
    313
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    209,
    'images/ماجستير - علي عبدالحق اسماعيل خضير.jpg-tjxphUuNfjZxIUgL8yEyd.jpeg',
    '0',
    315
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    210,
    'images/ماجستير - فاطمة محمد احمد حسين.jpg--UpNFDmcq2-vesMGg8jQd.jpeg',
    '0',
    316
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    211,
    'images/ماجستير - فاطمة محمد ياسين محمد.jpg-gGm3AhPFCcWgRbWsJ2Bsy.jpeg',
    '0',
    317
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    212,
    'images/ماجستير - فاطمة عبدالرزاق ايوب مصطفى.jpg-wF5WFjKkk3YVjaZu4uk36.jpeg',
    '0',
    318
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    213,
    'images/ماجستير - عمر ابراهيم شيت داود.jpg-AM75M8AQIprmrY3oeeIuY.jpeg',
    '0',
    319
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    214,
    'images/ماجستير - ريم طلال طه عبدالقادر.jpg-V7UBWhALaOwvuG6GuV0Pa.jpeg',
    '0',
    320
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    215,
    'images/دكتوراه - ايلاف سليمان خليل يوسف.jpg-zPnzF3OIdTe-BEeIeN5z3.jpeg',
    '0',
    321
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    216,
    'images/ماجستير - تسنيم محمد حسن مصطفى.jpg-yjKKzFBr2b9fFEnJH8goz.jpeg',
    '0',
    322
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    217,
    'images/ماجستير - تسنيم محمد مصطفى - تغيير موعد المناقشة.jpg-w5vgRWAU7swVqJrpFkL97.jpeg',
    '0',
    322
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    218,
    'images/ماجستير - رغدة عنان عبدالغني عبدالرحمن.jpg-5jnBVmt3oPE-JDwBvbapN.jpeg',
    '0',
    323
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    219,
    'images/ماجستير - محمد ماهر حسن داود.jpg-VDGSKAA7EZ0daLzly8tUe.jpeg',
    '0',
    324
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    220,
    'images/ماجستير - اسماء صدام جعفر محمود.jpg-KVVPBq4R36e-DOFHO3dPt.jpeg',
    '0',
    325
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    221,
    'images/ماجستير - محمد امين عقبة محمد نوري.jpg-dTBkYRYxudLpW1OJSTxm6.jpeg',
    '0',
    326
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    222,
    'images/دكتوراه - محمد باسل شكر.jpg-U4gCvZN3nxYfFZA7SyvQZ.jpeg',
    '0',
    327
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    223,
    'images/ماجستير - هند عادل احمد سعيد.jpg-NKLhNZB3i5WULmibHXiXj.jpeg',
    '0',
    328
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    224,
    'images/ماجستير - انمار محمد شاكر حسن حسين.jpg-5dVZZIndvZFbQEYWnCHT5.jpeg',
    '0',
    329
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    225,
    'images/ماجستير - الاء باسل محمد شريف محمد علي.jpg-5MS6ZEg7FqOXmBcuSni9p.jpeg',
    '0',
    330
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    226,
    'images/ماجستير - اسماء محمد سليمان حسين.jpg-dtG6TPJzjy72drb2KBBgH.jpeg',
    '0',
    331
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    227,
    'images/ماجستير - نور سليمان خضير مهاوش.jpg-8VChelAJ1NbInOb-3iDRg.jpeg',
    '0',
    332
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    228,
    'images/ماجستير - نور سليمان خضير مهاوش - تغيير عضو مناقشة.jpg-kcPyWc6YNboBvtjNNg1aW.jpeg',
    '0',
    332
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    229,
    'images/دكتوراه - مروان عزيز جردو احمد.jpg-TG50USJp15SGKWcGc9NDG.jpeg',
    '0',
    333
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    230,
    'images/ماجستير - صائب ميسر فتحي محمود.jpg-x_ityWcBPl8v5lEmU1ZHg.jpeg',
    '0',
    334
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    231,
    'images/ماجستير - رحمة نزار ابراهيم محمد علي.jpg-L3UFyEYMbVQNAjPr4sGis.jpeg',
    '0',
    335
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    232,
    'images/ماجستير - شيماء فهد راشد عبدالباري.jpg-DBnLluS5cKDURIdHJDDC-.jpeg',
    '0',
    336
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    233,
    'images/دكتوراه - محمد عمر شعبان محمد.jpg-Z3--NWazFMqEpoXyapyAq.jpeg',
    '0',
    337
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    234,
    'images/ماجستير - عبدالرحمن مصطفى علي مصطفى.jpg-CxDVHAS3CILTvIYK0uk7V.jpeg',
    '0',
    338
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    235,
    'images/ماجستير - منار مزاحم علاوي محمد.jpg-qq81a80XHkvoPvieWlW1O.jpeg',
    '0',
    339
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    236,
    'images/دبلوم عالي - بسمة ارشد صالح ابراهيم.jpg-4xN71bAGTyRBGJ9_7vGZS.jpeg',
    '0',
    340
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    237,
    'images/ماجستير - اسماء اسماعيل محمد صالح.jpg-aAUJ6mGhJD5ikZPeJ5FuK.jpeg',
    '0',
    341
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    238,
    'images/ماجستير - ابو ذر عبدالله خلف عطية.jpg-YQv9L-rHMYsRHqh0cxEdj.jpeg',
    '0',
    342
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    239,
    'images/ماجستير - سبأ عبدالجبار محمد فتحي.jpg-jVt_zgIrKE5XdTZ1chscf.jpeg',
    '0',
    343
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    240,
    'images/دبلوم عالي - أحمد سامي محمود فتحي.jpg-an5CczUoShoGyb4MN4-Ar.jpeg',
    '0',
    344
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    241,
    'images/دبلوم عالي - احمد سامي محمود فتحي - تغيير عضو مناقشة.jpg-uB1MtH2zqKfisVnrjW0Er.jpeg',
    '0',
    344
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    242,
    'images/ماجستير - محمد عبدالستار عبدالغني عبدالله.jpg-NrkU8T906r4BghAfW2pza.jpeg',
    '0',
    345
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    243,
    'images/ماجستير - عمار رعد وعدالله ذنون.jpg-BjpFWNkJoCeMXb2J0ifw4.jpeg',
    '0',
    346
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    244,
    'images/ماجستير - شامل عزالدين نجم عبدالله.jpg-LfuBh1jcjv3RgW6tBwN61.jpeg',
    '0',
    347
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    245,
    'images/دكتوراه - شعاع محمود عزيز ابراهيم.jpg-CYY7XwP350d6OtOYvGb-4.jpeg',
    '0',
    348
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    246,
    'images/ماجستير - محمود محمد يونس سليمان.jpg-pzEDpSbHiS1s65cyxYk6U.jpeg',
    '0',
    349
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    247,
    'images/ماجستير - علي ابراهيم احمد صالح.jpg-ZunUlOkHY9icfa5aRyknX.jpeg',
    '0',
    350
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    248,
    'images/ماجستير - علاء عبدالقادر ياسين محمد.jpg-7XXOQzXaU0qJKTWKT41Df.jpeg',
    '0',
    351
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    249,
    'images/ماجستير - عبير عادل حميد الجبر.jpg-tmM0NU2HACXhcOmlp9J0i.jpeg',
    '0',
    352
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    250,
    'images/ماجستير - ماهر فخرالدين اسماعيل جاسم.jpg-qjdJQyNV26Xr0kBC5_NUl.jpeg',
    '0',
    353
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    251,
    'images/دكتوراه - زياد يحيى علي عبدالله.jpg-yC_1wWRpSCiqj75N2hiFX.jpeg',
    '0',
    354
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    252,
    'images/ماجستير - نبأ محمد رشيد حسن حيدو.jpg-J-57fVYFw_93SCn4kRuN9.jpeg',
    '0',
    355
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    253,
    'images/دكتوراه - ميادة خليل غفار حسن.jpg-mDDwpDUbxQaNTm9KFX9Qs.jpeg',
    '0',
    356
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    254,
    'images/ماجستير - نوريهان نجدة فاضل عباس.jpg-IislJTE-8p_q5QE_-8Tr_.jpeg',
    '0',
    357
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    255,
    'images/دكتوراه - احمد سالار جلال امين.jpg-nnNx-vdhWOrj3HRh3WiTZ.jpeg',
    '0',
    358
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    256,
    'images/ماجستير - احمد عبدالرحمن ادريس صالح.jpg-VSvjpN3YSb_Sbjopt4KLL.jpeg',
    '0',
    359
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    257,
    'images/ماجستير - مصطفى زكي محمد يعقوب.jpg-Kk8Mt9hvC-MSmxRdgF-3x.jpeg',
    '0',
    360
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    258,
    'images/ماجستير - سمية محمد عبدالمحيي سلمان.jpg-nVg-nhCi_cnBjBJIb1YUu.jpeg',
    '0',
    361
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    259,
    'images/دكتوراه - سارة غانم محمود احمد.jpg-7Y9iA4_lJoEWhabOeVDHR.jpeg',
    '0',
    362
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    260,
    'images/ماجستير - سيف رمزي احمد ابراهيم.jpg-Iij0JdmyB79v4Vk0tcujk.jpeg',
    '0',
    363
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    261,
    'images/ماجستير - احمد خضر خلف خضر.jpg-HQoY9dmFjBx80sfoFIueT.jpeg',
    '0',
    364
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    262,
    'images/ماجستير - سلوى صلاح الدين قاسم خالد.jpg-hHGH5TYNjOCqN3Cg1Oj7G.jpeg',
    '0',
    365
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    263,
    'images/ماجستير - نواف ناصر رشو قاسم.jpg-F7ywDNZBoqbOX4JX9tJpz.jpeg',
    '0',
    366
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    264,
    'images/احلال د. لهيب محمد بدلا عن رغد زهير في لجنة مناقشة.jpg-BMrYnHtTkGFy_RMwfypOt.jpeg',
    '0',
    293
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    265,
    'images/دكتوراه - حسن ماهر احمد انور.jpg-j6xMPQtXmxbpu8f3YjhT1.jpeg',
    '0',
    293
  );
INSERT INTO
  `activity_image` (`id`, `url`, `private`, `activity_id`)
VALUES
  (
    266,
    'images/ماجستير - فرح باسل احمد ذنون.jpg-GMU_z2zMQA0Waq4zWbdoT.jpeg',
    '0',
    367
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
INSERT INTO
  `reset_token` (`id`, `token`, `user_id`)
VALUES
  (
    32,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDEsImlhdCI6MTY4MTM5MTYzMCwiZXhwIjoxNjgxMzk1MjMwfQ.n-IKP8CsuI8F6V-lzEh5VeJvHPXL6GS4gNjWTzOsenY',
    '41'
  );
INSERT INTO
  `reset_token` (`id`, `token`, `user_id`)
VALUES
  (
    34,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTUyLCJpYXQiOjE2ODgyOTA0MTQsImV4cCI6MTY4ODI5NDAxNH0.xa3Cv1iLWO2ThxIYzUFTJqeRAQ-zXfwwH0hu7UBnuv8',
    '152'
  );
INSERT INTO
  `reset_token` (`id`, `token`, `user_id`)
VALUES
  (
    36,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzcwLCJpYXQiOjE2ODg4MTAxNDcsImV4cCI6MTY4ODgxMzc0N30.hM0WitjPXTPc-ozVn7Z-nSDp-qXCcbdKR7tapUlChjI',
    '370'
  );
INSERT INTO
  `reset_token` (`id`, `token`, `user_id`)
VALUES
  (
    40,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzksImlhdCI6MTY4ODk4MDY0MiwiZXhwIjoxNjg4OTg0MjQyfQ.uZCCPRH6vjFuXJTLmySvcgogcuOnKPGmmUHf_HURlys',
    '79'
  );
INSERT INTO
  `reset_token` (`id`, `token`, `user_id`)
VALUES
  (
    43,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTgwLCJpYXQiOjE2ODkzNzgyNDksImV4cCI6MTY4OTM4MTg0OX0.30jDs9eHsj77Ytxzty00mPculHiLhWQ6UoipEzYo4uQ',
    '180'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: user_code
# ------------------------------------------------------------

INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (30, '1ybbye', 'tyaseen@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (32, 'bakb7i', 'test@test.com');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (50, 'k084y6', 'tahataka@gmail.com');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (51, '9iwoed', 'tahataka1978@gmail.com');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (53, 'g4nwix', 'ahmed_entesar84@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (54, 'knqfny', 'ahmed.s.nori@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (55, 'o6ng4b', 'ahmed_salih_h@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (59, 'kp98qm', 'drosamahannon@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (60, 'da4eex', 'asmaa.khaleel@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (61, 'y329m3', 'asmaa.abd@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (62, '9eppgi', 'asmashade77@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (64, '5eeb9q', 'le_osamah@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (65, '9m89h4', 'imansubhi@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (66, 'dnlm8w', 'dr.emantarik@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (67, '5fdi72', 'enas.amjad@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (69, '9c3xiz', 'elaf.sulaiman@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (71, '1n1e01', 'ashrf.bshyr@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (72, 'epo1qa', 'anyma8@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (73, 'phgnam', 'banabdulkareem@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (74, 'cfbfzx', 'drbanalani@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (75, '4kgw06', 'ban_ghanm2019@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (76, 'cnhe4k', 'bashar.altalib@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (77, '7q80ga', 'baydaaibraheem@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (78, '6hgb4i', 'thairyounis59@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (79, 'cmmbkq', 'husam.waleed@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (80, 'xx3fwx', 'khalawe@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (83, 'ncho9d', 'raghad.sulyman@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (84, 'd74i3d', 'ranenmate@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (85, 'ig4gwl', 'alshamany@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (86, '9qaf78', 'raya.jassim@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (87, 'e66khh', 'rayasalim73@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (88, '1qiogg', 'riyadh.zaghlool@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (91, 'y0klqc', 'zaid.alkhaledi@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (93, 'elplbw', 'zainab.tawfeek@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (94, '96dd5g', 'zaynab.hussam@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (95, 'm059oy', 'zeenaalkateeb@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (97, '3mplk8', 'sarab.ahmad@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (99, '4icfm8', 'sameeraabbasfadhel@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (100, 'e1z8fe', 'sanabil_2000@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (101, 'cgx0lg', 'sunduskhaleel_2019@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (102, '9mmh2p', 'sundus_abid7@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (103, 'ik88ep', 'shahd_hasso@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (104, '78wggp', 'shaymamustafa@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (105, 'gfmhym', 'dhafar_un@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (108, '4gi4he', 'dr.alyaa@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (109, '2o2qox', 'ammarthaher@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (110, 'hoynpa', 'omaraldewachy@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (111, '347563', 'ghadathanoon@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (113, 'apfzhh', 'ghaydabdulaziz@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (114, '6xdg5x', 'ghaidaa.najib@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (115, '7xk5zq', 'faten.y.t@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (116, 'f5de5x', 'farahtarik@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (117, 'xemel0', 'fawziyaramo@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (118, '7fhh4g', 'mohammed.c.y@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (119, 'w6422g', 'mqy.alawjar@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (120, 'm774py', 'marwamaster@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (121, 'd0fm4w', 'makera.aziz@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (123, '9ngo0g', 'dr.muna_taher@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (124, 'm0hx2x', 'mahaabd77@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (125, 'zipyil', 'maysoonkhider@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (126, 'mh777h', 'miaad.abidalrazaaq@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (127, 'qblqog', 'meladjader@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (128, 'fi51fg', 'nadia_tarik@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (130, 'godbwq', 'najlabadie@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (131, '59odqc', 'naghamajeel@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (132, 'bp9y33', 'hadiasalih@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (133, 'w2kocd', 'hanaosman@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (137, '7mfndb', 'yusrafaisalcs@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (139, 'p2p7ce', 'talal744740@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (140, 'imy2gf', 'farah-abd-ul-ghane@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (142, 'm40ogx', 'mhasenaltalib@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (144, 'k6dbzq', 'muzahim_alhashime@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (145, '6cgobd', 'manaf.ahmed@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (146, 'gae3cy', 'naamsalem@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (147, '9mekn7', 'he.hayawi@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (148, 'ydof2f', 'hayfaajwad.65@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (149, '8lgao4', 'wisam-stat@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (150, '1d1gbb', 'ahsa.alwattar@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (151, 'cyekbd', 'f.llwaah@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (152, 'hpq2qz', 'drabdul_salim@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (
    153,
    'cq1a80',
    'abdulghafor_rozbayani@uomosul.edu.iq'
  );
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (154, '2x6l4m', 'aliadil77@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (156, 'o6cmqq', 'karamhatim@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (157, 'p6mdkh', 'mohammed.ameer@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (158, '5awxzc', 'munamoh74@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (159, 'zhxa20', 'aziz_maysoon@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (160, '1mxp4y', 'dr.omar.aldabbagh@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (161, '98gqg0', 'saifldeen.alrefaee@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (162, 'loho33', 'salih.mooaed@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (163, '6631ci', 'ghalia.tawfeek@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (164, 'd95985', 'ghazwan.alsoufi@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (165, 'fkqmoe', 'lomuaajasem@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (166, 'e3p2b6', 'mazinalanaz@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (168, 'ai7162', 'manalsalim@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (171, 'lm9yhd', 'dr.hudaea@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (172, 'f48ldq', 'hanaa.m.s@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (173, 'w16lh2', 'baydaa_sulaiman@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (174, 'oabckq', 'taghreed_reyad@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (175, '7854fw', 'jamal_alneamy@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (176, '39y4ih', 'rasha.alsarraj@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (177, 'ml4zon', 'zahraa.zakar@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (178, '20dqky', 'zena-talal@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (179, 'cxm6pm', 'sura_riyath@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (180, 'aew6hg', 'shahbaaibrkh@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (181, 'dhbhza', 'shaymaaahmedch@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (182, 'ng4n8p', 'sael.mohamed@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (183, '5h03gp', 'atica_altaie@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (184, 'yklcyx', 'azzam.esam@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (185, '4fqzo6', 'ghadaaldabagh@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (186, 'pl8o0n', 'f.abayaje@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (187, '1y0f59', 'marrwa_zedan@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (188, 'lw5737', 'marwa_marwan21@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (191, '18bcfh', 'ahlam.abdalghafar@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (192, '9fcb4m', 'aahmedamer68@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (193, '0qfcxf', 'ikhlas.abdalnafii@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (194, '56zgc5', 'baidaa.r@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (195, 'oabkq2', 'hassan.haddaf@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (196, 'lg7y6b', 'hussain.ali@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (197, 'byai3d', 'khaled.ezedine@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (198, 'eibfi3', 'khaleda.muhammad@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (199, 'ym9wlm', 'duaa.mosaed@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (200, 'yg7g33', 'rasha.george@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (201, 'xd0im3', 'raghad.khalid@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (202, '69bceh', 'reem.natheer@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (203, '4qif20', 'Zainab.q@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (204, 'pmchn7', 'saad.a.abd@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (205, 'il0ec2', 'salwan.abdulkreem@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (206, '1pie1x', 'shatha.falih@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (207, '7gddg7', 'shereen.munif@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (208, 'n4l732', 'shaimaa.rafaa@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (209, 'dc4e56', 'alladdin50@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (210, 'pbkxdm', 'omar_al_habash@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (211, '3nwqxi', 'layth.sami@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (212, '5od2gx', 'laila.abdulazeez@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (213, 'wk8xe8', 'mohammed.shukir@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (214, 'dbqgg9', 'mahmood.ali@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (215, 'pd21no', 'muntasar.ahmed@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (216, '3ko597', 'maha.mudafer@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (217, '17cnl9', 'myada.abdalmohsen@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (219, '1cf0od', 'prof.dhuha_basheer@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (223, 'h5ocaa', 'israa.alameen81@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (224, '2e73wp', 'allahamoodat@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (225, 'kggg2p', 'khairy-stat@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (226, 'b8a7ix', 'rikan.ahmed@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (227, '6nx19c', 'zeenamudhar@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (228, 'bg82e2', 'shaimaa.waleed@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (229, '9ln426', 'omarqusay@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (230, 'way11g', 'fidaa-law@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (232, '38hcp2', 'muna.abdalaziz@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (233, 'ihi0zm', 'najlaa.s.a@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (234, 'lmnam7', 'nada-nazar1984@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (235, 'g500d7', 'noora.hawa@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (236, '5zmpy9', 'zeennorsal@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (237, 'bey0n2', 'heba.sulaiman82@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (238, 'meheig', 'hisham.alameen@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (239, '63enww', 'hyllaa.77@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (240, 'bzg5o6', 'yathmer.maher@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (241, 'z9ydzd', 'asmaas982@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (242, 'h3xqcm', 'drekhlass-alrawi@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (243, 'eoo8y7', 'barah_mahmood82@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (244, 'x4xx6k', 'raida.1961@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (245, 'p8zo4y', 'raghad.math@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (246, 'i3od2y', 'z.mohammed@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (247, 'kgfd9n', 'shuaamaziz@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (248, 'oqnde3', 'shahlasamer@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (249, 'qziqa0', 'shaymaahatim@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (250, 'i5pg0g', 'talal.math@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (251, '806q9g', 'farahalkadoo@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (252, 'zw5875', 'merna_samarchi@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (253, 'oypf9n', 'hanadidawood@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (254, '7hh0e0', 'burhan.h.k@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (255, 'k4ilhg', 'hussam.lukman@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (256, '2z4geo', 'raad.ahmad@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (257, 'pngcop', 'raghad.saleem@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (258, '6n4yol', 'rayan.alabbasy@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (259, 'dizhga', 'zahraa.daham@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (260, 'ggc8iq', 'sura.alalwlia@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (261, '8bewbn', 'shathaabdullah@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (262, 'pgcdoq', 'shahba.abd@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (263, 'd52xde', 'shemaa.amer@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (264, '7f08a6', 'abduiiah.salim@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (265, 'gng1kf', 'ammar.adel@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (266, 'wbachy', 'omar.thamer@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (267, 'np018f', 'mhhmood.shukur@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (268, 'zbld57', 'marwayahea@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (269, 'khgnow', 'mustafa.subhl@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (270, 'fd7l3z', 'najlaa.khalid@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (271, 'ww9mn3', 'aseelwaleed@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (272, '5g6654', 'hasanmaher@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (273, 'o7m771', 'hanan_hamidali@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (274, '1phfw5', 'sama_talee@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (275, '3wxo5m', 'firdewsalsalman@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (276, '9pbfmk', 'qizohair@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (279, 'heez0b', 'huda.fasil@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (280, '2wgci2', 'ammar.hussien@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (281, 'z6z4p0', 'alyaa.ghanim@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (282, '216gln', 'nadia.m.mohammed@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (285, '1o63p2', 'omrtrq@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (287, 'wmeq83', 'safwan75nathem@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (288, 'i232ey', 'rotinajasim@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (289, 'afdppz', 'zaid1978@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (290, '2x4him', 'dr.safwan1971@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (291, '497mw8', 'esmayel.yahya@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (292, 'wc142g', 'banmustafa66@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (293, 'ggonmm', 'ranamuayad@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (294, 'omwwdo', 'shamis.ghanim@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (295, 'lme9o8', 'ali.hekmat@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (296, 'gc19i2', 'ghazwan.taha@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (297, 'xohw94', 'hibaadreese@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (298, 'b4i9w7', 'asmahammo@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (299, 'xoa7g0', 'ashraf_althanoon@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (300, 'mny1a6', 'anfalaaf@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (301, 'oh9gyn', 'baraa_sami@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (302, '6f1i82', 'zahraa.alkattan@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (303, '7wghl9', 'nada_n_s@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (304, 'b7fplb', 'khalil_alsaif@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (305, 'cb25p3', 'muna.jaffer@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (306, 'x47wc1', 'muntahatariq@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (307, 'g0n935', 'khalida@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (
    308,
    '2qq0q8',
    'laheeb_alzubaidy321966@uomosul.edu.iq'
  );
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (310, 'gnawfd', 'asma_alkhairi@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (311, 'q10xc7', 'maisirreem_alsaigh@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (312, 'q8f26y', 'hibamoneer@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (313, 'zc5azg', 'iklaas.sultan@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (314, '227qad', 'shamil.al-ameen@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (315, 'gn48hm', 'omar_inam@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (316, 'xb8yca', 'haleema_essa@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (317, 'molko3', 'nooalior@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (318, 'kxbmfm', 'rafal.ad81@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (319, 'y38cl7', 'sallal-rasha@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (320, '1om8ap', 'abeeraldabagh@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (322, 'c8weo9', 'enaamghanim@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (323, '17q53e', 'karamadel@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (324, 'k17qpl', 'zakariya.algamal@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (325, 'a34whz', 'banah.mitras@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (326, 'e1nkbb', 'hutheyfa71@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (327, 'wxc06h', 'yass.math@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (328, '9c0pmo', 'hamsathrot@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (330, '22yq20', 'fatima.zamzoom@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (331, 'nap048', 'sata@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (332, 'ol53ym', 'shymshak@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (333, 'gyolkz', 'msmt_math@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (334, '5f5qdh', 'mzhasan@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (337, 'kbnbmk', 'faswad@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (338, 'g4xzap', 'abdullah.h@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (339, 'dxp7e2', 'rawa_qasha@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (341, 'qxmzk7', 'abdulrahman.maher.96@gmail.com');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (344, 'ocildb', 'manar.kashmola@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (345, '41mpg0', 'basimah@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (347, 'xqhg5b', 'ahmedgraph@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (348, 'h0qlno', 'ahmednumerical@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (349, 'f2i13k', 'waleedalhayani@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (350, 'b1cfw9', 'saad_alazawi@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (351, 'g50l0e', 'husamqm@uomosul.edu.iq');
INSERT INTO
  `user_code` (`id`, `code`, `email`)
VALUES
  (352, '1kcfgo', 'omar.saber@uomosul.edu.iq');

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
    109,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MDkwNzQzNywiZXhwIjoxNjk2NDU5NDM3fQ.YA6BefP3hOVhRz6bSHOkvh9g-Jh5Fq9CHWVfRlGZKZg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    110,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MTE0MzkwMywiZXhwIjoxNjk2Njk1OTAzfQ.v1upVjZEjOp0P1vjDP85saDBYuoR1bi3-xypBPfAhKM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    111,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MTE2MTgwNiwiZXhwIjoxNjk2NzEzODA2fQ.6ibuu2C2Xb6YxwXVT0bcfVMaBonwaD8iRlRLIketQZw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    114,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MTM0MzI4NywiZXhwIjoxNjk2ODk1Mjg3fQ.vSQoj3_WcnpL2TR7tqOdb6YV-vAgp1EqYC_p3nXyi_U'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    115,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MTM5MzE1OCwiZXhwIjoxNjk2OTQ1MTU4fQ.ogDZO_dzuboiepozsbOylnVdv8Q0eusFFHeZefyc2hY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    119,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MTQwODc0OCwiZXhwIjoxNjk2OTYwNzQ4fQ.6lIdMVijn-oxKLUDk-6AczOYANSv333dWMwxVHGzuLE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    121,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MTQwOTAzNCwiZXhwIjoxNjk2OTYxMDM0fQ.sCiRcxs2kEadtrqcQb1WbrdnWrz3NiTJP_dalaMXNF8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    122,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MTQ2ODE4NSwiZXhwIjoxNjk3MDIwMTg1fQ.izV0GPedpMo0RTZuK8Uv38UQ8kEtuf0PBw8A9U9foqs'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    124,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MTk2NTc2OSwiZXhwIjoxNjk3NTE3NzY5fQ.mAp1o4Wq-3lgFeyAy5wgQ9fS4D17AnQ_apDwdwM5Cbw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    125,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MTk2ODM3MCwiZXhwIjoxNjk3NTIwMzcwfQ.l9TVjoMcq3B9oClkHtcG9rx1ChsJDHJwO4CFn28oMOY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    126,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MjYyOTAwMCwiZXhwIjoxNjk4MTgxMDAwfQ.k0FF4CEEJQYhjwgG-fiGEBjE_Taw_7vREnxbfN0lUBY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    128,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MjYyOTg0NSwiZXhwIjoxNjk4MTgxODQ1fQ.GnxsEOL_omEeDOcJpJnGL089K9cfr7U_EW7uM56SOVg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    130,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mjg4MTAzNiwiZXhwIjoxNjk4NDMzMDM2fQ.affRkOEKM4Nu3iWUceuKChXfUmakObCvh3jx9nvwRDc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    131,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzU1NTAzOCwiZXhwIjoxNjk5MTA3MDM4fQ.HFUNcXU8XYcIYHHuL-yK0NwU0keyILY1TL2OtG7UHOs'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    132,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzU1NjQzOCwiZXhwIjoxNjk5MTA4NDM4fQ.YjSl6h7Nlf5x6TXquczVyMua3B6uMSXTAwB3WGikyrs'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    133,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzU1NzYyNCwiZXhwIjoxNjk5MTA5NjI0fQ.Agvm1HAWU1ife89JoFZqQrykirP_Y91232ts5OpqPd8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    134,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzU1ODYxNywiZXhwIjoxNjk5MTEwNjE3fQ.kGUbr4yRZ25afUn2QdtlUJhuMvVeUE5_ssXTEGYka6c'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    135,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzU1ODY0NSwiZXhwIjoxNjk5MTEwNjQ1fQ.7TOkrV77ws4BU76-HBHrlm0TmRn-tIKNt1M7h7xhOeo'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    136,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzU1ODg1MSwiZXhwIjoxNjk5MTEwODUxfQ.1xPb_5ibs6VgfzkfV2tR62150kRHW3_6F0nL-hziM24'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    137,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzU2MTU1MCwiZXhwIjoxNjk5MTEzNTUwfQ.2Tpc_TU7mn71FLihYKqnK9pmWqPsWc5U3hFBKGS6kZs'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    138,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzU3NTM2OCwiZXhwIjoxNjk5MTI3MzY4fQ.Ln0__MkSv2Xqia33b1jGW9tLcF3b780Mwpixudkp_cI'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    139,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzU3NTQ5NCwiZXhwIjoxNjk5MTI3NDk0fQ.pIsFmFeKoufKYlNsc9lcO6UT0YOIfSOm45p28Afa0Z0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    140,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzYxNTA4NiwiZXhwIjoxNjk5MTY3MDg2fQ.VjGAzi5HIi9-hvQeJ9qxxUC6a3nFMk3d4QbMf5oqFs4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    141,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzYxNTEyMCwiZXhwIjoxNjk5MTY3MTIwfQ.XpwzWjS8-PyFEZvZfKAjLMe5lvzrGXlk2C1AYBxSKMA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    142,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzYxNzAwMSwiZXhwIjoxNjk5MTY5MDAxfQ._M_9Qa75Ivvsy6pK_xjoK4Lu2yQHtviKCysOYQdVrk0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    144,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzYxNzc4OSwiZXhwIjoxNjk5MTY5Nzg5fQ.-L9gopqSnw-XqjVZdod-XVd75ng8aMB2ZCvcivmfUx0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    146,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzYyMjYyMCwiZXhwIjoxNjk5MTc0NjIwfQ.shUYrmq8o9XqSKPy3zEl2w7TxbwmOeOO17gPCmJbO60'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    147,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzYyMjgxMywiZXhwIjoxNjk5MTc0ODEzfQ.XWri2_AtZLRYa8YoQ7zUMQWbiOnr2irS54M9du7ilmM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    148,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzY0NTc0OSwiZXhwIjoxNjk5MTk3NzQ5fQ.FhL_9ZZdIpvjwAc9mL9BIJj4qEd88MnMpuHavxYvdKc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    149,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzc1OTc0NCwiZXhwIjoxNjk5MzExNzQ0fQ.mh9kbk16rjnJCapNpOraCgvDZAapFwRWK98BhS-b_hY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    150,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzc2MDg2OCwiZXhwIjoxNjk5MzEyODY4fQ.uCv8685L-9Ar5kIqe8uTaxFzkzNzPK8R_wE7pzzEZ0Y'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    151,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzc2MTI4MywiZXhwIjoxNjk5MzEzMjgzfQ.GFH9Jco_ulDpZ5xBi1TTEPJFBEzaNoD506tVL6ZAZUU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    152,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzc2MTQzNiwiZXhwIjoxNjk5MzEzNDM2fQ.P-wRuK6IT79kurQL1wSs-hIfCOKgLg9dYuXR3Fd9-zA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    153,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzc2MTU1NywiZXhwIjoxNjk5MzEzNTU3fQ.9jxg53vJisaTTaB-zwyUv1zGF3y5jOrQvH08fbT4dKo'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    154,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzc2MzE4MiwiZXhwIjoxNjk5MzE1MTgyfQ.h53T6ZhE5fiN0dXqv_y1H5Kktkwr0N_o9QnOY2KauCg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    155,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzc2NDQ4MiwiZXhwIjoxNjk5MzE2NDgyfQ.cCXyxXDM2bZNyfG0ITJYOEyIxxTrc3fpnuu3DsYvJXk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    156,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzc4MDI5NiwiZXhwIjoxNjk5MzMyMjk2fQ.NqFSQ3C20RrSphewISaniBNXYKqmsz3VfdU3ftl0Z1s'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    157,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzc4MDU1NCwiZXhwIjoxNjk5MzMyNTU0fQ.jvm0YRHmCWEC0l_IKSSYW3GP8Aq5nP4E9BYDKmHysuk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    158,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzc4MDcwMCwiZXhwIjoxNjk5MzMyNzAwfQ.kQRQcbM7M7c2diz2oz68xXSaTy7q8jbdHtdUyen44Jc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    159,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzc4NDE3NCwiZXhwIjoxNjk5MzM2MTc0fQ.EbBa_tNF28kKcPuGUC6LGJlsEKWmcHIbvdI15Ci-cis'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    160,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzc5NjE4NiwiZXhwIjoxNjk5MzQ4MTg2fQ.vk8vGvrSGaC8BDIk79o0tGFQIouUEth3eEWlzr1x0Mc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    161,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzc5NjIwMiwiZXhwIjoxNjk5MzQ4MjAyfQ.ftxZMB0Z9MMashz85wjzNTFHZCPXuelLC19cP8qaV5s'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    162,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzgwMjc1MCwiZXhwIjoxNjk5MzU0NzUwfQ.zwYlpFqkaFPg_LIQGiRF3SQIzy4dPfD6ER_R3fQLXdI'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    164,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzgwMjkwNywiZXhwIjoxNjk5MzU0OTA3fQ.l3TXUy0cjOrr0Pftnz5-NPZfXFQtrh9XYMRBOCB0NLc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    167,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzgyMjA5NiwiZXhwIjoxNjk5Mzc0MDk2fQ.dk1f1x64OYtkrQbhqXojzYzt1BHNUAYUIF_kkIJ4aa4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    168,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzg0Mjk2OCwiZXhwIjoxNjk5Mzk0OTY4fQ.CcrWrM13XK4tkNFPS_7PNQBehJCMRFa3yFiYkBHkplE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    171,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzg0MzQwNiwiZXhwIjoxNjk5Mzk1NDA2fQ.ql7GQjyvpUGCGTZq64w4hGHGP8HPEVVFiaHZJPR3gRY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    173,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzg0Mzc0NSwiZXhwIjoxNjk5Mzk1NzQ1fQ.IVuHJaDAvWTDQyZ9kU0x57IWyTqqjOEMRcLGWz9F3vI'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    175,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzg0NDQ4NSwiZXhwIjoxNjk5Mzk2NDg1fQ.WKfMbM9hS26lD8S82IxeONs0JWn_EBIMuG6sFhEVKSQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    177,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzg4NzI3MywiZXhwIjoxNjk5NDM5MjczfQ.SVVk7O6jDLjtUWFpInXCdo2OdFh7B2o8l4lhi1gvX6U'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    179,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzg4NzQ0OSwiZXhwIjoxNjk5NDM5NDQ5fQ.JyZFPNYpb1cuC5ZHq4G9YQaM5oWBOt1BqCFVdIl2cek'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    181,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxNjAxNCwiZXhwIjoxNjk5NDY4MDE0fQ.t50A_0maS3WfRHKXwkWfSKXAxxF5qHkv6745bGzfxNg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    184,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxNjI4NCwiZXhwIjoxNjk5NDY4Mjg0fQ.ekSWmGrY_Dehya-t2OfXbcI1qD7KLNRVV-L2HLN4kT0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    186,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxNjM5MiwiZXhwIjoxNjk5NDY4MzkyfQ.oXFj150vMzbkknGD1SkrC1q9LMm_TiDyD1Xe6Z9FRiw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    187,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxNjUyNiwiZXhwIjoxNjk5NDY4NTI2fQ.oLqy60BFDGovPbonGCcJsK2pzqikwkqYlj0TYyPlFQ8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    190,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxNjY1MSwiZXhwIjoxNjk5NDY4NjUxfQ.ilh5erYaDfwOvmF7wjFz4QE79GHuS4KyPUruzikfY-U'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    192,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxNjkyNCwiZXhwIjoxNjk5NDY4OTI0fQ.w85ZHS_uP26yFlfKNWidMg5vZyRTBfjLaYZrq-XB1sQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    194,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxNzA2MywiZXhwIjoxNjk5NDY5MDYzfQ.RmL94dw5aXDT2uP7gjFhKBn71O3vzQvtO5IzYrYWews'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    197,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxNzE5MCwiZXhwIjoxNjk5NDY5MTkwfQ.RpCf3mXQ3yR0f-2gaHACLWDsr1tvB103bIfCbRTGzDo'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    199,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxNzMyMywiZXhwIjoxNjk5NDY5MzIzfQ.DSWYiD9vh32sVkie1liiF7OIH6JXEYSqumhTv9-wABU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    201,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxNzQwNSwiZXhwIjoxNjk5NDY5NDA1fQ.mLT140aqJliufWTnwrTN9ZA5PyYCzkGgVPbbm1q9MtM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    202,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxNzQ3MSwiZXhwIjoxNjk5NDY5NDcxfQ.YMbt0sZsDto69aaGrNRD0mD3uKjMds_nsr_9TJJUI-0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    204,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxODMzOSwiZXhwIjoxNjk5NDcwMzM5fQ.XRmTrlAzf3CzK1RnutsYE8GN0zrgU1UnyrrdqZ_OpeI'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    205,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxODQ4NiwiZXhwIjoxNjk5NDcwNDg2fQ.FAXnxmAMhNO1T1s4vZeHTBYIYsq1h-Hb8z9Mqg0ur_Y'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    208,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxODU5MCwiZXhwIjoxNjk5NDcwNTkwfQ.7JB8LaOmxCM7_b1H6O0pWrKw_VahA7BFodIrmJW5pbE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    211,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxODgwNSwiZXhwIjoxNjk5NDcwODA1fQ.33X95l1Np0TKEdOdZtFk_OQhnz9uUkvUTa97QazLw6w'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    215,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxOTE0OSwiZXhwIjoxNjk5NDcxMTQ5fQ.frk9mRdU2gT0KJY4t8z8zXmpDCTVM5jzz-srK2zRPU4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    219,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxOTQ4MywiZXhwIjoxNjk5NDcxNDgzfQ.56_zZmY-bIAqTmO305FHQnId2sAATSrlae6-vFYohGg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    221,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxOTU5MCwiZXhwIjoxNjk5NDcxNTkwfQ.IoCpmGPeRDZ3jSAMwgkInjjl0Te_DZHKs8JAsvKCKKA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    223,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkxOTcxMiwiZXhwIjoxNjk5NDcxNzEyfQ.gBGb6AZcC4VYMGh-YyFGFced3pXYvhVN_KN9MKbL_1c'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    226,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkyMDY1NywiZXhwIjoxNjk5NDcyNjU3fQ.jWatyEaYoSI_3XBO2hnxanelWmN6TpI9M29MvMgLmo0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    227,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkyMDY3NSwiZXhwIjoxNjk5NDcyNjc1fQ.sizRfHa9Rmo5fRwHdUuoZjXbJaT8zuUwzoZ1nd_v2Uk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    231,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkyMDg2MywiZXhwIjoxNjk5NDcyODYzfQ.j1qzP2yzls8MvSuc3V6lwgUAi5DCTL71bLjjUkdST8A'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    233,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkyMDkwNywiZXhwIjoxNjk5NDcyOTA3fQ.2RfJIZVCMExQ8LpXdhUdYkO2zo_xn1UmOy684IhdWE8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    236,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkyMTExNSwiZXhwIjoxNjk5NDczMTE1fQ.H0LTmeFoLm5td2kxojqCAoRP1WiiQDGX8i5dv7xPzNA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    239,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkyMTg3MCwiZXhwIjoxNjk5NDczODcwfQ.FdT7P53_0R0jcMued-mgZVZhwASaYwy8htaCxQYaWUQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    241,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkyMzAzOCwiZXhwIjoxNjk5NDc1MDM4fQ.9_V13QfxQd2yULby0h2sWeEaLno_60DMrxArA-fqZE0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    245,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkyMzU3MCwiZXhwIjoxNjk5NDc1NTcwfQ.8e5xrPO5ENO5e4a-eJXhtUIc9r9_uk39rldPY56_4nw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    247,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkyMzYzMSwiZXhwIjoxNjk5NDc1NjMxfQ.yB7-RhWeN4s90eg4vEyqOrGbfw6OcwASuls-8S3TYLc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    254,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkyMzg1NiwiZXhwIjoxNjk5NDc1ODU2fQ.2g_TfIJCN391D4qtjVSaV6AmNg0W7SlV52S-xv6y9BY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    255,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkyNTI1MSwiZXhwIjoxNjk5NDc3MjUxfQ.MRwgOVEzca-AaC9lM8A_hB5Clx7zG9dbVPH0iDpy228'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    256,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkyODgyMywiZXhwIjoxNjk5NDgwODIzfQ.k-ZmE0pfjvNPEoTN4c09dJinSfDn8Q0o59OZdJuxkBw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    260,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkyOTM0MiwiZXhwIjoxNjk5NDgxMzQyfQ.MpLPCmy5Y9fOi9WccBNJVs_N79ErFNFfseT3L0S-lNY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    262,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4MzkyOTU4MiwiZXhwIjoxNjk5NDgxNTgyfQ.GIxfCmFfLc7ja1Iv_oVb0THRfKOVX2FfS5jma6VAVYA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    271,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzk3MzY5NiwiZXhwIjoxNjk5NTI1Njk2fQ.sa2KOsUUMkN8C8zhic6-Kbak5ndrBjL1oLYoll2B_zY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    272,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzk5MjU2NywiZXhwIjoxNjk5NTQ0NTY3fQ.kE188cNIw0qQ_zxn7rLy0MFsFftS4vbzg1uPssuIGTs'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    273,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzk5MjgzMywiZXhwIjoxNjk5NTQ0ODMzfQ.O83umpyEmHGDNOITtCbz7MpN4p4YdI33J2WI22XCOsY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    274,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Mzk5Nzg0OSwiZXhwIjoxNjk5NTQ5ODQ5fQ.lF8KlKWsd7rsZILbbdC8pwN6vWq7_1M9iOLL1NsRLpw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    275,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDAwMDYyMiwiZXhwIjoxNjk5NTUyNjIyfQ.GHae73oTyL5pbbloLDk5b-oauuyOQHQ2D6eMgqJhkKs'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    276,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDAwMDg3MywiZXhwIjoxNjk5NTUyODczfQ.95U_Vjm4ujy11gXKGJ3itBB0Pp5VjTd38ZMlmVyN2V8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    278,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDAwMTkwMSwiZXhwIjoxNjk5NTUzOTAxfQ.XabpGh_D-6CzP9CPbe66DCc9WzXjjZ825GhzAOXgzCU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    279,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDAwMTkzMCwiZXhwIjoxNjk5NTUzOTMwfQ.XTbDsDlVYgFojbhxom5EbRL1oYlep7RNBNsLVjhHDmE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    280,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDAwMzcwOSwiZXhwIjoxNjk5NTU1NzA5fQ.KbTTLEpOAJX9guXsOKKTQunHaOziXzQWz2Vlw2p5tJM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    281,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDAxNTk3OSwiZXhwIjoxNjk5NTY3OTc5fQ.dWb1wYnYz7HbBT2mc-nUB5zIukFZpSzNdGKz_v2DWt0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    282,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDAxNjA2OSwiZXhwIjoxNjk5NTY4MDY5fQ.fubDGpiOI9mLlxgtDlSc5fet8LcYp3lttfnuvN9qmKk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    283,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDA5MDc4OSwiZXhwIjoxNjk5NjQyNzg5fQ.M77GduwY735ACno0nR_RtDIeyi8cfn2wPnIV13LQO0Q'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    284,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDA5NzAwNiwiZXhwIjoxNjk5NjQ5MDA2fQ.0bSmsVx1XUPKjYNJniEffp-zX4bkfjgvy4oDRBm8gGA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    285,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDEwMjE1MywiZXhwIjoxNjk5NjU0MTUzfQ.pSFoONomKR_YvqyAoUZMWB13-98v7_ntAqk6v6yFoO8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    286,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDEyNjMxNiwiZXhwIjoxNjk5Njc4MzE2fQ.mNPPWkwRBp42ozLCgUzOT_Z5GyCsv81aHlnYfoGZXZk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    287,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDE1ODI0OCwiZXhwIjoxNjk5NzEwMjQ4fQ.HQ8Yt73RwcGm7FnHTrmgKOvTSmx9lUCw1_zLtgiG-EU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    288,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDE3ODg0NCwiZXhwIjoxNjk5NzMwODQ0fQ.DC_ppS73zx3G5RJCATLyEZRMXcnAvjBJ88ISaKsF7F0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    289,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDQyOTcxMCwiZXhwIjoxNjk5OTgxNzEwfQ.o_mWV1IIGqhNltE5r4PjU0wuzyfkexKDxmdIdn1pZM4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    290,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDUwNTA1OCwiZXhwIjoxNzAwMDU3MDU4fQ.hqSX4pnTdT-WiaIL6zMiTtR9Z10_hgsYqvazitbT3Aw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    291,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDUxNjk1MCwiZXhwIjoxNzAwMDY4OTUwfQ.wjeH-vGJ6vmTLD9Vy7--7vJz9-k_82RmMAVGZ7gJNaw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    292,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDYxNDAzOSwiZXhwIjoxNzAwMTY2MDM5fQ.svqlchEkpXoMeu8oF2Ai7zxCWGBV3i18LsfGM5tNGsM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    293,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDY5NTI0MCwiZXhwIjoxNzAwMjQ3MjQwfQ.8S1AjorwXHIPmOYDQvKNetwJGIkdLS3TEx29Lh3lsHI'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    294,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDY5ODkxNCwiZXhwIjoxNzAwMjUwOTE0fQ.aWWqgTGom4fho83IkzMdtRxFOrVWUXHp5KP9Qof3VbA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    295,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDcwMDgwNSwiZXhwIjoxNzAwMjUyODA1fQ.tBjjhVkYE0rAAdJB6isPjK3FkfrundwPNGn8t3_k4V8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    296,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDcwMjY2NSwiZXhwIjoxNzAwMjU0NjY1fQ.ZrKieEi-VainbDOl40R3yFz_ADo_39DLtzY20CMu_sw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    297,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDc0MzA5NSwiZXhwIjoxNzAwMjk1MDk1fQ.9M3If8DZGvLgHUS9BB9gacz2-WxU9GbO4fdo1Ca8NpY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    298,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDc1NDg3MSwiZXhwIjoxNzAwMzA2ODcxfQ.Gn3cQMym4qdkgtp3mZ9njTAArbTzI3iwnr3iwtZMWBs'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    299,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDc4MzcxNiwiZXhwIjoxNzAwMzM1NzE2fQ.A_t-CCRKMsMKXP0nn9G_SQmJ4PqvsOBpjnmeAYXE49U'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    300,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDc5NjQ5NCwiZXhwIjoxNzAwMzQ4NDk0fQ.blt8G0iGG5N4e9ZS2Kjwat8vgoes_cT7siKieKrvWYw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    301,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDg0NTE2OCwiZXhwIjoxNzAwMzk3MTY4fQ.oGwP3ev13SxAN-vWuwtS-EGM7-C0PUDf4NWPfu7STWo'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    302,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NDg1NzQwNSwiZXhwIjoxNzAwNDA5NDA1fQ.AjJyluZlGSmfDVlal6KQnTTSTStjTBIwNYzdq30UV-w'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    303,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTAzOTM4NSwiZXhwIjoxNzAwNTkxMzg1fQ.jvfKPEXkmBKGnKbKDfRlaxjvu2skNNMWA4R44WtBEyQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    304,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTA1MTYyNiwiZXhwIjoxNzAwNjAzNjI2fQ.1YL9mMEjHlRbdIsg-TnN5fF5eJ_irucrkoVDfypPw6Q'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    305,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTA1MjEwMywiZXhwIjoxNzAwNjA0MTAzfQ.bWGKxdXn2L9sTCqZEAie6cU7zuTqd68Fb8Dk5gUDS6I'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    306,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTA4MDAyMSwiZXhwIjoxNzAwNjMyMDIxfQ.LVJlpEqsNZeu13P4HsLVebFl9ea_dyfKgnniny0iMOE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    307,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTA4MDgwMywiZXhwIjoxNzAwNjMyODAzfQ.dwqb6wIXKvCB7sG6vvEs8-mpmqYL9Jce02lpEWT26xw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    308,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTA4MDk4MCwiZXhwIjoxNzAwNjMyOTgwfQ.OvHrwzCWXWif7g1mVzeAMBEHLWIQzQBFzLXDgAedEpk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    309,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTA5MDQ0MCwiZXhwIjoxNzAwNjQyNDQwfQ.bGD-0tXXx38be2yrbzuT2tstT_m1kQg1VSXsJs19p0s'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    310,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTE0MzUxMywiZXhwIjoxNzAwNjk1NTEzfQ.gXCQSGK0OvDO2XTNWlIzG51tCxk62kRF7Bid5aSwX0A'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    311,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTE0NTYxNSwiZXhwIjoxNzAwNjk3NjE1fQ.lcm0qkMnP7MrybJeBQM5LI39YJMQk7ynyvu3OumN2KE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    312,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTE0OTAzMiwiZXhwIjoxNzAwNzAxMDMyfQ.sFY4tJmT3P1-rHHQInUmiutJsoNEsIw_JOSy_5Olx-g'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    313,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTIyNDM2MywiZXhwIjoxNzAwNzc2MzYzfQ.XycRPeO93wcWfnJUXr_Ul_dY9yZCQR5tpfy3xI0JPnQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    314,
    79,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzksImRlcGFydG1lbnQiOiLYp9mE2LTYqNmD2KfYqiIsInR5cGUiOiJzdXBlcnZpc29yIiwiaWF0IjoxNjg1MjI0OTA4LCJleHAiOjE3MDA3NzY5MDh9.ZxjGOuWW7owqWaHy8d7Z4Thblw9BUF10MUyaOLyEG48'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    315,
    79,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzksImRlcGFydG1lbnQiOiLYp9mE2LTYqNmD2KfYqiIsInR5cGUiOiJzdXBlcnZpc29yIiwiZW1haWwiOiJheWFkX2FsZXp6aUB1b21vc3VsLmVkdS5pcSIsImlhdCI6MTY4NTI2MjYxNCwiZXhwIjoxNzAwODE0NjE0fQ.K1Oz-l61StZDgPS3k0joG07D-KAtjReV99Sd-wR-UhY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    316,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTI2MzQyMywiZXhwIjoxNzAwODE1NDIzfQ.9CWyWdClJM5tcShl3NgSpA98Y-VTggYVS5DfAF-VN2c'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    317,
    79,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzksImRlcGFydG1lbnQiOiLYp9mE2LTYqNmD2KfYqiIsInR5cGUiOiJzdXBlcnZpc29yIiwiZW1haWwiOiJheWFkX2FsZXp6aUB1b21vc3VsLmVkdS5pcSIsImlhdCI6MTY4NTI2NDEzOCwiZXhwIjoxNzAwODE2MTM4fQ.gw5mHWNZUrsCdPm9yVBllfdTFKIw4gHMxVLun6QRP58'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    319,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTMwMDM1NiwiZXhwIjoxNzAwODUyMzU2fQ.pU8rclRAodWU1BLGiByKSi10C_iaDL11aMypHYAogJU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    321,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTMwNDk5OSwiZXhwIjoxNzAwODU2OTk5fQ.5uetcqjdmjZH9bY_XEP9tnkcDhrj4pnM-kE0Dbza0zU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    322,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTMwOTAyOCwiZXhwIjoxNzAwODYxMDI4fQ.FaXWum1U4-NTaMrNbt1KoS6tHgIAqWXevVIMDjZYSAg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    324,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTMwOTM0MywiZXhwIjoxNzAwODYxMzQzfQ.RhpL-sgQBmJbQrafg8m7KfDsvDAi-VixKrLN09eqaPc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    326,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTMwOTQ3MywiZXhwIjoxNzAwODYxNDczfQ.14Dl3BcW173wzM3WjMT9Rx39KhKdIJaF3Kg4xdq3Zk4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    327,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTMwOTQ4NSwiZXhwIjoxNzAwODYxNDg1fQ.glgnMRYIvr2gvSVZWHuMpObJlmVesDNP9-r9ybmp9vI'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    330,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTMwOTU3MCwiZXhwIjoxNzAwODYxNTcwfQ.rbucforxJVxfSYU_d1plBe3kWPzvn06p7H9L27cFhp0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    331,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTMwOTYyNiwiZXhwIjoxNzAwODYxNjI2fQ.6m8tylRo3By5Snb96zrhYwYILmVdwFjF-Sk-qWrqmsc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    335,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTMxMDA3OCwiZXhwIjoxNzAwODYyMDc4fQ.hSnxiZZ8TVAZMqoz_FA-I2fOwIuaCtMXzQYa_qX7U2Q'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    336,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTM4MTk5MiwiZXhwIjoxNzAwOTMzOTkyfQ.Fk9b59-BkS5CkFLlFfdFHdnEauJ75ZUDRmYPSCV23g8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    337,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTM4NTc2NiwiZXhwIjoxNzAwOTM3NzY2fQ.83Y-wedqeNn8DIxUzyJenj_wmFtepUR34nl-aPT4iTk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    338,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTM4ODYyNiwiZXhwIjoxNzAwOTQwNjI2fQ.63odJjIOEEoBVXkbuSU6SI-R78W0hqrd9TWuzfYnzA4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    339,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTM5MjcxNiwiZXhwIjoxNzAwOTQ0NzE2fQ.67ks58HQkqj4qvkTIdW37dBpBh_mfQO-qsrUNney0Hc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    342,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTM5NTkyMiwiZXhwIjoxNzAwOTQ3OTIyfQ.bGDmpdsP0CJqC8v7iX_ik_H1TZ_2ttNQRsvCVPUSsI8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    346,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTQ3NDIzMiwiZXhwIjoxNzAxMDI2MjMyfQ.4paQzYIoAZ0yLn_6JENuMNGB78vF1kZdHofLm2ImJ_g'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    349,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTUyNjU5NSwiZXhwIjoxNzAxMDc4NTk1fQ.yNbSMyVOwNW9zSqJ4OoEgvcF2vNqrltUlzqDrDEqtZg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    369,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTgyNzAxNiwiZXhwIjoxNzAxMzc5MDE2fQ.dlBYMYSb6rZcZJQZFCraMVsEugyJyKVmhsmsSMJAvQU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    372,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NTkxNDMwNCwiZXhwIjoxNzAxNDY2MzA0fQ.8pqa8Zb1mof4edclt4sLUJ_HO5cXaoBdyxb4Lp0lDEw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    377,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NjA3ODgzMCwiZXhwIjoxNzAxNjMwODMwfQ.q9-J-gfBOcm7mYbQl1Vg2cpr7RhKEyBlJtgJlQqsf44'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    382,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NjMwOTE5MCwiZXhwIjoxNzAxODYxMTkwfQ.UfxEGUvBrh7biL6a5Wex4eQdKWnAi7qtNCU9yQ0QDJ4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    385,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NjM5NzEwMywiZXhwIjoxNzAxOTQ5MTAzfQ.A2lPua1bEsqQPPo41eG-KGd1EjFEc9Os1EoErx3dTUQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    387,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NjY4NTE3MywiZXhwIjoxNzAyMjM3MTczfQ.RyBU4wTrs6_byFZfeSZjatg2CtUX1DP0EXJ_1PPzwsY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    388,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NjcyMzczOSwiZXhwIjoxNzAyMjc1NzM5fQ.51BR9lnqJlnYjP_2FmO46Mx9x-dZwIvqT1w4Dtt0PX4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    391,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NjkzNzg1OCwiZXhwIjoxNzAyNDg5ODU4fQ.x8NCNjo-YdeuR7x6VZVQrKYiD3xIbQ3zs_PAvGdakT4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    392,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzA3MjExNiwiZXhwIjoxNzAyNjI0MTE2fQ.6BXbi_86YJmUyFcBiG8bDaBrZDrrOXxcYpvZUln6RwM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    393,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzA3MzE0MSwiZXhwIjoxNzAyNjI1MTQxfQ.7eCA8gV-H_TkgrP3wJQ-efmddjm9lTeX3sDFXnbQl_g'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    394,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzE4NjY1MiwiZXhwIjoxNzAyNzM4NjUyfQ.udwE-ccdnN7YTotrJalpuvn_z-tulZiwtFMe0RWozRU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    398,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzU0MzE1NiwiZXhwIjoxNzAzMDk1MTU2fQ.nLSiXwXHVR4QYY0NCSVdDLIhWthEtsXdpbwux2B2taQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    400,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzU0NDM3NywiZXhwIjoxNzAzMDk2Mzc3fQ.oq-FyoBt4731UZ66FYKPGBA833iAt3EAa76TzmIlr3Q'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    401,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzU0NTM5NywiZXhwIjoxNzAzMDk3Mzk3fQ.obkUqdbQrEFz95Yt4JZywfNUCF3iVos6vs0ody5Fom4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    405,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzU1ODYwMywiZXhwIjoxNzAzMTEwNjAzfQ.-sTZQ45-KWkd46-GoW1_OxxLsBJwhgdtkGlZwmRVEgk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    406,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzU1OTU3OSwiZXhwIjoxNzAzMTExNTc5fQ.P-OoqSacNEI692nd1BQRrVYyd9L22rkls-0tt8i5q8Y'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    407,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzU1OTc0NCwiZXhwIjoxNzAzMTExNzQ0fQ.ghnF6C0i3VSsL_PCDJcyH4gAH4yICCvPsG9mwQgHeuc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    408,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzU4NjY4NSwiZXhwIjoxNzAzMTM4Njg1fQ.EyAH0XRaR8pAhTi_m4lmi28mVQAU6dKpYdk8LIN1cWI'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    409,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzYxMzQyMCwiZXhwIjoxNzAzMTY1NDIwfQ.W8TlRIOV2xoK-KfBoPnSHWWVhPHJXFn2YsSDaQjkRR0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    410,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzYxNDc4OSwiZXhwIjoxNzAzMTY2Nzg5fQ.dgMHVPp-XhYDGzv7ZNNAOoJbChZ-quROdXqCnQw8e0M'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    411,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzYxNDk3MCwiZXhwIjoxNzAzMTY2OTcwfQ.yAVlh50c9I27H0HhHjcM4QWUSOe8bA9RbwZHla2sHGU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    412,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzYxNTU0NSwiZXhwIjoxNzAzMTY3NTQ1fQ.IO1z1DwlWIZukl-qOZPHDFhaQ3Jg_VGcfIlMYmYBo8A'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    413,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzYxNTk0NiwiZXhwIjoxNzAzMTY3OTQ2fQ.vSOJjhEtad_P1hchkzLcIqSfW_F_wk_uUeDi5h7WEQM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    414,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzYxNjA2MiwiZXhwIjoxNzAzMTY4MDYyfQ.Wenix7st_AR_PdqN5qlW6a0cUTDAFcZeQuQ2LTD1z20'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    415,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzYxNzI3MSwiZXhwIjoxNzAzMTY5MjcxfQ.NS3MIbahVwWtGeAXdhziLd9CXsBFTVXjhKvPKDLL120'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    416,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4NzY0NTU3NSwiZXhwIjoxNzAzMTk3NTc1fQ._pvlA49WtK2f33H7KRBe23eRoE1quJKYWtFweHoCFBg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    417,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4Nzg2MDc1OSwiZXhwIjoxNzAzNDEyNzU5fQ.DB-A1zwaMCFgIuq6QOnIRhphfKGasSbhA9W-FAbi7z0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    418,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODExMjk5MywiZXhwIjoxNzAzNjY0OTkzfQ.K-4fdDCEF5FiArLWu119uoENZ-7WQa1nCT6Gz4R-7Xs'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    419,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODExMzAwNywiZXhwIjoxNzAzNjY1MDA3fQ.Yk-kewtD4dgKsPmJe4Lmw-DuMBmy-DvGSkJ23P_fjOE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    420,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODExMzgxNiwiZXhwIjoxNzAzNjY1ODE2fQ.mfTAdRer9P6X5kFDAKLRZO0HUoj8Y7Rbf9S3MslRXpo'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    421,
    98,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OTgsImRlcGFydG1lbnQiOiLYudmE2YjZhSDYp9mE2K3Yp9iz2YjYqCIsInR5cGUiOiJ1c2VyIiwiaWF0IjoxNjg4MTE0MDIwLCJleHAiOjE3MDM2NjYwMjB9.4Qus5FM6HDSIEItY_a1p4z-YdvQpbe8glCnlY15jnr8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    422,
    98,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OTgsImRlcGFydG1lbnQiOiLYudmE2YjZhSDYp9mE2K3Yp9iz2YjYqCIsInR5cGUiOiJ1c2VyIiwiZW1haWwiOiJhaG1lZGFsaWFsc2FtbWFuQHVvbW9zdWwuZWR1LmlxIiwiaWF0IjoxNjg4MTE0MTU2LCJleHAiOjE3MDM2NjYxNTZ9.LXHR_SnxY7-dk2FfiXrLN4ajrNeG5umCvFyquUeVsh8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    423,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODExNDMxMSwiZXhwIjoxNzAzNjY2MzExfQ.SnftsPra5nas18mCvYdNJKcv6Zxcb6tu28FXP9mDrzk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    424,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODExNTk5MSwiZXhwIjoxNzAzNjY3OTkxfQ.bh-57GVf7q_XS-zcjRO1714oKD5FPET-E2y1YkaeSBU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    425,
    132,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTMyLCJkZXBhcnRtZW50Ijoi2KjYrdmI2Ksg2KfZhNi52YXZhNmK2KfYqiDZiNin2YTYqtmC2YbZitin2Kog2KfZhNiw2YPYp9im2YrYqSIsInR5cGUiOiJ1c2VyIiwiaWF0IjoxNjg4MTE4MzIyLCJleHAiOjE3MDM2NzAzMjJ9.uCF2A0rMQ464r_SGAzggXpi5Cm6TfkFKEFn6vJ1jd3M'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    426,
    112,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTEyLCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4ODEyNzQ5MywiZXhwIjoxNzAzNjc5NDkzfQ.6aMsjFBjAypG2Kz3cuZu51xazIgZpA8OEMPT6vtL6xU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    427,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODEyODM0MSwiZXhwIjoxNzAzNjgwMzQxfQ.FUHmiRlB8Mt3-WUwswpqMXs43_kvQS-S_TKlgWQmItA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    428,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODEyOTEzMSwiZXhwIjoxNzAzNjgxMTMxfQ.l0qeVNrprx6SOErC7FdLwMpdtw2YcmcnPXUEWI5LYt0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    430,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODEyOTI1NCwiZXhwIjoxNzAzNjgxMjU0fQ.cWaKbfP_hXpbWXtxjn5U0Doeencumv7LZY9fdcFegNA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    432,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODEyOTQ1NSwiZXhwIjoxNzAzNjgxNDU1fQ.u7GZXBnIvA2MfkRpJWw9PCuW5vSCSPf1YnV7Ska-H5c'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    434,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODEzNzYwNywiZXhwIjoxNzAzNjg5NjA3fQ.YLLxslY2G8SZMwQwDHFChSBW6cYR9IkCKxwcmDYuPoE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    436,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODEzODUyNywiZXhwIjoxNzAzNjkwNTI3fQ.11MkrNk-MUsGgOVbiQiDc0v3SjuIk2CzTsiSv3fuEi4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    437,
    164,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTY0LCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoic3VwZXJ2aXNvciIsImlhdCI6MTY4ODEzOTc0OCwiZXhwIjoxNzAzNjkxNzQ4fQ.TxgB2megUaWpVwMnV0mtdDPtPlmuspV8NTFtNUZLN2w'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    438,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODE0NTk0NywiZXhwIjoxNzAzNjk3OTQ3fQ.nSCrOnqPAuyzFTSkRFhJ7PucI_hUZf-GUWfkvRsTAQo'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    439,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODE0NzM3NSwiZXhwIjoxNzAzNjk5Mzc1fQ.bPEM-bqKDy6YDz8j2y_Gbgm0VfLLUguGUZgt2kApDYA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    440,
    212,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjEyLCJkZXBhcnRtZW50Ijoi2KjYrdmI2Ksg2KfZhNi52YXZhNmK2KfYqiDZiNin2YTYqtmC2YbZitin2Kog2KfZhNiw2YPYp9im2YrYqSIsInR5cGUiOiJ1c2VyIiwiaWF0IjoxNjg4MTQ4OTY3LCJleHAiOjE3MDM3MDA5Njd9.GoC6QNS8M7dzlt5BFqaj0_T098Y--x_O4r1CBcb9x-8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    441,
    105,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTA1LCJkZXBhcnRtZW50Ijoi2KfZhNi02KjZg9in2KoiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4ODE1NDYyMywiZXhwIjoxNzAzNzA2NjIzfQ.unuUS0n-AvxUjvRhGOV6HCLlZ-jy-QkCJu2CAK9lNto'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    442,
    100,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTAwLCJkZXBhcnRtZW50Ijoi2KjYrdmI2Ksg2KfZhNi52YXZhNmK2KfYqiDZiNin2YTYqtmC2YbZitin2Kog2KfZhNiw2YPYp9im2YrYqSIsInR5cGUiOiJ1c2VyIiwiaWF0IjoxNjg4MTYxMDE4LCJleHAiOjE3MDM3MTMwMTh9.SAOnWHngq6RyOe9ZcXfn_BZ7PYaIJa42gVggbDpNu-k'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    443,
    148,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTQ4LCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4ODE2MjY5OSwiZXhwIjoxNzAzNzE0Njk5fQ.vXmrSczzz-IWUz3EtPCbzkoMOumQVRTCyuB4ohNFLzg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    444,
    148,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTQ4LCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImVtYWlsIjoiYW1lcmFfaXN0aXFsYWxAdW9tb3N1bC5lZHUuaXEiLCJpYXQiOjE2ODgxNjI3NTksImV4cCI6MTcwMzcxNDc1OX0.yU5jTvMGFbtZzM0Tp0_lrYvbAsZozAjtsmwJLmscULU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    445,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODE2NjYzMCwiZXhwIjoxNzAzNzE4NjMwfQ.1X-E0WExE9CsTOQBvVlOC3sa0HTvcpetqeBiUsVXc6k'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    446,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODE2Njc3NCwiZXhwIjoxNzAzNzE4Nzc0fQ.Y4WfeN7Q-7M46ON_Q-AHDsa_4dJ3AMSTK7dZ1EWLtmE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    448,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODE2Njg3NSwiZXhwIjoxNzAzNzE4ODc1fQ.vDQ9H_wcy2l95_vS1uMoPttq8FFU9Qw5jtVfB0chG2E'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    449,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODE3MTI1MywiZXhwIjoxNzAzNzIzMjUzfQ.rJ5vW7eEC99vbZJzFHt0wqLvFiNyuwIXDIlbzwViSVo'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    450,
    209,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjA5LCJkZXBhcnRtZW50Ijoi2KjYrdmI2Ksg2KfZhNi52YXZhNmK2KfYqiDZiNin2YTYqtmC2YbZitin2Kog2KfZhNiw2YPYp9im2YrYqSIsInR5cGUiOiJ1c2VyIiwiaWF0IjoxNjg4MjAwMTIwLCJleHAiOjE3MDM3NTIxMjB9.3uq_avy5-U2TwVpPRcklsiHrpG9hHqlC83caNtnfGfU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    451,
    176,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTc2LCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4ODIwMjc5NCwiZXhwIjoxNzAzNzU0Nzk0fQ.fOXC7DbZaxlaraOXNNdhoiJn9JgCPs8fkkd_n1zyCOk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    452,
    211,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjExLCJkZXBhcnRtZW50Ijoi2KjYrdmI2Ksg2KfZhNi52YXZhNmK2KfYqiDZiNin2YTYqtmC2YbZitin2Kog2KfZhNiw2YPYp9im2YrYqSIsInR5cGUiOiJ1c2VyIiwiaWF0IjoxNjg4MjA3ODA1LCJleHAiOjE3MDM3NTk4MDV9.LEPIRS65bIeDzyb_dq8xN4hyIRym6v0oeX-rVyfJ9X4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    453,
    177,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTc3LCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4ODI0NjAwNiwiZXhwIjoxNzAzNzk4MDA2fQ.cv4CYA8XeEXvWeSq2dxP8D-nSl3uBqri_qoCbfPNuO8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    454,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODI1MDQ3MCwiZXhwIjoxNzAzODAyNDcwfQ.7qMj261O3eKhrM-1lcrTsEYQL-6UjnQmr_gMNCQxYY0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    455,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODI1MDU4OSwiZXhwIjoxNzAzODAyNTg5fQ.fQTGawW_vERfyqAz-CBd6z2PTsNY1HbREh5gxAXBO_A'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    456,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODMyNDUxMSwiZXhwIjoxNzAzODc2NTExfQ.i3r0rJyfioczphU2ITnStS-PdVpnTUih-l-os0zjQ04'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    457,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODMyNDcwMCwiZXhwIjoxNzAzODc2NzAwfQ.xY8UmkJ95lKbhDMoM1KVbCGlVKEvA6fE9pCYuT3hABE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    458,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODMyOTY3NywiZXhwIjoxNzAzODgxNjc3fQ.d07P8f5Zb_DBXVYcrL65kXU907QwkD6e7WyidPaQmcM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    459,
    231,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMxLCJkZXBhcnRtZW50Ijoi2YfZhtiv2LPYqSDYp9mE2KjYsdmF2KzZitin2KoiLCJ0eXBlIjoic3VwZXJ2aXNvciIsImlhdCI6MTY4ODMzNDg5NiwiZXhwIjoxNzAzODg2ODk2fQ.yTuhcpFXvVOVx5tvCCV6STiEDnzqo5TQsBR8kCbe82I'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    460,
    231,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMxLCJkZXBhcnRtZW50Ijoi2YfZhtiv2LPYqSDYp9mE2KjYsdmF2KzZitin2KoiLCJ0eXBlIjoic3VwZXJ2aXNvciIsImVtYWlsIjoibmFrdGFsLmVkYW5AdW9tb3N1bC5lZHUuaXEiLCJpYXQiOjE2ODgzMzQ5MjEsImV4cCI6MTcwMzg4NjkyMX0.TnC2JKtdEbiTZfna-YHu0R3K6SoAuizvfVGMxltR8oY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    461,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODMzNTI1MywiZXhwIjoxNzAzODg3MjUzfQ.Jok9nlHZ4bMW2yA05awmOEMEQk1ye3TaZPhtjDyP-0s'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    462,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODM2MzcyNywiZXhwIjoxNzAzOTE1NzI3fQ.IrV9KB5o4cX1eP4bu_KuFuLTv5F8vGwmSViQxls5174'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    463,
    131,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTMxLCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4ODM3MTAwOCwiZXhwIjoxNzAzOTIzMDA4fQ.wAC16CaKYrDnooOqpJiiQ19ks-64dk8t-W-E9VZOBrY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    464,
    110,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTEwLCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4ODM3MTMzMywiZXhwIjoxNzAzOTIzMzMzfQ.RnaVoSrUPEZKLhnsVWAofxLqsGw8t9t7ieffHUcC4tw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    465,
    178,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTc4LCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4ODM5ODAwMSwiZXhwIjoxNzAzOTUwMDAxfQ.Fup6VGvoMEL4Ygv26HidKqzHii5VhEajGfJT-tbC0cM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    466,
    176,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTc2LCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImVtYWlsIjoieWFzZXIuYWxpQHVvbW9zdWwuZWR1LmlxIiwiaWF0IjoxNjg4NDE4OTU5LCJleHAiOjE3MDM5NzA5NTl9.8KbDVoi7OyouzNuwy5RNvU8mdlrzIpp3KXP3pHE6mow'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    467,
    149,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTQ5LCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4ODQyMDU5NywiZXhwIjoxNzAzOTcyNTk3fQ.Hw6szyLo9ScCtDRRZQpP6vth3fNkjYdWGMY8IStUQaQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    468,
    183,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTgzLCJkZXBhcnRtZW50Ijoi2KfZhNil2K3Ytdin2KEg2YjYp9mE2YXYudmE2YjZhdin2KrZitipIiwidHlwZSI6InN1cGVydmlzb3IiLCJpYXQiOjE2ODg0NjU1ODUsImV4cCI6MTcwNDAxNzU4NX0.f4L61Js7ilDmPW668RpRlheEF2ezdsmIAt3ZdbKp60Q'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    469,
    134,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTM0LCJkZXBhcnRtZW50Ijoi2KfZhNil2K3Ytdin2KEg2YjYp9mE2YXYudmE2YjZhdin2KrZitipIiwidHlwZSI6InVzZXIiLCJpYXQiOjE2ODg0NjY1MTQsImV4cCI6MTcwNDAxODUxNH0.TLhuj2PCBlaKeZ3yq9SEw0ncOqZSwJAu7g5v9VvYjH4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    470,
    183,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTgzLCJkZXBhcnRtZW50Ijoi2KfZhNil2K3Ytdin2KEg2YjYp9mE2YXYudmE2YjZhdin2KrZitipIiwidHlwZSI6InN1cGVydmlzb3IiLCJlbWFpbCI6Im11dGhhbm5hLnN1bGFpbWFuQHVvbW9zdWwuZWR1LmlxIiwiaWF0IjoxNjg4NDg0NDcyLCJleHAiOjE3MDQwMzY0NzJ9._3PIfiSCHPcKppk-JeMRPbtsHoguJPjoDq4RmFq6aP8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    471,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODUxMjE0OCwiZXhwIjoxNzA0MDY0MTQ4fQ.14mVoIlwy8q0TcLvJKeFwDJPhiphOmOrEiawMKvfAK8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    472,
    321,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzIxLCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4ODU2MzkwOCwiZXhwIjoxNzA0MTE1OTA4fQ._4adFo-UyM2GCyzz_pQ_iQUjk0pel1gJpZL5mwWm6lY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    473,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODY2NDIzMywiZXhwIjoxNzA0MjE2MjMzfQ.3nYFMO9JIcxcWf3Jz1LxmYu9je9kPjAhN03B2WyM-UQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    474,
    124,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTI0LCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4ODY2NDg3NSwiZXhwIjoxNzA0MjE2ODc1fQ.YAGYB5PA1dxmAVDx-nUcU73E2hKCoGy1-_conwEQnMA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    475,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODcxOTk1MywiZXhwIjoxNzA0MjcxOTUzfQ.THByst0zGHMibePWN4M6Xr2xtKgAponl1eoaNtv2ug0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    476,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODcyNzAyOCwiZXhwIjoxNzA0Mjc5MDI4fQ.GJ-7K0WO-FINLX-mncuezUA0T2itMcHoh-x0cSV33qY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    477,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODc0MDA1MiwiZXhwIjoxNzA0MjkyMDUyfQ.oDdkbec2rX9duPmbzHz_G_OY6Uve1ZRq6yyavbNCeTw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    478,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODc0NjgzNCwiZXhwIjoxNzA0Mjk4ODM0fQ.rf-gGX0Jeyuw5DcfXBQKp_gsV26DdFgU3QzZHddugrg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    479,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODc1NTUwOCwiZXhwIjoxNzA0MzA3NTA4fQ.ychHBs79k157nqpVvOHrYkZQbsBjVwoAqMo8KgAOmk4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    480,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODc2MTMyNywiZXhwIjoxNzA0MzEzMzI3fQ.eEB9VHetQTXNqrJnjCfyXO6Qy3PvQdYRtwnBiHg-Dtg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    481,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODc2NTA3MCwiZXhwIjoxNzA0MzE3MDcwfQ.MEro_Xek6AMdZL8s3YBlx1Nx0WpBl7DiNMHg5HnjRfA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    482,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODgwMzA1OSwiZXhwIjoxNzA0MzU1MDU5fQ.6q2iU1WeqLOC-yp6SOUfJD_7oBbRjbBrYiV5U9qNPXw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    483,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODgwNTQ3NywiZXhwIjoxNzA0MzU3NDc3fQ.4ZP299J1UFFl5UKT25_TN1ycimF6vBhpnIjFfr91ODM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    484,
    232,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMyLCJkZXBhcnRtZW50Ijoi2YfZhtiv2LPYqSDYp9mE2KjYsdmF2KzZitin2KoiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4ODgwNzU3MiwiZXhwIjoxNzA0MzU5NTcyfQ.5ijyODaJlOKrPijDjYfwZWo9HZ94lwLDYz3D7ccjDYQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    485,
    232,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjMyLCJkZXBhcnRtZW50Ijoi2YfZhtiv2LPYqSDYp9mE2KjYsdmF2KzZitin2KoiLCJ0eXBlIjoidXNlciIsImVtYWlsIjoieWFzaXJta0B1b21vc3VsLmVkdS5pcSIsImlhdCI6MTY4ODgwNzU5MiwiZXhwIjoxNzA0MzU5NTkyfQ.lu5wJxA9e-KsqkN4anMoTVoeTrcS-UsllBuY0_OrfQI'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    486,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODgxMjY5NywiZXhwIjoxNzA0MzY0Njk3fQ._arF03oPBQr-_E1WeA5VaGj9mqzbvFbBg3GtNkBNALc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    487,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODgyMTY4MSwiZXhwIjoxNzA0MzczNjgxfQ.kMVUP8pYxuAYdnmEi198zjFHoq8vUKAot24fcl4c9z8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    488,
    316,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzE2LCJkZXBhcnRtZW50Ijoi2KfZhNix2YrYp9i22YrYp9iqIiwidHlwZSI6InVzZXIiLCJpYXQiOjE2ODg4MjY4NDUsImV4cCI6MTcwNDM3ODg0NX0.ZmrKbzXE3r5vrSr37zcNeyaZo_KR6lLih0uis2I6JJM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    489,
    365,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzY1LCJkZXBhcnRtZW50Ijoi2KfZhNix2YrYp9i22YrYp9iqIiwidHlwZSI6InVzZXIiLCJpYXQiOjE2ODg4MzI2NjUsImV4cCI6MTcwNDM4NDY2NX0.XvIx_QQnuLVBiLG8NuG52po_kPThNooFpwOeIN0qWnE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    490,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODg0MzE3OCwiZXhwIjoxNzA0Mzk1MTc4fQ.i1aezNYpNN-xLEEEd6QVe8RVJpowu1TKmN8p7MgWo84'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    491,
    321,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzIxLCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImVtYWlsIjoiYm1haG1vb2RAdW9tb3N1bC5lZHUuaXEiLCJpYXQiOjE2ODg4NDU2MDksImV4cCI6MTcwNDM5NzYwOX0.9l4XthDQUw5UEx3BYH_-_CJdGonpxHSH5OgIdvkspjA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    492,
    357,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzU3LCJkZXBhcnRtZW50Ijoi2KfZhNix2YrYp9i22YrYp9iqIiwidHlwZSI6InVzZXIiLCJpYXQiOjE2ODg4NDk2MjEsImV4cCI6MTcwNDQwMTYyMX0.ulm5Lo0PHvInzuK6RNfM98k1luuszVd9jF1NKUZFIwc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    493,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODg0OTk3NCwiZXhwIjoxNzA0NDAxOTc0fQ.-H2HT2qLLUoopoxTHdxcivOBmyEycioQfj34tZD-OIE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    494,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODg1MDc3OSwiZXhwIjoxNzA0NDAyNzc5fQ.Z_IBPlW6FZfK8Y5oahxUFuFD4JHp09kWbr1In0CwrWc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    495,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODg4NDY2MCwiZXhwIjoxNzA0NDM2NjYwfQ.nNlWkBvIuYQ3rbd9R8msgaawubMCr55fM_QVGYy-cy8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    496,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODg5MTg3NCwiZXhwIjoxNzA0NDQzODc0fQ.AkCwkFGp7JiH2tCtgGqSjIUwT9t2a0SD7U65ApOvbRE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    497,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODg5OTY5NywiZXhwIjoxNzA0NDUxNjk3fQ.J-oFJuoOL5nwxjUKFiTm74pKYB0s-B2vs23P9SMp4f0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    498,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODkwMDM1OCwiZXhwIjoxNzA0NDUyMzU4fQ.yZePnlE8o4pRJ0QCAr2D1-pxVaVz5obxXjG8-f-97QA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    499,
    138,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTM4LCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4ODkwNDc5MSwiZXhwIjoxNzA0NDU2NzkxfQ.0WJ7RnmXGjbZgjSf2IHOzUr8bHcZjKxA9UAL3ZB7pWI'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    500,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODkzODcyOCwiZXhwIjoxNzA0NDkwNzI4fQ.cyb9yPDzVE53-DbVy4LARfmrzzdGLVm6xp3Rch058RE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    501,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODk4MDIxNCwiZXhwIjoxNzA0NTMyMjE0fQ.Dl2-3uvFAzIxeHmjwGHyXsMrqcZA6HtTkmX8Lcal_lo'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    502,
    79,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NzksImRlcGFydG1lbnQiOiLYp9mE2LTYqNmD2KfYqiIsInR5cGUiOiJzdXBlcnZpc29yIiwiZW1haWwiOiJheWFkX2FsZXp6aUB1b21vc3VsLmVkdS5pcSIsImlhdCI6MTY4ODk4MDgxMiwiZXhwIjoxNzA0NTMyODEyfQ.QYVZhPmtr6MqfAnVir_nsqu1aid4V5htOhJLU4BNKuM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    503,
    270,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjcwLCJkZXBhcnRtZW50Ijoi2KfZhNil2K3Ytdin2KEg2YjYp9mE2YXYudmE2YjZhdin2KrZitipIiwidHlwZSI6InVzZXIiLCJpYXQiOjE2ODg5ODM3ODYsImV4cCI6MTcwNDUzNTc4Nn0.x3XwIL-yJvAkLe4d0H37uy3rmtzFzXEpC_T4FbHzU4Y'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    504,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4ODk5MjA4OCwiZXhwIjoxNzA0NTQ0MDg4fQ.Mwf6ZmRo6GUALOClXWoBLXpnPcoJZ0q2B-UfbvyHJ1w'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    505,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTAwOTE4OCwiZXhwIjoxNzA0NTYxMTg4fQ.xS4W9MWhPDkl2Pmq9Bgwwe675Y3HLesoaFldlU1K5lg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    506,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTAxOTc5OCwiZXhwIjoxNzA0NTcxNzk4fQ.znJMMi9U3AU8RNHOnh5ZD0GkBPd2knDzJxLspi5Qzzc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    507,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTAyNTQ0NywiZXhwIjoxNzA0NTc3NDQ3fQ.Zf8LASUhzkJKAM0hO1Kw_ja5A-AN0HjItFc6QN5tiyE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    508,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTAyNjA3MiwiZXhwIjoxNzA0NTc4MDcyfQ.4YYI6XPLac1Kfda4pxjCFgt-tZ4EZc5PVXkg2Oj16LY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    509,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTA1OTI0NSwiZXhwIjoxNzA0NjExMjQ1fQ.N9-J8b0dS0L6dpsVvCUB-YQal5Yx__QkDUIhRFA8cD4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    510,
    270,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjcwLCJkZXBhcnRtZW50Ijoi2KfZhNil2K3Ytdin2KEg2YjYp9mE2YXYudmE2YjZhdin2KrZitipIiwidHlwZSI6InVzZXIiLCJlbWFpbCI6Imx1bWEuYWtyYW1AdW9tb3N1bC5lZHUuaXEiLCJpYXQiOjE2ODkwODg1MjQsImV4cCI6MTcwNDY0MDUyNH0.xIg2ksguacvtuCWRavrYS-cjrVcTIn4hp5MhgWUV03E'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    511,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTExMDY1MCwiZXhwIjoxNzA0NjYyNjUwfQ.3OUazzXU3nqwNkPPc3DEHc6mWdnIymqmhQAJPDFaYhw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    512,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTE2MjI5MSwiZXhwIjoxNzA0NzE0MjkxfQ.uCzlC4QBp-2OaxZlvVuzs5bQNda9q_VYnKicDpoGRfE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    513,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTE2Njg3NiwiZXhwIjoxNzA0NzE4ODc2fQ.rczheM2AoC_owDJdzXEzBR5pt8lJSO4VMXtqaV51mGQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    514,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTE4NDE3NCwiZXhwIjoxNzA0NzM2MTc0fQ.3oOn40wXZJq4U1pD7RDkuzdkdSlDn8o5RDgMG4qmx28'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    515,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTE4NTYwNCwiZXhwIjoxNzA0NzM3NjA0fQ.foKm0jaJE9e8-ln00Bdg7THGW1IdHJjRzJKHIdqwGhI'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    516,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTE5Mjc5NCwiZXhwIjoxNzA0NzQ0Nzk0fQ.87uuHQjwJh5RF529-iGc_OfUs5xOF9oNhYeMbbKGjC8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    517,
    345,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzQ1LCJkZXBhcnRtZW50Ijoi2YfZhtiv2LPYqSDYp9mE2KjYsdmF2KzZitin2KoiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4OTIxNzEyMywiZXhwIjoxNzA0NzY5MTIzfQ.u7y2IdZ3DluIbkGQ31b2vkAgXXSelhfiQSjPGqnVu4o'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    518,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTIyMDQ1OCwiZXhwIjoxNzA0NzcyNDU4fQ.uc_nOSRgA9l22GWltMCA5zXOMEyk8FMeBTRpQkL0bzE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    519,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTI3MjUxOSwiZXhwIjoxNzA0ODI0NTE5fQ.2boqOoA6E-9oB4vPzYQEIZqRhPsKtJunLt-_EgUvxW4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    520,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTI3NjU5MywiZXhwIjoxNzA0ODI4NTkzfQ.3Mk3MEODRgU2LsFVX984-gPXS_d5z0djiuzgtJq3bRc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    521,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTI4NTk4NSwiZXhwIjoxNzA0ODM3OTg1fQ.XDEm_JMwgFyrLBw0d4QraWNcjkMZP0k0lHLuM_rn0XM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    522,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTMyMTM0NSwiZXhwIjoxNzA0ODczMzQ1fQ.1H-zdEBBjWA4v30XOdMe0ow_ky67yPJCoLUb8rv_kDM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    523,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTMyNDY1NiwiZXhwIjoxNzA0ODc2NjU2fQ.FCcwSR2bBJt2Jz_srE8zC_CSSBBw_0VWlMRkj5fSGIY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    524,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTMyOTQzNSwiZXhwIjoxNzA0ODgxNDM1fQ.lGmzOsRIYwNwBOmZLdvqWDnc6kKAijZ2IcdPMsAjviI'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    525,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTMzMDkwMywiZXhwIjoxNzA0ODgyOTAzfQ.uJTw9ZGjdohh7z8MnYfn6kk6q-edQOU8PRe7jidfUCc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    528,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTMzMjEyMCwiZXhwIjoxNzA0ODg0MTIwfQ.pKTtRIkfhYTt6fCLrHWIisvjR4BbHMEsWcgCRBUSJF4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    529,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTMzODk1MywiZXhwIjoxNzA0ODkwOTUzfQ.qZqZ7_3qn61qBZ5X2We-9zpPYGM0E-_UvK5A9f1GjCQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    530,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTMzOTYyNCwiZXhwIjoxNzA0ODkxNjI0fQ.IRGPV-xBsaqhBwWlzRnNLVDNUWFtaOyxDm9D-vDBhAk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    531,
    185,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTg1LCJkZXBhcnRtZW50Ijoi2KfZhNil2K3Ytdin2KEg2YjYp9mE2YXYudmE2YjZhdin2KrZitipIiwidHlwZSI6InVzZXIiLCJpYXQiOjE2ODkzNDQ5ODMsImV4cCI6MTcwNDg5Njk4M30.bO7Nkl3Rq2Dxt92kV5lxjKp3eGzZjbK1KOBMSCbKGv8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    532,
    185,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTg1LCJkZXBhcnRtZW50Ijoi2KfZhNil2K3Ytdin2KEg2YjYp9mE2YXYudmE2YjZhdin2KrZitipIiwidHlwZSI6InVzZXIiLCJlbWFpbCI6Im1haG1vb2Q4MV90YWhyQHVvbW9zdWwuZWR1LmlxIiwiaWF0IjoxNjg5MzQ1NjE3LCJleHAiOjE3MDQ4OTc2MTd9.v1KdxYZz2r_igp_scbGHX3gbo1LpKxPwvi7DFUeqii4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    533,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTM2NTY0OSwiZXhwIjoxNzA0OTE3NjQ5fQ.ty4cYOphsoKqEURBbJJqrUnA4niMlAQ689z9kU1vX0w'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    534,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTM2OTUyNywiZXhwIjoxNzA0OTIxNTI3fQ.MM_6Q5S1ekwZ6HA8uE_Vaa663ZhQ-5VcIpWSngFyYBA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    535,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTM3NjkxMSwiZXhwIjoxNzA0OTI4OTExfQ.yQRsf_iVd17iX7IOzopg9G7gq0462WohMwJ2MiOvd2s'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    536,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQwMjM5MSwiZXhwIjoxNzA0OTU0MzkxfQ.ZDuiGRuxf4EHGbSrEOd7HHBgkqcufRGRWYxjaR9VX3c'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    538,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQwMjU2MCwiZXhwIjoxNzA0OTU0NTYwfQ.sjez5ahcKdAubswZg7L8At3PctnE0S5XSnqgj32V3LE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    539,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQwNzIxMywiZXhwIjoxNzA0OTU5MjEzfQ.qhUmp3GJkMb2HsTRBr8lqR0eYvKIqnNn2B6Xrw59A6A'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    541,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQwNzMyNiwiZXhwIjoxNzA0OTU5MzI2fQ.6s9dbUvafD_y_0np9Qajt-FthyUxdYA2SpCbzcbNFuo'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    542,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQxNzgyMSwiZXhwIjoxNzA0OTY5ODIxfQ.84D_XoAOPyDykFz9JSOn1Zk55X7thR9SiEMcQVFCvng'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    544,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQxNzg5NywiZXhwIjoxNzA0OTY5ODk3fQ.Vg1RvZSlaeDU8Qc9IynTUU8tezt5B1e1IK9YzHSro2w'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    545,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQxODM1OCwiZXhwIjoxNzA0OTcwMzU4fQ.jNz5Bf2nAMd-ID8e_r8K-ZHwuWbS7GpQjcCd_a682ac'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    546,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQyNTE4OSwiZXhwIjoxNzA0OTc3MTg5fQ.b27DGCLStaQ5uIqVCbEVoFggK_vVqUv4fEzufCftYUg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    547,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQzMjM5MiwiZXhwIjoxNzA0OTg0MzkyfQ.fbK1qwR3hr9lutBthWDMBlCKxrWVbpX12IZUtNblsY0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    548,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQzMjg0NCwiZXhwIjoxNzA0OTg0ODQ0fQ.VQRBsHcNi38irKLgfifApiuEhypOYOOYtnpl4sW8OU8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    549,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQ0MjgzNiwiZXhwIjoxNzA0OTk0ODM2fQ.ABTRdPlNfSBp-fq2XhJHE1Wjfk08bZwrdnXOBEGGGYU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    550,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQ0NjI5MCwiZXhwIjoxNzA0OTk4MjkwfQ.QRzf2c2dCf_chjQP-KhKxVlF7C8mgP6zosr_z51zis0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    551,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQ0OTM4OCwiZXhwIjoxNzA1MDAxMzg4fQ.KyW30bwaSXDPwjvBSDrJRQprORlJ0iEoeb5YIS2H2Rg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    552,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQ0OTkyMiwiZXhwIjoxNzA1MDAxOTIyfQ.SIu_ZOJT7OPhXi060-f_42O4Xb41FkT2W4p_XVE2Ic0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    553,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQ1NTg2NCwiZXhwIjoxNzA1MDA3ODY0fQ.nW4EFvayC_a7-_OBm2uNmqDIvCYZxjk_s3Or598Nkmk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    554,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQ2OTYxMCwiZXhwIjoxNzA1MDIxNjEwfQ.GAyB9ul4ei0mFDRC67VoIgNdohbPvtUN0f-lRmJ57tg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    555,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTQ4ODIzOCwiZXhwIjoxNzA1MDQwMjM4fQ.OLLevEduVAfMPjuME3QVlIBmxYLyEgFVXix5pbj4F5Q'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    556,
    123,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTIzLCJkZXBhcnRtZW50Ijoi2KfZhNij2YXZhiDYp9mE2LPZitio2LHYp9mG2YoiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4OTQ5NjI3MywiZXhwIjoxNzA1MDQ4MjczfQ.V-33CVeYdkYOWa3TKoLGjIJgaBPYMg-QfQpSzdRA3hk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    557,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTUwMTA5MSwiZXhwIjoxNzA1MDUzMDkxfQ.yoOputLwMH45HlsF9g3vsN4J52y8b7cowZ4BaEFDf4k'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    558,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTUyNDkzNSwiZXhwIjoxNzA1MDc2OTM1fQ.SbX6JFh92Y8j2hF8rCFg4iagCtWc9flehad1weVBmds'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    559,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTUyNzY1NCwiZXhwIjoxNzA1MDc5NjU0fQ.gJ99TyTtmfY27UU7D2uXZkZoSe38uG4SM2y2UQt-acg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    560,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTU0NDc2NiwiZXhwIjoxNzA1MDk2NzY2fQ.9Ra5IM1RZZuq3zN3vF3y4h5JiDVX1jdPRScov-A4N5A'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    561,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTU3NTcxNCwiZXhwIjoxNzA1MTI3NzE0fQ.68PNhUECiKt0LS2zDFM6G9esdcXwNooFGZS8LN6hNxE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    562,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTU4NDgzNSwiZXhwIjoxNzA1MTM2ODM1fQ.116U7OK8m9oPDiNuTf2L2hQC5vXVXAB8Lwgo_lVl1w4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    563,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTYyODM0MSwiZXhwIjoxNzA1MTgwMzQxfQ.hfpogsfNIxok12DLyLTtLBbFEX60LdwMQ_ody98V-j4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    564,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTYyOTIwOSwiZXhwIjoxNzA1MTgxMjA5fQ.uJsB5uLkLM8IdHeegOtWwFdpNYjKoB5bPKXpQe9ghXw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    565,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTYyOTMzNywiZXhwIjoxNzA1MTgxMzM3fQ.lI7c2NKD5KlpiQ6fRiwBWHabO4ywSbyaTkzHz_ujFOM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    566,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTYzMDExOSwiZXhwIjoxNzA1MTgyMTE5fQ.ilwsI7HZnHdhc2HNoJ96attDcbB_QW4opPTl7pw84Lk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    567,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTYzMDY0NSwiZXhwIjoxNzA1MTgyNjQ1fQ.-H_6RApxe-iAxs0ZLGLIWHCRDxeJYcF2L4kxRHbWwFI'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    568,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTYzMDkyNSwiZXhwIjoxNzA1MTgyOTI1fQ.Syvm5lvuzbIV9D6XdNqxLIgGMyi10r6Wh0A-7UBU-3I'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    569,
    154,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTU0LCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4OTYzMTc5NiwiZXhwIjoxNzA1MTgzNzk2fQ.cglj0cH86ByU0AwpHeu4-dIbqDHebcTDuDP9qq9o7KU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    570,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTY0MTcyNiwiZXhwIjoxNzA1MTkzNzI2fQ.21KIuhunY5ufRG9fsI9BnpVIC2NTy1P_r6n-2HrEndg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    571,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTcwMTIxNywiZXhwIjoxNzA1MjUzMjE3fQ.vqWJDVZ5rAZb9oOPVb3vQiAYU0Ipp8CG775mJwAGO1w'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    572,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTcwMTY1NCwiZXhwIjoxNzA1MjUzNjU0fQ.71YBioR35rlQZVuqOtS-t_sG0c2Zw7SFT3lAr3Ai-_8'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    573,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTcwMjMyOSwiZXhwIjoxNzA1MjU0MzI5fQ.o2UWac6r3KnzPWNU7KOIPT2DLelgmQBNNTIg5KrEPuQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    574,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTcwMzU4MywiZXhwIjoxNzA1MjU1NTgzfQ.AVX7imgeNAuqAcpGtu8x4U9yzZx9APb8hvGiyiRN1xc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    575,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTcwOTg4MCwiZXhwIjoxNzA1MjYxODgwfQ.XiEU0IkvHZ30xCM66NiLJmo7G-QQMpikJp9S_OZTKd0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    576,
    140,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTQwLCJkZXBhcnRtZW50Ijoi2KfZhNij2YXZhiDYp9mE2LPZitio2LHYp9mG2YoiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY4OTc1MDc4MSwiZXhwIjoxNzA1MzAyNzgxfQ.e6q3YbgEHC63eemN8As0eKebngukct0rkIb8iXgjY98'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    577,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTc1MTkyMCwiZXhwIjoxNzA1MzAzOTIwfQ.ytC142DwQ9jwea_8HY1OOplaBqsAiYIeLD9bKZjy3Ls'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    578,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTc1MzMyOSwiZXhwIjoxNzA1MzA1MzI5fQ.aIGqiDU87ENDJVms8X4Wir-SwSEk2vOVEfSmXF7D7Ys'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    579,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTc1MzUzMCwiZXhwIjoxNzA1MzA1NTMwfQ.h7CojsFGKBYgQHNk5DGzbqMXn5pshgw0w8kndEUTZyM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    580,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTc1MzU2MiwiZXhwIjoxNzA1MzA1NTYyfQ.bXVB2YlbA0vGiMMvnnuqWsffbDJqMMCvwjrKgQw-AXQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    581,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTc1NTUwNCwiZXhwIjoxNzA1MzA3NTA0fQ.MbBbSvGzxq6YHMjp0vVvFBEFPaAHrQnP7WH8lUvBJ9I'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    582,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTc1NjY2MiwiZXhwIjoxNzA1MzA4NjYyfQ.36pupWxVIYGryHDMdyNg6OC5L9Yh30aBKPJWT1-9fio'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    583,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTc3ODY4NSwiZXhwIjoxNzA1MzMwNjg1fQ.r96Pk8w4HY1Fov0RO_r9hT9NoZNZOjbiCBUPn4GomUQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    584,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTc4MDQ0MCwiZXhwIjoxNzA1MzMyNDQwfQ.vla-4LF8SCXudxh_by2ghgCqJL6jVWIAQG23puIBjkw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    585,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTgwMTg2NiwiZXhwIjoxNzA1MzUzODY2fQ.61wggQC80_FrV64UkpdYgnyfOS7oDMa5PWH6cDY2ihk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    586,
    99,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OTksImRlcGFydG1lbnQiOiLYqNit2YjYqyDYp9mE2LnZhdmE2YrYp9iqINmI2KfZhNiq2YLZhtmK2KfYqiDYp9mE2LDZg9in2KbZitipIiwidHlwZSI6InVzZXIiLCJpYXQiOjE2ODk4MTM5NDAsImV4cCI6MTcwNTM2NTk0MH0.5gFjfyNf3sl7pSX9XiFjePrjr_CPAUTA7BF3WnVFKoM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    587,
    140,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTQwLCJkZXBhcnRtZW50Ijoi2KfZhNij2YXZhiDYp9mE2LPZitio2LHYp9mG2YoiLCJ0eXBlIjoidXNlciIsImVtYWlsIjoiZHJzdWZ5YW4uc2FsaW1AdW9tb3N1bC5lZHUuaXEiLCJpYXQiOjE2ODk4MzUzNTQsImV4cCI6MTcwNTM4NzM1NH0.gG2S6Pi7faMFOzPTWQoRDBoo8ll3aAhPexbePUxmyYA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    588,
    197,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTk3LCJkZXBhcnRtZW50Ijoi2KfZhNix2YrYp9i22YrYp9iqIiwidHlwZSI6InVzZXIiLCJpYXQiOjE2ODk4NjY3NTUsImV4cCI6MTcwNTQxODc1NX0.C4ZityXi3ZSvd5WWjC-PwE_InIAMrDfY-Bpm0P2mvBg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    589,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTg3MzMyMCwiZXhwIjoxNzA1NDI1MzIwfQ.9JToj2hfyc_DB6FJZQ3CPtAI1O7pm3OmVD7Z_gmhK6Q'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    590,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTg3NDc1NywiZXhwIjoxNzA1NDI2NzU3fQ.eri8Hkuq0z6lPaVS0UNWDzmZSl5XT9xUF214oamfa-g'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    591,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTg3NzE3OSwiZXhwIjoxNzA1NDI5MTc5fQ.tiPLL6xYqN9pT4idqOrxJlEAq2gPXmurQixdghKroIw'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    592,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTkzNzQyMCwiZXhwIjoxNzA1NDg5NDIwfQ.t9iFQHdkr-ni7A0OM6fgVLFb3T6A7adHXESGlImq2cM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    593,
    378,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Mzc4LCJkZXBhcnRtZW50Ijoi2KfZhNix2YrYp9i22YrYp9iqIiwidHlwZSI6InVzZXIiLCJpYXQiOjE2ODk5NTczNDEsImV4cCI6MTcwNTUwOTM0MX0._i7XHW2gSHqvTU_aIhjB2BAwdWwscF3vfVxyayQoyXI'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    594,
    378,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6Mzc4LCJkZXBhcnRtZW50Ijoi2KfZhNix2YrYp9i22YrYp9iqIiwidHlwZSI6InVzZXIiLCJlbWFpbCI6Imhpc2hhbTg5MjAyMEB1b21vc3VsLmVkdS5pcSIsImlhdCI6MTY4OTk1NzUxNiwiZXhwIjoxNzA1NTA5NTE2fQ.HuChXBxoPz04NMGEtu_ztpdtpUFH43CTsG68ETARb0c'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    595,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTk2ODg1MywiZXhwIjoxNzA1NTIwODUzfQ.8MFPZCFGajA7lqog3Mh3ETkaM-7BaDHv23zdNrgJHi4'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    596,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY4OTk3MzY1MiwiZXhwIjoxNzA1NTI1NjUyfQ.ZrJJQec_TTPTCvi8DABv5FfQ_NluAXiS9Ur_o48xIVU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    597,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDAyMTAxOCwiZXhwIjoxNzA1NTczMDE4fQ.VheZwuXRKA4ijbjYSr2vjZBNsHW3XoHpICdWX3Lyq8s'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    598,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDEzMjkyMCwiZXhwIjoxNzA1Njg0OTIwfQ.QJHJznc46Ly_7oafQfM9fAODLSpxgOdOaTseG-HJYjU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    599,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDEzNjQ4OSwiZXhwIjoxNzA1Njg4NDg5fQ.FuzyVphTElI4IZpN3E17N2q9m3j1nJKgOZVbNrPH_-M'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    600,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDE0MTE5MCwiZXhwIjoxNzA1NjkzMTkwfQ.k9HzSjaMfUfMlA6Z4MV03KGYzq4vMEFN8IX9rdxzPvA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    601,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDE0MjQxNywiZXhwIjoxNzA1Njk0NDE3fQ.mVv19i2ngGVgUEuGHItszhIiw_8PTxLkc6tKj3sB1a0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    602,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDE0MjgxNCwiZXhwIjoxNzA1Njk0ODE0fQ.DFiEIba8APXezRQIVHTRuHEaYUkrufUdcohEIA9R-Pc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    603,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDE2NDU1OCwiZXhwIjoxNzA1NzE2NTU4fQ.7PuTP8_xhBDJoybNIdjQ-D0aD-BvS-zh0NYZEqDM4LY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    604,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDE5NDU5NywiZXhwIjoxNzA1NzQ2NTk3fQ.stpLKZXA6OIgdtlhToZCFlCx5mBYXcwUVPEaSRioNEQ'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    605,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDIxNTUzMSwiZXhwIjoxNzA1NzY3NTMxfQ._kqr9k8pSQNfIqPs8P9y8yXe1X0YrP9wmRxGfJM_6ec'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    606,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDIzNTExOCwiZXhwIjoxNzA1Nzg3MTE4fQ.Q6xsS-iXsbablXZblYxsIMTRPmPkYABQPKB7LsFvCF0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    607,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDMwODEwNywiZXhwIjoxNzA1ODYwMTA3fQ.enThEl_Up5QNu8ZqldEvfB1-tEF_JK7MEi4wHuW68iE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    608,
    171,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTcxLCJkZXBhcnRtZW50Ijoi2LnZhNmI2YUg2KfZhNit2KfYs9mI2KgiLCJ0eXBlIjoidXNlciIsImlhdCI6MTY5MDMxNDM4NiwiZXhwIjoxNzA1ODY2Mzg2fQ.ro-wD8uLuhUGwoiw-oqf0iEj9OXeLgfVu6aS5ThmD44'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    609,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDM1MzYwNiwiZXhwIjoxNzA1OTA1NjA2fQ.SXvZJGrmsOoZnuhpW6sPFcNMCpoLSCfQIcQDjgphOds'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    610,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDM5ODIyMCwiZXhwIjoxNzA1OTUwMjIwfQ.g0zXOWLdydjSfShNplkEK-gYRv3RoVyCwIZV_Wf10XY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    611,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDQwNDI1MywiZXhwIjoxNzA1OTU2MjUzfQ.B3M8yRICCu_ywT14zP1rAWn-T-iFepIelJy0gMglOfg'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    612,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDQwNjM1OCwiZXhwIjoxNzA1OTU4MzU4fQ.UrN-VOBRcIvU4XbhNU72Rw7jDc7KP5V1FMO3o2fxRoA'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    613,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDQyMTI3MCwiZXhwIjoxNzA1OTczMjcwfQ.BYdKjy7iRpfVYu_EAAlP1yPI0y2rqFdfyjFlCM35rzo'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    614,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDQzNTE1OCwiZXhwIjoxNzA1OTg3MTU4fQ.K7_qgKD6g5kLHuo4D9fITaBVN0NB8TmBKOqdXHUidP0'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    615,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDQ1NDY2MCwiZXhwIjoxNzA2MDA2NjYwfQ.fAJQIy8GcW814rzngB9m12swAgRK7jY-8NktoHOFixo'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    616,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDQ4MDUxNywiZXhwIjoxNzA2MDMyNTE3fQ.sad9w-MF2bn96pj9IrH516PHWTw_KvlriH9aWhsXiQc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    617,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDUyOTU2OSwiZXhwIjoxNzA2MDgxNTY5fQ.Owy24PUfrbPJf66WD5R51_2FEfqN9BHJvYofnrMcSnM'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    618,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDU2MzY2MCwiZXhwIjoxNzA2MTE1NjYwfQ.jvBaPsKdRC4ze_31ld4gWFhNPaifUns3t6Fn7sXKxjY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    619,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDU2NDg1MiwiZXhwIjoxNzA2MTE2ODUyfQ.gCxuaqTaJ9nrkWSzRrsVt-DF-w_9CM20TkqLmSd782E'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    620,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDU2NDkzNywiZXhwIjoxNzA2MTE2OTM3fQ.c1H75wA-3ehcKX0WS39jsI7BZg2OpZS6f25HvAMhAfc'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    621,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDU2OTY3MiwiZXhwIjoxNzA2MTIxNjcyfQ.-HdYukPoJ4xP_o3eTUSYICQ5eEOksqh7qcCug_YDkVs'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    622,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDU3MzEzMywiZXhwIjoxNzA2MTI1MTMzfQ.OnYbnjJz8clc1vFSoziSKrJhutbox6Lhenc8r1ioRTU'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    623,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDU3MzU1MCwiZXhwIjoxNzA2MTI1NTUwfQ.76rg8AB0s-gWdrxzXe6mdcYKmgjU5cCUT45FA0ony7g'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    624,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDYyNTE3NywiZXhwIjoxNzA2MTc3MTc3fQ.PaxOtM50ODgXLDvUUQiwLbL8pTkxhMRTLGneGAO1ZVk'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    625,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDYyNTIyOCwiZXhwIjoxNzA2MTc3MjI4fQ.uVEhNlHDqf0Z3Wfm4-hobxGJhqMacopl1mky5ZicCQE'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    626,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDYyNTQ5NiwiZXhwIjoxNzA2MTc3NDk2fQ.477aNq3-pa7YslJ6wPgQRq5BiOIGP5OeupWf8S7P_iY'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    627,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDY2MTE1NiwiZXhwIjoxNzA2MjEzMTU2fQ.X_tk0-RmkcM2hdpPHqgEzjbMxpDABKVTfmPEjyImX-I'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    628,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDY2MTM3MywiZXhwIjoxNzA2MjEzMzczfQ.zulzyFplK-9KLV4Z6RxeBsElSYzhNCW5NbAB88QWD4M'
  );
INSERT INTO
  `user_token` (`id`, `user_id`, `token`)
VALUES
  (
    629,
    1,
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZGVwYXJ0bWVudCI6bnVsbCwidHlwZSI6ImFkbWluIiwiZW1haWwiOiJhZG1pbkBhcmNoaXZlLmNvbSIsImlhdCI6MTY5MDY2NDY5OSwiZXhwIjoxNzA2MjE2Njk5fQ.ZcGLy5YkOjz0K_UMZWcT09wwf4BlJ2zHpRV2unV9cxI'
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
    '$2b$10$cbcyTecYU5mBx0v7RUp.5.noZtlambVWm9rHVDMJRJ8/my8dc6DJi',
    NULL,
    NULL,
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
    78,
    'طرفة ياسين حامد الوتار',
    'tyaseen@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ´Ø¨ÙØ§Øª\"',
    '07728272019',
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
    79,
    'اياد حسين عبدالقادر',
    'ayad_alezzi@uomosul.edu.iq',
    '$2b$10$PGNmTIDEGl4zuBCuvRtcnuJ0G4j60VD4M.h2iKuN6xbpB6Rbf0hhe',
    '\"Ø§ÙØ´Ø¨ÙØ§Øª\"',
    '07704418456',
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
    95,
    'احمد انتصار غثيث',
    'ahmed_entesar84@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    96,
    'احمد سامي نوري',
    'ahmed.s.nori@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ£ÙÙ Ø§ÙØ³ÙØ¨Ø±Ø§ÙÙ\"',
    '07518268448',
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
    97,
    'احمد صالح حسن',
    'ahmed_salih_h@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    98,
    'احمد علي السمان',
    'ahmedalialsamman@uomosul.edu.iq',
    '$2b$10$sFx3LBUJqP1zFYK5gEdlquhngqSntYjGNd47b6O1BwpymHYTY1Iv.',
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    99,
    'احمد نزيه عبدالله',
    'ahmed.alkhateeb@uomosul.edu.iq',
    '$2b$10$tjAK5yJvZCWGhwbtU00W3uzWAbpnlkgDcUahMNGyRyaRnYX.wSXmC',
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    100,
    'ادريس محمد نوري',
    'edreesnori@uomosul.edu.iq',
    '$2b$10$iO4T9bQNyyqXldDkJCR.q.Dma4Upy/RMyGRZiszwQsm3hio71vueS',
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    101,
    'اسامة بشير شكر',
    'drosamahannon@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    102,
    'اسماء خليل احمد العلاف',
    'asmaa.khaleel@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    103,
    'اسماء عبد المنعم عبدالله',
    'asmaa.abd@uomosul.edu.iq',
    NULL,
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    104,
    'اسماء هادي ذنون يونس',
    'asmashade77@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    105,
    'انس عبدالمجيد محمد الدباغ',
    'anas@uomosul.edu.iq',
    '$2b$10$OHvRncOpQ0x6.pjCY5Mu9.4b.VqDZ3hCI1A1DKinwRhd3AgVLG2Cm',
    '\"Ø§ÙØ´Ø¨ÙØ§Øª\"',
    '07700000000',
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
    106,
    'ايلاف اسامة عبدالمجيد',
    'le_osamah@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    107,
    'ايمان صبحي محمد',
    'imansubhi@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    108,
    'ايمان طارق حامد حاج',
    'dr.emantarik@uomosul.edu.iq',
    NULL,
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    109,
    'ايناس امجد محمد الصائغ',
    'enas.amjad@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    110,
    'اسراء خالد احمد',
    'esraa@uomosul.edu.iq',
    '$2b$10$7KnaUXtNM7sJmozEWru5WurjB9b7oqqhwara..M0uRR5E7nX0I2Cy',
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    111,
    'ايلاف سليمان خليل',
    'elaf.sulaiman@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    112,
    'ايناس على جميل صالح',
    'enasalijameel@uomosul.edu.iq',
    '$2b$10$Nsk6y8mopGcnVLeP1hknEu9tgFIxKaUEA1pEDyZL0ctMFbiNI7swi',
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    113,
    'اشرف بشير ذنون يونس النعيمي',
    'ashrf.bshyr@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    114,
    'انسام نزار يونس',
    'anyma8@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    115,
    'بان عبد الكريم قاسم',
    'banabdulkareem@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    116,
    'بان غانم عمر العاني',
    'drbanalani@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    117,
    'بان غانم معيوف',
    'ban_ghanm2019@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    118,
    'بشار عبدالعزيز الطالب',
    'bashar.altalib@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    119,
    'بيداء ابراهيم خليل',
    'baydaaibraheem@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    120,
    'ثائر يونس ذنون',
    'thairyounis59@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    121,
    'حسام وليد ياسين',
    'husam.waleed@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    122,
    'خضر محمد صالح',
    'khalawe@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    123,
    'دجان بشير طه',
    'dujan_taha@uomosul.edu.iq',
    '$2b$10$//l/slX.XcilPE7fmotsNeg0ndhrj4oLMLVXRkfkle.zv6Jxc.ig.',
    '\"Ø§ÙØ£ÙÙ Ø§ÙØ³ÙØ¨Ø±Ø§ÙÙ\"',
    '07700000000',
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
    124,
    'ربى طلال ابراهيم احمد',
    'rubatalal@uomosul.edu.iq',
    '$2b$10$O5r56FiunGu7K3sCA9rQUuLGIJsw/Iab0jsDFug38gee3EIjCs.x6',
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    125,
    'رغد عبد الهادي عبد القادر سليمان',
    'raghad.sulyman@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    126,
    'رنين متي يوسف',
    'ranenmate@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    127,
    'رهاد عماد صليوا يونان',
    'alshamany@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    128,
    'ريا جاسم عيسى',
    'raya.jassim@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ£ÙÙ Ø§ÙØ³ÙØ¨Ø±Ø§ÙÙ\"',
    '07700000000',
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
    129,
    'ريا سالم محمد علي الرسام',
    'rayasalim73@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    130,
    'رياض زغلول محمود',
    'riyadh.zaghlool@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ£ÙÙ Ø§ÙØ³ÙØ¨Ø±Ø§ÙÙ\"',
    '07700000000',
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
    131,
    'ريان يوسف يعقوب الخياط',
    'rayan@uomosul.edu.iq',
    '$2b$10$QM9obQQuumczIe7HOaDBF.mqCC4QuEQywGNFQWqz.B6h.h3N2P0Te',
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    132,
    'زهراء عبد العزيز طه',
    'zahraaalnuaimi2019@uomosul.edu.iq',
    '$2b$10$nUtYV4f8Hb3Uv/xaM4RncOjQ7r9PqAVP5iTLBEePKnw4EsW97.4G.',
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    133,
    'زيد طارق الخالدي',
    'zaid.alkhaledi@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    134,
    'زيد عبد الاله منذر',
    'zaidabdulelah@uomosul.edu.iq',
    '$2b$10$5IAcH8UkWB0LolGnI.ECnuvRejJvRMlkjluagt19oP82fsapFeXwy',
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    135,
    'زينب توفيق حامد الدباغ',
    'zainab.tawfeek@uomosul.edu.iq',
    NULL,
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    136,
    'زينب حسام حامد يونس الساري',
    'zaynab.hussam@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    137,
    'زينة نبيل جميل الخطيب',
    'zeenaalkateeb@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    138,
    'سجى جاسم محمد',
    'sj_alkado@uomosul.edu.iq',
    '$2b$10$BL.MYVZtTX2RAGpF6Jf8FOjC7sumURmNHwLZ1aDnRe298gQrTZ8Y.',
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    139,
    'سراب احمد عبد القادر',
    'sarab.ahmad@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    140,
    'سفيان سالم محمود',
    'drsufyan.salim@uomosul.edu.iq',
    '$2b$10$7G9Z1EecZuYCOXp8wLlLJONhYN899foQFIfv3vEAnrMK2ozNwE5pu',
    '\"Ø§ÙØ£ÙÙ Ø§ÙØ³ÙØ¨Ø±Ø§ÙÙ\"',
    '07700000000',
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
    141,
    'سميرة عباس فاضل',
    'sameeraabbasfadhel@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    142,
    'سنابل احمد محمود',
    'sanabil_2000@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    143,
    'سندس خليل ابراهيم',
    'sunduskhaleel_2019@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    144,
    'سندس عبدالمطلب محمد',
    'sundus_abid7@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    145,
    'شهد عبدالرحمن حسو',
    'shahd_hasso@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    146,
    'شيماء مصطفى محيي الدين',
    'shaymamustafa@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    147,
    'ظفر سامي حمادي',
    'dhafar_un@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    148,
    'عامرة استقلال بدران',
    'amera_istiqlal@uomosul.edu.iq',
    '$2b$10$vm.B3f31iiPjV7ew4nLcdu7nZwOWo2wiqpiDFQL0Un4QrwKhqYUIO',
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    149,
    'عائشة صديق شاهين',
    'aeeshashaheen_1965@uomosul.edu.iq',
    '$2b$10$R1PyJb.rAnduo.Ykp1uAK.ZycBVzz/jojLAgfDG8cTPJx8BZq54ty',
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    150,
    'علياء قصي احمد تقي',
    'dr.alyaa@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    151,
    'عمار ظاهر ياسين طه',
    'ammarthaher@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    152,
    'عمر مؤيد عبدالله',
    'omaraldewachy@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    153,
    'غادة ذنون يونس',
    'ghadathanoon@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    154,
    'غسان جاسم محمد',
    'ghassan.j.m.aladool@uomosul.edu.iq',
    '$2b$10$nY.QslZo1.ZTAgFWsAVJlO9hWNdTy9ATzyWxT2hGHGikVwJkNgPam',
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    155,
    'غيداء عبدالعزيز الطالب',
    'ghaydabdulaziz@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    156,
    'غيداء نجيب حسن مصطفى جلميران',
    'ghaidaa.najib@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    157,
    'فاتن يونس طاهر العكيدي',
    'faten.y.t@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    158,
    'فرح طارق محمد',
    'farahtarik@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    159,
    'فوزية محمود رمو',
    'fawziyaramo@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    160,
    'محمد جاجان يونس',
    'mohammed.c.y@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    161,
    'محمد قاسم يحيى',
    'mqy.alawjar@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    162,
    'مروة جاسم محمد زيدان',
    'marwamaster@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    163,
    'مغيرة مؤيد عزيز احمد',
    'makera.aziz@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    164,
    'مفاز محسن خليل',
    'mafazmhalanezi@uomosul.edu.iq',
    '$2b$10$XhZiVmXBVHLthnGqK/KG3OhGIC/2PrXK4eXDpJCzcPQowV2bgzbG6',
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    165,
    'منى محمد طاهر',
    'dr.muna_taher@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    166,
    'مها عبدالاله محمد',
    'mahaabd77@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    167,
    'ميسون خضر حسين',
    'maysoonkhider@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    168,
    'ميعاد عبد الرزاق احمد جرجيس كشمولة',
    'miaad.abidalrazaaq@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    169,
    'ميلاد جادر سعيد',
    'meladjader@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    170,
    'نادية طارق صالح',
    'nadia_tarik@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    171,
    'نجلاء اكرم الساعاتي',
    'dr.najla_alsaati@uomosul.edu.iq',
    '$2b$10$6WKZHS3SbFLhte/wFU1N9uyaoI1O31FTOrhwl5qc9AMK4mzbIgWbO',
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    172,
    'نجلاء بديع ابراهيم',
    'najlabadie@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    173,
    'نغم عجيل سلطان',
    'naghamajeel@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    174,
    'هدية صالح عبدالله',
    'hadiasalih@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    175,
    'هناء محمد عصمان',
    'hanaosman@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    176,
    'ياسر علي محمود',
    'yaser.ali@uomosul.edu.iq',
    '$2b$10$yTu3OP8XKbXM9cKHBlxcj.O8bhJbM2zLTc9wvuhdILpO0zsws2Uga',
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    177,
    'ياسر نورالدين ابراهيم الطائي',
    'yasir.altai@uomosul.edu.iq',
    '$2b$10$GKNRf9G4Zpg4QMxhm2AruuPpL.XJrw8rhOR5Usp9g2yJqeCgmBL/S',
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    178,
    'ياسين حكمت اسماعيل',
    'yaseen-hikmat@uomosul.edu.iq',
    '$2b$10$SaTbTnD44vA4D8h7yyD8S.Y1O0BR27lORGowXhMtcg8eKSIYw3KCi',
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    179,
    'يسرى فيصل محمد الارحيم',
    'yusrafaisalcs@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    181,
    'طلال عبد الرزاق سعيد الحسو',
    'talal744740@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    182,
    'فرح عبد الغني يونس صالح',
    'farah-abd-ul-ghane@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    183,
    'مثنى صبحي سليمان',
    'muthanna.sulaiman@uomosul.edu.iq',
    '$2b$10$WfaLpyrFJgUMYPhd759hXerep8gOincF9JZdzfl52cR3KZV8WZeGG',
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    184,
    'محاسن صالح عبدالله عمر',
    'mhasenaltalib@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    185,
    'محمود محمد طاهر يونس',
    'mahmood81_tahr@uomosul.edu.iq',
    '$2b$10$xK680l8u5x2YRiXdl.bb7.oCleClMZmoifIeFUTNYYAVpoUQ86Udi',
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    186,
    'مزاحم محمد يحيى',
    'muzahim_alhashime@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    187,
    'مناف حازم احمد',
    'manaf.ahmed@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    188,
    'نعم سالم فاضل سليم',
    'naamsalem@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    189,
    'هيام عبد المجيد حياوي',
    'he.hayawi@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    190,
    'هيفاء عبدالجواد سعيد',
    'hayfaajwad.65@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    191,
    'وسام وعدالله سليم',
    'wisam-stat@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    192,
    'عدي هاشم سعيد الوتار',
    'ahsa.alwattar@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ£ÙÙ Ø§ÙØ³ÙØ¨Ø±Ø§ÙÙ\"',
    '07700000000',
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
    193,
    'فارس عادل داؤد',
    'f.llwaah@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ£ÙÙ Ø§ÙØ³ÙØ¨Ø±Ø§ÙÙ\"',
    '07700000000',
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
    194,
    'عبدالغفور جاسم سالم',
    'drabdul_salim@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    195,
    'عبدالغفور محمد امين',
    'abdulghafor_rozbayani@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    196,
    'علي عادل بكر',
    'aliadil77@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    197,
    'غادة مؤيد رشيد',
    'drghadaalnaemi@uomosul.edu.iq',
    '$2b$10$9M6QSOJHlTkpoiiXmAKv7u3Dk9bqSR90MAiPz/25yjoCwendU3ZLS',
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    198,
    'كرم حاتم ذنون',
    'karamhatim@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    199,
    'محمد امير الدين محمد شريف السلمان',
    'mohammed.ameer@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    200,
    'منى محسن محمدعلي',
    'munamoh74@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    201,
    'ميسون مال الله عزيز',
    'aziz_maysoon@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    202,
    'عمر عبدالمنعم ابراهيم الدباغ',
    'dr.omar.aldabbagh@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07705933199',
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
    203,
    'سيف الدين ضياء الدين سعيد',
    'saifldeen.alrefaee@uomosul.edu.iq',
    NULL,
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    204,
    'صالح مؤيد شاكر جرجيس',
    'salih.mooaed@uomosul.edu.iq',
    NULL,
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    205,
    'غالية توفيق بشير مصطفى',
    'ghalia.tawfeek@uomosul.edu.iq',
    NULL,
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    206,
    'غزوان هاني محمود ياسين',
    'ghazwan.alsoufi@uomosul.edu.iq',
    NULL,
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    207,
    'لمياء جاسم محمد حسين',
    'lomuaajasem@uomosul.edu.iq',
    NULL,
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    208,
    'مازن محمد غانم حامد العناز',
    'mazinalanaz@uomosul.edu.iq',
    NULL,
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    209,
    'محمد احمد شهاب الكيلاني',
    'alkailanym@uomosul.edu.iq',
    '$2b$10$JwJmIk1dRGWdMThzQINmQeu6xB9BJ.Uku0Yhb6RJElDIS10pgs1A2',
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    210,
    'منال سالم حمدي',
    'manalsalim@uomosul.edu.iq',
    NULL,
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    211,
    'نعم حازم احمد فتاح',
    'Neam.alfahady@uomosul.edu.iq',
    '$2b$10$1PvA6/VAWbzBJlOLUo8et.715stY9HqSFJgEebqv0utA9WMkV2P5C',
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    212,
    'نعم عبد المنعم عبدالمجيد',
    'niam.munim@uomosul.edu.iq',
    '$2b$10$xgI5iVEeBZIAfANr24651ufCfpakmvLg4bA36iyot/py3G3BgdzgG',
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    213,
    'هدى عصام احمد الحاج',
    'dr.hudaea@uomosul.edu.iq',
    NULL,
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    214,
    'هناء محمد سليمان الغبشة',
    'hanaa.m.s@uomosul.edu.iq',
    NULL,
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    215,
    'بيداء سليمان بهنام',
    'baydaa_sulaiman@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    216,
    'تغريد رياض جارالله',
    'taghreed_reyad@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    217,
    'جمال صلاح الدين النعيمي',
    'jamal_alneamy@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    218,
    'رشا غانم سعيد',
    'rasha.alsarraj@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    219,
    'زهراء زكر يحيى طاقة',
    'zahraa.zakar@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    220,
    'زينة طلال ياسين',
    'zena-talal@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    221,
    'سرى رياض محمد صالح',
    'sura_riyath@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    222,
    'شهباء ابراهيم خليل',
    'shahbaaibrkh@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    223,
    'شيماء احمد جياد',
    'shaymaaahmedch@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    224,
    'صائل محمد سعيد معيوف الجبوري',
    'sael.mohamed@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    225,
    'عاتكة محمد عبدالله الطائي',
    'atica_altaie@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    226,
    'عزام عصام داود الراوجي',
    'azzam.esam@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    227,
    'غادة الدباغ',
    'ghadaaldabagh@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    228,
    'فرات يونس عبدالرزاق',
    'f.abayaje@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    229,
    'مروة عبدالكريم زيدان',
    'marrwa_zedan@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    230,
    'مروة مروان عبد العزيز',
    'marwa_marwan21@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    231,
    'نكتل مؤيد عيدان',
    'naktal.edan@uomosul.edu.iq',
    '$2b$10$qIwqLz1ve6GGNhHQNWRKiu0fQ19mLQsUY/73TZ7tecEP1OY1WOrw2',
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    232,
    'ياسر محمد خزعل',
    'yasirmk@uomosul.edu.iq',
    '$2b$10$atBKJQQpbwSM0gIQIrbou.oopPPNdujBkBVttjcOPodjZBHRix40S',
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    233,
    'احلام عبد الغفار عبد',
    'ahlam.abdalghafar@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    234,
    'احمد عامر محمد فوزي',
    'aahmedamer68@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    235,
    'اخلاص عبد النافع احمد بنو',
    'ikhlas.abdalnafii@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    236,
    'بيداء حسين رجب',
    'baidaa.r@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    237,
    'حسان هداف احمد يحيى الخياط',
    'hassan.haddaf@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    238,
    'حسين علي حسين',
    'hussain.ali@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    239,
    'خالد عزالدين ذنون محمد آل عمران',
    'khaled.ezedine@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    240,
    'خالدة محمد نوري يونس الجادر',
    'khaleda.muhammad@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    241,
    'دعاء مساعد محمد يحيى',
    'duaa.mosaed@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    242,
    'رشا جورج يونان البنا',
    'rasha.george@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    243,
    'رغد خالد عبد الطائي',
    'raghad.khalid@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    244,
    'ريم نذير نعوم الديري',
    'reem.natheer@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    245,
    'زينب قصي احمد تقي العريبي',
    'Zainab.q@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    246,
    'سعد احمد عبد الكريم',
    'saad.a.abd@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    247,
    'سلوان عبد الكريم خليل امين',
    'salwan.abdulkreem@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    248,
    'شذى فالح اسماعيل العكاش',
    'shatha.falih@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    249,
    'شيرين منيف يوسف',
    'shereen.munif@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    250,
    'شيماء رافع محمود العمر',
    'shaimaa.rafaa@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    251,
    'علاء الدين عباس رفيق',
    'alladdin50@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    252,
    'عمر محمد اسماعيل',
    'omar_al_habash@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    253,
    'ليث سامي يونس العبيدي',
    'layth.sami@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    254,
    'ليلى عبد العزيز فتحي محمد النجار',
    'laila.abdulazeez@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    255,
    'محمد شكر محمود جاسم',
    'mohammed.shukir@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    256,
    'محمود علي محمد الرسام',
    'mahmood.ali@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    257,
    'منتصر احمد محمد الخضير',
    'muntasar.ahmed@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    258,
    'مها مظفر عبد الرزاق الاطرقجي',
    'maha.mudafer@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    259,
    'ميادة عبد المحسن عبد الرحمن',
    'myada.abdalmohsen@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    261,
    'ضحى بشير عبدالله',
    'prof.dhuha_basheer@uomosul.edu.iq',
    NULL,
    '\"Ø¹Ø§Ù\"',
    '07700000000',
    'dean'
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
    262,
    'اسراء عبد الجواد صالح',
    'israa.alameen81@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    263,
    'الاء عبد الستار داؤد حمودات',
    'allahamoodat@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    264,
    'خيري بدل رشيد صادق',
    'khairy-stat@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    265,
    'ريكان عبدالعزيز احمد',
    'rikan.ahmed@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    266,
    'زينة مضر يحيى',
    'zeenamudhar@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    267,
    'شيماء وليد محمود محمد',
    'shaimaa.waleed@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    268,
    'عمر قصي جاسم',
    'omarqusay@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    269,
    'فداء زياد حسن العبيدي',
    'fidaa-law@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    270,
    'لمى اكرم عبدالله',
    'luma.akram@uomosul.edu.iq',
    '$2b$10$NqdRGFAieUr1IUnh6zx2Tuc6UfFHMPs7Ty8CUNBEWeJeLUI2ajk1S',
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    271,
    'منى عبد العزيز محمود الوتار',
    'muna.abdalaziz@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    272,
    'نجلاء سعد ابراهيم',
    'najlaa.s.a@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    273,
    'ندى نزار محمد',
    'nada-nazar1984@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    274,
    'نورا سهيل اسماعيل',
    'noora.hawa@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    275,
    'نورسل احمد زين العابدين',
    'zeennorsal@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    276,
    'هبة سليمان داؤد',
    'heba.sulaiman82@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    277,
    'هشام ياسين عباس',
    'hisham.alameen@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    278,
    'هيلاء أنس عبد المجيد',
    'hyllaa.77@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    279,
    'يثمر ماهر اسماعيل عبد الخيرو',
    'yathmer.maher@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    280,
    'اسماء صلاح عزيز',
    'asmaas982@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    281,
    'اخلاص سعدالله احمد',
    'drekhlass-alrawi@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    282,
    'براءة محمود سليمان',
    'barah_mahmood82@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    283,
    'رائدة داؤد محمود',
    'raida.1961@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    284,
    'رغد عبدالعزيز مصطفى',
    'raghad.math@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    285,
    'زبيدة محمد ابراهيم',
    'z.mohammed@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    286,
    'شعاع محمود عزيز',
    'shuaamaziz@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    287,
    'شهلة مؤيد خليل',
    'shahlasamer@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    288,
    'شيماء حاتم احمد',
    'shaymaahatim@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    289,
    'طلال فاضل حسين',
    'talal.math@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    290,
    'فرح حازم محمد',
    'farahalkadoo@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    291,
    'ميرنا عادل عزيز كرومي',
    'merna_samarchi@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    292,
    'هنادي داؤد سليم',
    'hanadidawood@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    293,
    'برهان حسين خلف',
    'burhan.h.k@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    294,
    'حسام لقمان جاسم',
    'hussam.lukman@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    295,
    'رعد احمد ايوب',
    'raad.ahmad@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    296,
    'رغد سليم محمد نجيب',
    'raghad.saleem@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    297,
    'ريان محمد طه العباسي',
    'rayan.alabbasy@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    298,
    'زهراء دحام ددو',
    'zahraa.daham@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    299,
    'سرى محمد جمال الدين حسين العلوي',
    'sura.alalwlia@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    300,
    'شذى عبدالله محمد',
    'shathaabdullah@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    301,
    'شهباء عبد الرزاق عبد القادر',
    'shahba.abd@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    302,
    'شيماء عامر يحيى قاسم العبيدي',
    'shemaa.amer@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    303,
    'عبدالله سالم سعيد ابراهيم فليح',
    'abduiiah.salim@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    304,
    'عمار عادل محمد',
    'ammar.adel@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    305,
    'عمر ثامر خليل ابراهيم الطائي',
    'omar.thamer@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    306,
    'محمود شكر محمود الدودو',
    'mhhmood.shukur@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    307,
    'مروة يحيى مصطفى',
    'marwayahea@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    308,
    'مصطفى صبحي نجم',
    'mustafa.subhl@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    309,
    'نجلاء خالد جلال',
    'najlaa.khalid@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    310,
    'اسيل وليد علي',
    'aseelwaleed@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    311,
    'حسن ماهر احمد',
    'hasanmaher@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    312,
    'حنان حامد علي',
    'hanan_hamidali@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    313,
    'سماء طليع عزيز',
    'sama_talee@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    314,
    'فردوس عدنان السلمان',
    'firdewsalsalman@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    315,
    'زهير قيس الامين',
    'qizohair@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    316,
    'سوزان حسن محمد',
    'susan.al-hakam@uomosul.edu.iq',
    '$2b$10$WwaQbQ1W8McbXd.npbnMlOdnTxhTfy0G6XZ2Wi8III1JoqLtot2Q.',
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    317,
    'هدى فيصل محمد عبدالرحيم الارحيم',
    'huda.fasil@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    318,
    'عمار محمد حسين',
    'ammar.hussien@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    319,
    'علياء غانم سليمان',
    'alyaa.ghanim@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    320,
    'نادية معن محمد',
    'nadia.m.mohammed@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    321,
    'باسم محمد محمود',
    'bmahmood@uomosul.edu.iq',
    '$2b$10$PZJKCGuZSAbFOdvhTsTf8OKjf6sANbr/TS/V9vSai0TEL1ZDqHvOC',
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07806655710',
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
    322,
    'عمر طارق صالح',
    'omrtrq@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ´Ø¨ÙØ§Øª\"',
    '07702001010',
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
    323,
    'صفوان ناظم راشد',
    'safwan75nathem@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    324,
    'رتينة جاسم عيسى',
    'rotinajasim@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    325,
    'زيد جعفر فاضل عباس',
    'zaid1978@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ´Ø¨ÙØ§Øª\"',
    '07700000000',
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
    326,
    'صفوان عمر حسون',
    'dr.safwan1971@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¹ÙØ§Ø¯Ø©\"',
    '07700000000',
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
    327,
    'اسماعيل يحيى حسن إسماعيل احمد',
    'esmayel.yahya@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    328,
    'بان شريف مصطفى',
    'banmustafa66@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    329,
    'رنا مؤيد حسن',
    'ranamuayad@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    330,
    'شمس غانم سالم كشمولة',
    'shamis.ghanim@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    331,
    'علي حكمت عبدالكريم خليل الهلالي',
    'ali.hekmat@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    332,
    'غزوان طه عبدالله شبلي الجواري',
    'ghazwan.taha@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    333,
    'هبة ادريس يونس',
    'hibaadreese@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    334,
    'اسماء ياسين حمو',
    'asmahammo@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    335,
    'اشرف عبدالمنعم عبدالمجيد',
    'ashraf_althanoon@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    336,
    'انفال عبدالمنعم',
    'anfalaaf@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    337,
    'براء سامي مصطفى',
    'baraa_sami@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    338,
    'زهراء مازن طه القطان',
    'zahraa.alkattan@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    339,
    'ندى نعمت سليم',
    'nada_n_s@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    340,
    'خليل ابراهيم احمد السيف',
    'khalil_alsaif@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    341,
    'منى جعفر صديق',
    'muna.jaffer@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    342,
    'منتهى طارق ياسين',
    'muntahatariq@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    343,
    'خالدة احمد محمد',
    'khalida@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    344,
    'لهيب محمد ابراهيم الزبيدي',
    'laheeb_alzubaidy321966@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    345,
    'ابراهيم احمد صالح',
    'i.hadedi@uomosul.edu.iq',
    '$2b$10$0FDf15gtdPEVHJzbrGkNrOCIC4c7OjAp5j9sQ/Z4yn9x2sWgjvXEG',
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    346,
    'اسماء سالم يحيى',
    'asma_alkhairi@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    347,
    'ميس الريم عضيد كمال',
    'maisirreem_alsaigh@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    348,
    'هبة منير يحيى',
    'hibamoneer@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    349,
    'اخلاص عبدالجبار سلطان',
    'iklaas.sultan@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    350,
    'شامل قيس ابراهيم الامين',
    'shamil.al-ameen@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    351,
    'عمر انعام محمد احمد',
    'omar_inam@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07700000000',
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
    352,
    'حليمة عيسى سليمان',
    'haleema_essa@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    353,
    'نور نوزت احمد',
    'nooalior@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    354,
    'رفل اديب عثمان',
    'rafal.ad81@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    355,
    'رشا صلال حسن',
    'sallal-rasha@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    356,
    'عبير عبدالخالق احمد اسماعيل',
    'abeeraldabagh@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    357,
    'هند حسام الدين محمد',
    'hindmath@uomosul.edu.iq',
    '$2b$10$aLjJ4nxE39Z8MISU7vcc/eUQKkfrvWKAZQueuPTiRKcSZInnHtHmO',
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    358,
    'انعام غانم سعيد',
    'enaamghanim@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    359,
    'كرم عادل عبد محمد',
    'karamadel@uomosul.edu.iq',
    NULL,
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    360,
    'زكريا يحيى الجمال',
    'zakariya.algamal@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    361,
    'بان احمد حسن',
    'banah.mitras@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    362,
    'حذيفة حازم طه مجيد',
    'hutheyfa71@uomosul.edu.iq',
    NULL,
    '\"Ø¨Ø­ÙØ« Ø§ÙØ¹ÙÙÙØ§Øª ÙØ§ÙØªÙÙÙØ§Øª Ø§ÙØ°ÙØ§Ø¦ÙØ©\"',
    '07700000000',
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
    363,
    'ياسين عبد الجبار صالح',
    'yass.math@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    364,
    'همسة ثروت سعيد',
    'hamsathrot@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    365,
    'المعتصم عبدالمحسن حامد',
    'almutasim@uomosul.edu.iq',
    '$2b$10$iMitn54q7N1SW7rMCWw4R.kfN6qmsHucGpM7QYxRwo3smlOzmFpIC',
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    366,
    'فاطمة محمود حسن',
    'fatima.zamzoom@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    367,
    'سجى يونس حامد',
    'sata@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    368,
    'شيماء شكيب محمد يحيى',
    'shymshak@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ¥Ø­ØµØ§Ø¡ ÙØ§ÙÙØ¹ÙÙÙØ§ØªÙØ©\"',
    '07700000000',
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
    369,
    'محمد صباح محمود',
    'msmt_math@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    370,
    'محمد زكي حسن',
    'mzhasan@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ´Ø¨ÙØ§Øª\"',
    '07700000000',
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
    371,
    'فراس محمد صالح',
    'faswad@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ´Ø¨ÙØ§Øª\"',
    '07700000000',
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
    372,
    'عبدالله هاني احمد',
    'abdullah.h@uomosul.edu.iq',
    NULL,
    '\"ÙÙØ¯Ø³Ø© Ø§ÙØ¨Ø±ÙØ¬ÙØ§Øª\"',
    '07703009789',
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
    373,
    'رواء بطرس بولص قاشا',
    'rawa_qasha@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    376,
    'منار يونس احمد كشمولة',
    'manar.kashmola@uomosul.edu.iq',
    NULL,
    '\"Ø¹ÙÙÙ Ø§ÙØ­Ø§Ø³ÙØ¨\"',
    '07700000000',
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
    377,
    'باسم عباس حسن',
    'basimah@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    378,
    'هشام محمد خضر',
    'hisham892020@uomosul.edu.iq',
    '$2b$10$jdTKBl87MykWF/iNp/YfUOQ7Bv0o3f3gOT6F2bFmKObcgFcgi5hPO',
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    379,
    'احمد محمد علي',
    'ahmedgraph@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    380,
    'احمد فاروق قاسم',
    'ahmednumerical@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    381,
    'وليد محمد فتحي الحياني',
    'waleedalhayani@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    382,
    'سعد فوزي جاسم',
    'saad_alazawi@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    383,
    'حسام قاسم محمد',
    'husamqm@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
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
    384,
    'عمر صابر قاسم',
    'omar.saber@uomosul.edu.iq',
    NULL,
    '\"Ø§ÙØ±ÙØ§Ø¶ÙØ§Øª\"',
    '07700000000',
    'user'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
