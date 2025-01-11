CREATE TABLE authors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE blogs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    category_id INT NOT NULL,
    author_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE ON UPDATE CASCADE
);


INSERT INTO authors (author_name) VALUES 
('John Doe'), 
('Jane Smith');

INSERT INTO categories (category_name) VALUES 
('Technology'), 
('Health'), 
('Lifestyle');

INSERT INTO blogs (title, body, category_id, author_id) VALUES 
('Tech Innovations', 'Content about tech...', 1, 1),
('Healthy Living', 'Content about health...', 2, 2),
('Lifestyle Tips', 'Content about lifestyle...', 3, 1);


INSERT INTO authors (author_name) VALUES ('New Author');

SELECT * FROM authors;

SELECT * FROM authors WHERE id = 1;

UPDATE authors SET author_name = 'Updated Name' WHERE id = 1;

DELETE FROM authors WHERE id = 1;

INSERT INTO categories (category_name) VALUES ('New Category');


SELECT * FROM categories;

SELECT * FROM categories WHERE id = 1;


UPDATE categories SET category_name = 'Updated Category' WHERE id = 1;

DELETE FROM categories WHERE id = 1;

INSERT INTO blogs (title, body, category_id, author_id) VALUES ('New Blog', 'Blog Content', 1, 1);

SELECT * FROM blogs;


SELECT * FROM blogs WHERE id = 1;

SELECT 
    blogs.title, 
    blogs.body, 
    categories.category_name, 
    authors.author_name 
FROM 
    blogs
JOIN categories ON blogs.category_id = categories.id
JOIN authors ON blogs.author_id = authors.id;

UPDATE blogs SET title = 'Updated Title' WHERE id = 1;


UPDATE blogs SET category_id = 2, author_id = 2 WHERE id = 1;


DELETE FROM blogs WHERE id = 1;


SELECT * FROM blogs WHERE author_id = 1;

SELECT * FROM blogs WHERE category_id = 1;
