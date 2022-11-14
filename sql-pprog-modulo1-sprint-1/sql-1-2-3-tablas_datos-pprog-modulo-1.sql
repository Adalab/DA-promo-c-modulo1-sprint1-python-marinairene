create schema tienda_zapatillas;
use tienda_zapatillas;
create table zapatilla(
id_zapatilla INT AUTO_INCREMENT NOT NULL,
 modelo VARCHAR(45) NOT NULL,
 color VARCHAR(45) NOT NULL,
 PRIMARY KEY (id_zapatilla));
create table cliente (
id_cliente INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR(45) NOT NULL,
numero_telefono INT(9) NOT NULL,
email VARCHAR(45) NOT NULL,
direccion VARCHAR(45) NOT NULL,
ciudad VARCHAR(45),
provincia VARCHAR(45) NOT NULL,
pais VARCHAR(45) NOT NULL,
codigo_postal VARCHAR(45) NOT NULL,
PRIMARY KEY (id_cliente));
create table empleado
(id_empleado INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR(45) NOT NULL,
tienda VARCHAR(45) NOT NULL,
salario INT DEFAULT NULL, 
fecha_incorporacion DATE NOT NULL,
PRIMARY KEY(id_empleado));
create table factura
(id_factura INT AUTO_INCREMENT NOT NULL,
 numero_factura VARCHAR(45) NOT NULL,
 fecha DATE NOT NULL,
 id_zapatilla INT NOT NULL,
 id_empleado INT NOT NULL,
 id_cliente INT NOT NULL,
 PRIMARY KEY(id_factura),
 CONSTRAINT fk_zapatilla_factura FOREIGN KEY (id_zapatilla) REFERENCES zapatilla(id_zapatilla),
 CONSTRAINT fk_empleado_factura FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado),
 CONSTRAINT fk_cliente_factura FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente));
 
 -- PPROG ALTERACIÓN DE TABLAS
ALTER TABLE zapatilla
ADD COLUMN marca VARCHAR(45) NOT NULL;
ALTER TABLE zapatilla
ADD COLUMN talla INT NOT NULL;
ALTER TABLE empleado
MODIFY COLUMN salario FLOAT NOT NULL;
ALTER TABLE cliente
DROP COLUMN pais;
ALTER TABLE cliente
MODIFY COLUMN codigo_postal INT(5);
ALTER TABLE factura
ADD COLUMN total FLOAT;

-- PPROG INSERCIÓN DE DATOS
-- 1 
INSERT INTO zapatilla (id_zapatilla, modelo, color, marca, talla)
VALUES (1,'XQYN','NEGRO', 'NIKE',42),
(2,'UOPMN','ROSAS','NIKE',39),
(3,'OPNYT','VERDES','ADIDAS',35);

INSERT INTO cliente(id_cliente, nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
VALUES (1,'Monica','123456289','monica2email.com','calle Felicidad', 'Mostoles', 'Madrid', '28176') ,
(2,'Lorena','289345678','lorena@email.com','calle Alegria','Barcelona','Barcelona','12346'),
(3,'Carmen','298463759','carmen@email.com','Calle del Color','Vigo','Pontevedra','23456');

INSERT INTO empleado (id_empleado, nombre, tienda, salario, fecha_incorporacion)
VALUES (1,'Laura','Alcobendas',25987,'2010-09-03'),
(2,'Maria','Sevilla',0,'2001-04-11'),
(3,'Ester','Oviedo',30165.98,'2000-11-29');

INSERT INTO factura (id_factura, numero_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)
VALUES (1, '123', '2001-12-11', 1, 2, 1, 54.98),
(2, '1234', '2002-05-23', 1, 1, 3, 89.91),
(3,'12345', '2015-09-18', 2, 3, 3, 76.23);

-- 2 : he intentado cambiando la columna en where y nada...
update zapatilla
set color= 'AMARILLO'
where color= 'ROSA';

update empleados
set tienda= 'A Coruña'
where nombre= 'Laura';

update clientes
set numero_telefono= '123456728'
where nombre= 'Monica';

update factura
set total= 89.91
where id_factura= 2;
















