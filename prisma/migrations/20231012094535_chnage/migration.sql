/*
  Warnings:

  - You are about to drop the `post` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `post` DROP FOREIGN KEY `post_userId_fkey`;

-- DropTable
DROP TABLE `post`;

-- CreateTable
CREATE TABLE `posts` (
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
ALTER TABLE `posts` ADD CONSTRAINT `posts_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
