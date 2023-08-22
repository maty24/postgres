--le estoy dificiento que el surfearea no puede recivir valores menores a 0
ALTER TABLE
    country
ADD
    check (surfacearea >= 0);

SELECT
    DISTINCT continent
from
    country;

--le digo que estos son los contitentes permidtos en la columna y puedo hacer multiples validaciones
ALTER TABLE
    country
add
    CHECK (
        (continent = 'Asia')
        or (continent = 'South America')
        or (continent = 'North America')
        or (continent = 'Antarctica')
        or (continent = 'Oceania')
        or (continent = 'Africa')
        or (continent = 'Europe')
    );