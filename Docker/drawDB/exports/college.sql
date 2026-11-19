CREATE TABLE IF NOT EXISTS `teachers` (
	`id` INTEGER,
	`full_name` VARCHAR(100),
	`department` VARCHAR(100),
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `groups` (
	`id` INTEGER,
	`group_name` VARCHAR(30),
	`curator_id` INTEGER,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `students` (
	`id` INTEGER,
	`full_name` VARCHAR(100),
	`group_id` INTEGER,
	`enrollment_date` DATE,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `courses` (
	`id` INTEGER,
	`course_name` VARCHAR(100),
	`teacher_id` INTEGER,
	PRIMARY KEY(`id`)
);


CREATE TABLE IF NOT EXISTS `grades` (
	`id` INTEGER,
	`student_id` INTEGER,
	`course_id` INTEGER,
	`grade` INTEGER,
	`grade_date` DATE,
	PRIMARY KEY(`id`)
);


ALTER TABLE `students`
ADD FOREIGN KEY(`group_id`) REFERENCES `groups`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `groups`
ADD FOREIGN KEY(`curator_id`) REFERENCES `teachers`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `courses`
ADD FOREIGN KEY(`teacher_id`) REFERENCES `teachers`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `grades`
ADD FOREIGN KEY(`student_id`) REFERENCES `students`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `grades`
ADD FOREIGN KEY(`course_id`) REFERENCES `courses`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;