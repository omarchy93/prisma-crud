-- CreateTable
CREATE TABLE `user` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `firstName` VARCHAR(50) NOT NULL,
    `middleName` VARCHAR(50) NOT NULL,
    `lastName` VARCHAR(50) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `mobile` VARCHAR(15) NOT NULL,
    `password` VARCHAR(32) NOT NULL,
    `intro` VARCHAR(200) NOT NULL,
    `profile` VARCHAR(200) NOT NULL,
    `registeredAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `lastLogin` TIMESTAMP(0) NOT NULL,

    UNIQUE INDEX `user_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
