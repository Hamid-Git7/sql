-- Exo 5
-- Requêtes avec jointure « many to many »

-- Exo 5.1
-- Listez tous les students avec leurs tags
SELECT student.id, student.firstname, student.lastname, tag.id, tag.name
FROM student_tag
INNER JOIN student ON student.id = student_tag.student_id
INNER JOIN tag ON tag.id = student_tag.tag_id

-- Exo 5.2
-- Listez tous les tags avec leurs students
SELECT tag.id, tag.name, student.id, student.firstname, student.lastname
FROM student_tag
INNER JOIN tag ON tag.id = student_tag.tag_id
INNER JOIN student ON student.id = student_tag.student_id;

-- Exo 5.3
-- Listez le student dont l'id est `2` avec ses tags
SELECT student.id, student.firstname, student.lastname, tag.id, tag.name
FROM student_tag
INNER JOIN student ON student.id = student_tag.student_id
INNER JOIN tag ON tag.id = student_tag.tag_id
WHERE student_id = 2;

-- Exo 5.4
-- Listez le tag dont l'id est `2` avec ses students
SELECT tag.id, tag.name, student.id, student.firstname, student.lastname
FROM student_tag
INNER JOIN tag ON tag.id = student_tag.tag_id
INNER JOIN student ON student.id = student_tag.student_id
WHERE tag_id = 2;
