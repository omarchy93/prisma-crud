-- CreateTable
CREATE TABLE `order` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(100) NOT NULL,
    `token` VARCHAR(100) NOT NULL,
    `subTotal` INTEGER NOT NULL,
    `itemDiscount` INTEGER NOT NULL,
    `tax` INTEGER NOT NULL,
    `total` INTEGER NOT NULL,
    `discount` INTEGER NOT NULL,
    `grandTotal` INTEGER NOT NULL,
    `firstName` VARCHAR(100) NOT NULL,
    `middleName` VARCHAR(100) NOT NULL,
    `lastName` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `mobile` VARCHAR(100) NOT NULL,
    `city` VARCHAR(100) NOT NULL,
    `country` VARCHAR(100) NOT NULL,
    `userId` BIGINT UNSIGNED NOT NULL,
    `createAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updateAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    UNIQUE INDEX `order_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `order` ADD CONSTRAINT `order_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
