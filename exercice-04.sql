-- Exo 4
-- Requêtes avec jointure « many to one » et « one to many »

-- Exo 4.1
-- Listez tous les students avec leurs projects
-- Note : les students sans projets doivent aussi apparaître dans les résultats
SELECT *
FROM student
LEFT OUTER JOIN project ON project.id = student.project_id;

-- Exo 4.2
-- Listez le student dont l'id est `2` avec son project
SELECT *
FROM student
INNER JOIN project ON project.id = project_id
WHERE student.id = 2;

-- Exo 4.3
-- Listez tous les projects avec leurs students
-- Note : les projets sans students ne doivent pas apparaître dans les résultats
SELECT project.id, project.name, student.id, student.lastname, student.firstname
FROM student
INNER JOIN project ON project.id = student.project_id

-- Exo 4.4
-- Listez le project dont l'id est `3` avec ses students
SELECT project.id, project.name, student.id, student.lastname, student.firstname
FROM student
INNER JOIN project ON project.id = student.project_id
WHERE student.project_id = 3;
