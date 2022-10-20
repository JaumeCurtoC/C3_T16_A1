use actividades;

#1.1:
select nombre from articulos;

#1.2:
select nombre, precio from articulos;

#1.3:
select nombre, precio from articulos where precio <= 200;

#1.4:
select nombre, precio from articulos where precio between 60 and 120;

#1.5:
select nombre, precio*166.386 from articulos;

#1.6:
select avg(precio) from articulos;

#1.7:
select avg(precio) from articulos where fabricante = 2;

#1.8:
select count(nombre) from articulos where precio >= 180;

#1.9:
select nombre, precio from articulos where precio >= 180 order by precio desc;
select nombre, precio from articulos where precio >= 180 order by nombre;

#1.10:
select * from articulos join fabricantes on articulos.fabricante=fabricantes.codigo;

#1.11:
select a.nombre, a.precio, f.nombre from articulos as a join fabricantes as f on a.fabricante=f.codigo;

#1.12:
select avg(a.precio), f.codigo from articulos as a join fabricantes as f on a.fabricante=f.codigo group by f.codigo;

#1.13:
select avg(a.precio), f.nombre from articulos as a join fabricantes as f on a.fabricante=f.codigo group by f.codigo;

#1.14:
select f.nombre from articulos as a right join fabricantes as f on a.fabricante=f.codigo group by f.nombre having avg(a.precio) >= 150;

#1.15:
select nombre, precio from articulos where precio = (select min(precio) from articulos);

#1.16:
select a.NOMBRE, a.PRECIO, f.NOMBRE from articulos AS a, fabricantes as f where a.FABRICANTE = f.CODIGO AND a.PRECIO = (SELECT max(a2.PRECIO) from articulos AS a2 where a2.FABRICANTE = f.CODIGO);

#1.17:
insert into articulos (codigo, nombre, precio, fabricante) values (11, "Altavoces", 70, 2);

#1.18:
update articulos
set nombre = "Impresora Laser"
where codigo = 8;

#1.19:
update articulos
set precio = precio*0.9;

#1.20
update articulos
set precio = precio-10
where precio >= 120;