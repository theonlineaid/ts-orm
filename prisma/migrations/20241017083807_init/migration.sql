-- CreateTable
CREATE TABLE `users` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `userName` VARCHAR(191) NULL,
    `password` VARCHAR(191) NOT NULL,
    `profileImage` VARCHAR(191) NULL,
    `coverImage` VARCHAR(191) NULL,
    `bio` VARCHAR(191) NULL,
    `ssn` VARCHAR(191) NULL,
    `phoneNumber` VARCHAR(191) NULL,
    `dateOfBirth` DATETIME(3) NULL,
    `gender` VARCHAR(191) NULL,
    `address` VARCHAR(191) NULL,
    `defaultBillingAddress` INTEGER NULL,
    `defaultShippingAddress` INTEGER NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `role` ENUM('ADMIN', 'SELLER') NOT NULL DEFAULT 'SELLER',
    `userAgentInfo` JSON NULL,
    `ipAddress` VARCHAR(191) NULL,
    `location` JSON NULL,

    UNIQUE INDEX `users_email_key`(`email`),
    UNIQUE INDEX `users_userName_key`(`userName`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
