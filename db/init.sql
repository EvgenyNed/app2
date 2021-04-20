CREATE USER evgen WITH  PASSWORD '123456';
CREATE DATABASE rosbank OWNER 'evgen';
GRANT ALL PRIVILEGES ON DATABASE "rosbank" to evgen;

CREATE TABLE users (user_login varchar(30) PRIMARY_KEY, user_password varchar(32) NOT NULL);
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO "evgen";



