USE actividades;

#3.1:
SELECT DISTINCT ALMACEN FROM cajas;

#3.2:
SELECT * FROM cajas WHERE VALOR > 150;

#3.3:
SELECT DISTINCT CONTENIDO FROM cajas;

#3.4:
SELECT AVG(VALOR) FROM cajas;

#3.5:
SELECT ALMACEN, AVG(VALOR) FROM cajas GROUP BY ALMACEN;

#3.6:
SELECT A.CODIGO FROM almacenes A WHERE (SELECT AVG(C.VALOR) FROM cajas C WHERE A.CODIGO = C.ALMACEN) >150;

#3.7:
SELECT C.NUMREFERENCIA, A.LUGAR  FROM cajas C JOIN almacenes A ON C.ALMACEN = A.CODIGO;

#3.8:
SELECT COUNT(C.NUMREFERENCIA), A.LUGAR  FROM cajas C JOIN almacenes A ON C.ALMACEN = A.CODIGO GROUP BY A.LUGAR;

#3.9:
SELECT A.CODIGO FROM almacenes A JOIN cajas C ON C.ALMACEN = A.CODIGO GROUP BY A.LUGAR, A.CAPACIDAD, A.CODIGO HAVING COUNT(C.NUMREFERENCIA) > A.CAPACIDAD;

#3.10:
SELECT C.NUMREFERENCIA FROM cajas C JOIN almacenes A ON C.ALMACEN = A.CODIGO WHERE A.LUGAR = "Bilbao";

#3.11:
INSERT INTO almacenes (CODIGO, LUGAR, CAPACIDAD) VALUES
	(6, "Barcelona", 3);

#3.12:
INSERT INTO cajas (NUMREFERENCIA, CONTENIDO, VALOR, ALMACEN) VALUES
	("H5RT", "Papel", 200, 2);

#3.13:
UPDATE cajas
SET VALOR = VALOR*0.85;

#3.14:


#3.15:
DELETE FROM cajas
WHERE VALOR < 100;

#3.16:
 DELETE FROM  cajas 
 WHERE almacen = (SELECT * FROM (SELECT CODIGO FROM almacenes WHERE capacidad < (SELECT count(NUMREFERENCIA) FROM cajas WHERE almacen = CODIGO)) AS z);