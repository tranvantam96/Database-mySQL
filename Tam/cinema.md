CREATE TABLE film(  
    id_film INT PRIMARY KEY AUTO_INCREMENT,  
    title TEXT NOT NULL,  
    decription TEXT NOT NULL,  
    length TEXT NOT NULL,  
    id_language INT NOT NULL,  
    FOREIGN KEY (id_language) REFERENCES language_cinema(id_language),  
    date_update DATE NOT NULL   
)
INSERT INTO `film`( `title`, `decription`, `length`, `id_language`, `date_update`) VALUES ('Fast & Forius','Phim hay 1','1:00:00',1 ,2022-01-18);  
INSERT INTO `film`( `title`, `decription`, `length`, `id_language`, `date_update`) VALUES ('Doraemon','Phim hay 2','1:30:00',2 ,2022-01-19);  
INSERT INTO `film`( `title`, `decription`, `length`, `id_language`, `date_update`) VALUES ('Aladin','Phim hay 3','1:40:00',3 ,2022-01-20);  
INSERT INTO `film`( `title`, `decription`, `length`, `id_language`, `date_update`) VALUES ('Trasformer','Phim hay 4','2:00:00',4 ,2022-01-21);  
INSERT INTO `film`( `title`, `decription`, `length`, `id_language`, `date_update`) VALUES ('Naruto','Phim hay 5','1:20:00',2 ,2022-01-22);  
INSERT INTO `film`( `title`, `decription`, `length`, `id_language`, `date_update`) VALUES ('No Way home','Phim hay 6','1:30:00',1 ,2022-01-23);  
INSERT INTO `film`( `title`, `decription`, `length`, `id_language`, `date_update`) VALUES ('Tom and Jerry','Phim hay 7','1:40:00',3 ,2022-01-24);  

CREATE TABLE language_cinema(  
    id_language INT PRIMARY KEY AUTO_INCREMENT,  
    name TEXT NOT NULL  
)  
INSERT INTO `language_cinema`( `name`) VALUES ('Vietnamese');  
INSERT INTO `language_cinema`( `name`) VALUES ('English');  

CREATE TABLE film_category(  
    id_film INT NOT NULL,  
    FOREIGN KEY (id_film) REFERENCES film (id_film),  
    id_category INT NOT NULL,  
    FOREIGN KEY (id_category) REFERENCES category( id_category)  

)  
CREATE TABLE category(  
    id_category INT PRIMARY KEY AUTO_INCREMENT,  
    name TEXT NOT NULL  
)  
INSERT INTO `category`( `name`) VALUES ('Action');  
INSERT INTO `category`( `name`) VALUES ('Animation');  
INSERT INTO `category`( `name`) VALUES ('Family');  
INSERT INTO `category`( `name`) VALUES ('Children');  

CREATE TABLE actor(  
    id_actor INT PRIMARY KEY AUTO_INCREMENT,  
    name TEXT NOT NULL  
)  

CREATE TABLE film_actor(  
    id_actor INT NOT NULL,  
    FOREIGN KEY (id_actor) REFERENCES actor(id_actor),  
    id_film INT NOT NULL,  
    FOREIGN KEY (id_film) REFERENCES film (id_film)  
)  

CREATE TABLE address(  
    id_address INT PRIMARY KEY AUTO_INCREMENT,  
    name TEXT NOT NULL  

)  

CREATE TABLE store(  
    id_store INT PRIMARY KEY AUTO_INCREMENT,  
    id_address INT NOT NULL,  
    FOREIGN KEY (id_address) REFERENCES address(id_address)  

)  

CREATE TABLE inventory(  
    id_inventory INT PRIMARY KEY AUTO_INCREMENT,  
    id_film INT NOT NULL,  
    FOREIGN KEY (id_film) REFERENCES film(id_film),  
    id_store INT NOT NULL,  
    FOREIGN KEY (id_store) REFERENCES store(id_store)  

)  

CREATE TABLE customer(  
    id_customer INT PRIMARY KEY AUTO_INCREMENT,  
    id_store INT NOT NULL,  
    FOREIGN KEY (id_store) REFERENCES store (id_store),  
    name TEXT NOT NULL,  
    email TEXT NOT NULL  
)  
 
CREATE TABLE payment(  
    id_payment INT PRIMARY KEY AUTO_INCREMENT,  
    id_customer INT NOT NULL,  
    FOREIGN KEY (id_customer) REFERENCES customer(id_customer),  
    id_rental INT NOT NULL,  
    FOREIGN KEY (id_rental) REFERENCES rental(id_rental),  
    date_payment DATE NOT NULL    
)  

CREATE TABLE rental(  
    id_rental INT PRIMARY KEY AUTO_INCREMENT,  
    date_rental DATE NOT NULL,  
    id_customer INT NOT NULL,  
    FOREIGN KEY (id_customer) REFERENCES customer(id_customer)  
)  


