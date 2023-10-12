/*
  Warnings:

  - You are about to drop the `user` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `user`;

-- CreateTable
CREATE TABLE `users` (
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
    `lastLogin` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    UNIQUE INDEX `users_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `post` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `authorId` BIGINT NOT NULL,
    `parentId` BIGINT NOT NULL,
    `title` VARCHAR(75) NOT NULL,
    `metaTitle` VARCHAR(100) NOT NULL,
    `slug` VARCHAR(100) NOT NULL,
    `summary` VARCHAR(200) NOT NULL,
    `published` TINYINT NOT NULL,
    `content` VARCHAR(200) NOT NULL,
    `userId` BIGINT UNSIGNED NOT NULL,
    `createAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updateAt` TIMESTAMP(0) NOT NULL,
    `publishedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `post` ADD CONSTRAINT `post_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
