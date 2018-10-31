CREATE TABLE IF NOT EXISTS tree (id int, p_id int);

TRUNCATE TABLE tree;


INSERT INTO tree (id, p_id)
VALUES ('1',
        NULL);


INSERT INTO tree (id, p_id)
VALUES ('2',
        '1');


INSERT INTO tree (id, p_id)
VALUES ('3',
        '1');


INSERT INTO tree (id, p_id)
VALUES ('4',
        '2');


INSERT INTO tree (id, p_id)
VALUES ('5',
        '2');