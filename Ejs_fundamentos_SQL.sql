-- 1.EJERCICIO: Seleccionar todos los registros de la columna name de la tabla category y renombrar el atributo como genero;
SELECT * FROM category;
SELECT name as genero FROM category;
-- 2.EJERCICIO: Cuenta el numero de nombres distintos de la tabla actor e identifica la tabla con el nuevo nombre numero_filas;
SELECT COUNT(DISTINCT(first_name)) as numero_filas FROM actor;
-- 3.EJERCICIO: Selecciona los atributos de titulo, duracion de alquiler y precio del alquiler de la pelicula (tabla film) para la pelicula con film_id=5;
SELECT title, rental_duration, replacement_cost FROM film WHERE film_id=5;
-- 4.EJERCICIO: Ordena las peliculas de mas cortas a mas largas,
SELECT * FROM film ORDER BY length ASC;
--5.EJERCICIO: Encuentra las peliculas con una duracion inferior a 50 minutos y un precio de alquiler igual a 4.99
SELECT * FROM film
WHERE length<50 AND rental_rate=4.99;
--6.EJERCICIO: Encuentra los registros de pagos realizados entre 2007-04-20 y 2007-04-18 y ordenalos en funcion de la cantidad pagada de manera descendente.
SELECT * FROM payment
WHERE payment_date BETWEEN '2007-04-20' AND '2007-04-18' ORDER BY amount DESC;
-- 7.EJERCICIO:  Encuentra los registros de pagos superiores a 7.00, realizados entre 2007-04-10 y 2007-04-18 donde la persona empleada sea la que tenga el staff_id=2.