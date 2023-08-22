CREATE TABLE users (
    /*El unique es para el valor sea unico en toda la columna*/
    name VARCHAR(10) UNIQUE
);

--------------------------------------------------------------------------
INSERT INTO
    users (name)
    /*en los valores pongo en orden de las tablas los valores*/
values
    ('valeska'),
    ('maria');

--------------------------------------------------------------------------
/*me traer los ultimos 3 registrados */
SELECT
    *
FROM
    users
limit
    3;

--------------------------------------------------------------------------
/*me trae solo los nombres que tienen el nombre de camilia*/
SELECT
    *
FROM
    users
where
    name = 'camila';

--------------------------------------------------------------------------
/*me trae solo los nombres que comienzen con da */
SELECT
    *
FROM
    users
where
    name LIKE 'da%';

--------------------------------------------------------------------------
/*me trae solo los nombres que terminen con ra */
SELECT
    *
FROM
    users
where
    name LIKE '%ra';

--------------------------------------------------------------------------
/*me elimina todos los datos de la columna*/
DELETE FROM
    users;

--------------------------------------------------------------------------
/*me elimina el nombre de camila, tambien puedo usar las sentencias where para borrar cosas especificas*/
DELETE FROM
    users
where
    name = 'camila';

--------------------------------------------------------------------------
/*esto borra la tabla*/
DROP TABLE users;

--------------------------------------------------------------------------
/*borra todos los registros pero la estructura se mantiene*/
TRUNCATE TABLE users;

/* OPERADORES*/
--------------------------------------------------------------------------
/*todos los usuarios en mayuscula*/
SELECT
    id,
    UPPER(name) as mayuscula_nombre,
    --la cantidad de latras del name
    LENGTH (name) length,
    --esto es como la concatenacion
    id || '-' || name || '*' as concant
from
    users;

----------------------------------------------------------------------------
/*sub string  */
select
    name,
    --en el subtring es para traer una porcion de una cade de texto
    --pongo la columna y pongo la posicion y la segunda hasta donde, en la psicion 0 a la 5
    SUBSTRING(name, 0, 5),
    --me busca la posicion ''
    POSITION(' ' in name),
    --de la columna name en la posicion 0  hasta que este en la posicion ''
    SUBSTRING(name, 0, POSITION(' ' in name)) as first_name,
    -- de la columna name , que corte desde la posision '' y le pongo el +1 para que no ponga el espacio al principio (no recomendable)
    SUBSTRING(name, POSITION(' ' in name) + 1) as last_name,
    -- de la columna name , que corte desde la posision '' y lo envulvo en un trim para 
    TRIM(SUBSTRING(name, POSITION(' ' in name))) as trimmed_last_name
from
    users;

ALTER TABLE
    country
ADD
    PRIMARY KEY (code);

DELETE FROM
    country
WHERE
    code = 'NLD'
    and code2 = 'GU';

select
    *
from
    country
where
    code = 'GUM'