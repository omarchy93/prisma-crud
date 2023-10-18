/*
  Warnings:

  - You are about to alter the column `content` on the `category` table. The data in that column could be lost. The data in that column will be cast from `VarChar(200)` to `VarChar(100)`.

*/
-- AlterTable
ALTER TABLE `category` MODIFY `title` VARCHAR(100) NOT NULL,
    MODIFY `content` VARCHAR(100) NOT NULL;

-- CreateTable
CREATE TABLE `product` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `firstName` VARCHAR(100) NOT NULL,
    `metaTitle` VARCHAR(100) NOT NULL,
    `slug` VARCHAR(100) NOT NULL,
    `summary` VARCHAR(100) NOT NULL,
    `price` INTEGER NOT NULL,
    `discount` INTEGER NOT NULL,
    `userId` BIGINT UNSIGNED NOT NULL,
    `publishedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `startsAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `endsAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `createAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updateAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `product` ADD CONSTRAINT `product_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
