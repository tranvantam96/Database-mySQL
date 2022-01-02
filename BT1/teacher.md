CREATE TABLE teacher(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    mobile VARCHAR(11) NOT NULL,
    address TEXT NOT NULL
)
INSERT INTO `teacher`(`id`, `name`, `email`, `mobile`, `address`) VALUES (01,'Luc Thanh Ngoc','lucthanhngoc96@gmail.com', 0996966669,'Ha Giang');
INSERT INTO `teacher`(`id`, `name`, `email`, `mobile`, `address`) VALUES (02,'Nguyen Xuan Ba','nguyenxuanba@gmail.com', 0123456789,'Ha Noi');