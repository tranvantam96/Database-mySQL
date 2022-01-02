CREATE TABLE class(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name TEXT NOT NULL,
    id_teacher INT NOT NULL,
    FOREIGN KEY (id_teacher) REFERENCES teacher(id)
)
INSERT INTO `class`(`id`, `name`, `id_teacher`) VALUES (10,'Java 03', 1);
INSERT INTO `class`(`id`, `name`, `id_teacher`) VALUES (11,'Java 04', 1);
INSERT INTO `class`(`id`, `name`, `id_teacher`) VALUES (10,'Java 05', 2);
INSERT INTO `class`(`id`, `name`, `id_teacher`) VALUES (11,'Java 06', 2);
