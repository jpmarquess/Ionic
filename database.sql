CREATE DATABASE ionic;
USE ionic;

CREATE TABLE users(
	user_id INT NOT NULL AUTO_INCREMENT,
	fname VARCHAR(45),
	lname VARCHAR(45),
	username VARCHAR(30) NOT NULL,
	password VARCHAR(30) NOT NULL,
	age INT,
	email VARCHAR(50),
	createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	PRIMARY KEY(user_id)
);

CREATE TABLE posts(
	post_id INT NOT NULL AUTO_INCREMENT,
	user_id INT,
	title VARCHAR(45) NOT NULL,
	body TEXT NOT NULL,
	image LONGTEXT,
	likes INT,
	createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	PRIMARY KEY (post_id),
	FOREIGN KEY(user_id) REFERENCES users(user_id)
);

# Users
INSERT INTO users(username, password) VALUES("joao", "password");
INSERT INTO users(username, password) VALUES("user123", "user");


# Posts
INSERT INTO posts(user_id, title, body, image) VALUES(1, "Exemplo titulo", "Exemplo body setup", "https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fusatsneakhype.files.wordpress.com%2F2016%2F08%2Fawesome-workspace-desk-and-office-setups-21.jpg%3Fw%3D1000%26h%3D750&f=1");
INSERT INTO posts(user_id, title, body, image) VALUES(2, "Exemplo titulo 2", "Lorem ipsum do segundo comentario", "https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fs-media-cache-ak0.pinimg.com%2Foriginals%2F39%2F37%2F45%2F393745ae81360c35705412c436894474.jpg&f=1");
INSERT INTO posts(user_id, title, body, image) VALUES(2, "Exemplo titulo 3", "Lorem ipsum do terceiro comentario", "https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fs-media-cache-ak0.pinimg.com%2F736x%2F19%2Ff8%2F41%2F19f8416944ba5bc3b004c79669ecb940.jpg&f=1");
