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
