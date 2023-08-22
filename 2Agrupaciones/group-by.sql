SELECT
    -- UN CONTEO ,CUANTOS REGISTRO TIENE LA TABLA
    count(*) AS total_users,
    -- VER EL NUMERO MENOR DE LA TABLA
    MIN(followers) as min_followers,
    -- VER EL NUMERO MAXIMO DE LA TABLA
    MAX(followers) as max_followers,
    -- EL AVG ES PARA VER EL PROMEDIO Y LO ENVULVO EN UN ROUD PARA NO TENER COMAS
    ROUND(AVG(followers)) as avg_followers,
    -- ESTA ES LA FORMA MANUAL QUE ES LA SUMA DE LOS DATOS DE CADA COLUMNA Y  DIVIO EN EL TOTAL DE LA COLUMNA(TOTAL DE LA COLUMNA)
    SUM(followers) / count(*) as avg_manual
FROM
    users;

-----------------------------------
SELECT
    --AGRUPACION
    count(*),
    followers
FROM
    users
WHERE
--le pongo OR para que los follower sean igual a 4 o 4999
    followers = 4
    OR followers = 4999 
    --CUANDO TENGA ALGO DE AGREGACION TENGO QUE PONER EL GROUP BY
GROUP BY
    followers;


-------------------------------------------
SELECT
    count(*) as TOTAL,
    followers
FROM
    users
WHERE
    followers BETWEEN 4500
    AND 4999 --divide los datos en grupos basados en los valores de las columnas especificadas y
GROUP BY
    followers --ordenar los resultados 
ORDER BY
    followers DESC;