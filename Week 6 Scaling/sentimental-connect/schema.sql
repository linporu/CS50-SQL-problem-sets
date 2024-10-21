CREATE TABLE `users` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `first_name` VARCHAR(32),
    `last_name` VARCHAR(32),
    `username` VARCHAR(32) NOT NULL,
    `hashed_password` VARCHAR(128) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `schools` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `type` ENUM('Primary', 'Secondary', 'Higher Education') NOT NULL,
    `location` VARCHAR(128),
    `found_year` YEAR,
    PRIMARY KEY(`id`)
);

CREATE TABLE `companies` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `industry` ENUM('Technology', 'Education', 'Business'),
    `location` VARCHAR(128),
    PRIMARY KEY(`id`)
);

CREATE TABLE connections (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `from_user_id` INT UNSIGNED,
    `to_user_id` INT UNSIGNED,
    `to_school_id` INT UNSIGNED,
    `to_company_id` INT UNSIGNED,
    `start_affiliation_at` DATETIME,
    `end_affiliation_at` DATETIME,
    `degree` VARCHAR(8),
    `title` VARCHAR(64),
    PRIMARY KEY(`id`),
    FOREIGN KEY(`from_user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`to_user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`to_school_id`) REFERENCES `schools`(`id`),
    FOREIGN KEY(`to_company_id`) REFERENCES `companies`(`id`)
);
