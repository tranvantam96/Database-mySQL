CREATE TABLE point(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_subject INT NOT NULL,
    id_student INT NOT NULL,
    point FLOAT NOT NULL,
    FOREIGN KEY (id_subject) REFERENCES subject(id),
    FOREIGN KEY (id_student) REFERENCES student(id)
)
INSERT INTO `point`(`id`, `id_subject`, `id_student`, `point`) VALUES (20, 1, 10, 9.0);
INSERT INTO `point`(`id`, `id_subject`, `id_student`, `point`) VALUES (21, 1, 10, 8.5);
INSERT INTO `point`(`id`, `id_subject`, `id_student`, `point`) VALUES (22, 1, 10, 9.9);
INSERT INTO `point`(`id`, `id_subject`, `id_student`, `point`) VALUES (23, 2, 10, 7.0);
INSERT INTO `point`(`id`, `id_subject`, `id_student`, `point`) VALUES (24, 2, 10, 7.2);
INSERT INTO `point`(`id`, `id_subject`, `id_student`, `point`) VALUES (25, 2, 10, 7.3);