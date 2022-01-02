CREATE TABLE student(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name TEXT NOT NULL,
    birthday DATE NOT NULL,
    address TEXT NOT NULL,
    mobile VARCHAR(11) NOT NULL,
    email TEXT NOT NULL,
    id_class INT NOT NULL,
    FOREIGN KEY (id_class) REFERENCES class(id)
    )
   INSERT INTO `student`(`id`, `name`, `birthday`, `address`, `mobile`, `email`, `id_class`) VALUES (10, 'Tran Van Tam', '1996-09-23','Bac Ninh', 0342567762 ,'tranvantam0996@gmail.com', 3);
INSERT INTO `student`(`id`, `name`, `birthday`, `address`, `mobile`, `email`, `id_class`) VALUES (11, 'Quach Thi Hong', '1996-06-23','Bac Ninh', 0986256789 ,'quachthihong0996@gmail.com', 3);
INSERT INTO `student`(`id`, `name`, `birthday`, `address`, `mobile`, `email`, `id_class`) VALUES (12, 'Nguyen Thi Thanh', '1995-07-24','Bac Ninh', 0945687955 ,'nguyenthithanh0996@gmail.com', 3);