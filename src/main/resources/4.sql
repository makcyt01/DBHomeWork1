ALTER TABLE projects ADD cost INT;

UPDATE projects SET cost = 1000 WHERE id = 1;
UPDATE projects SET cost = 2000 WHERE id = 2;
UPDATE projects SET cost = 900 WHERE id = 3;
UPDATE projects SET cost = 5000 WHERE id = 4;