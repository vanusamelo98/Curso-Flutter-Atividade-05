

final createTable = ""
CREATE TABLE Book(
id INT PRIMARY KEY
,título VARCHAR(200) NOT NULL
,ISBN CHAR(16) NOT NULL
,url_capa VARCHAR(300) NOT NULL
)
"";

final insert1=""
INSERT INTO book (título,ISBN,url_capa)
VALUES('Nunca Desista de Seus Sonhos','9788575426043','https://images-na.ssl-images-amazon.com/images/I/41zbLKRlNKL._SX331_BO1,204,203,200_.jpg')
"";

final insert2=""
INSERT INTO book (título,ISBN,url_capa)
VALUES('Por favor, cuide da mamãe','9780307595492','https://m.media-amazon.com/images/I/51BVXeNvztL.jpg')
"";

final insert3=""
INSERT INTO book (título,ISBN,url_capa)
VALUES('A Fantástica Fábrica de Chocolate','9780048233035','https://images-na.ssl-images-amazon.com/images/I/51m6oc-yXpL._SX335_BO1,204,203,200_.jpg')
"";