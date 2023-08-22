--ESTOY ALTERANDO UNA TABLA
ALTER TABLE
    country --ESTOY DICIENTO QUE LA COLUMNA CODE SEA LA LLAVE PRIMARIA
ADD
    PRIMARY KEY (code);

DELETE FROM
    country
WHERE
    code = 'NLD'
    and code2 = 'NA';

select
    *
from
    country
where
    code = 'NLD';