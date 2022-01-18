CREATE TABLE film(
    id_film INT PRIMARY KEY AUTO_INCREMENT,
    title TEXT NOT NULL,
    decription TEXT NOT NULL,
    length TEXT NOT NULL,
    id_language INT NOT NULL,
    FOREIGN KEY (id_language) REFERENCES language_cinema(id_language),
    date_update DATE NOT NULL 
)
CREATE TABLE language_cinema(
    id_language INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL
)

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

