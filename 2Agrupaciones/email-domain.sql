--esto busca los valares unicos
select distinct  country from users





select
--me quedo con el dominio del correo
count(*),
	SUBSTRING(email, POSITION('@' IN email) + 1) AS DOMAIN
from users
group by email;



SELECT
	count(*),
	SUBSTRING(email, POSITION('@' IN email) + 1) AS DOMAIN
FROM
	users
--tengo que usar la misma funcion en el group by
GROUP BY
	SUBSTRING(email, POSITION('@' IN email) + 1)
HAVING
    --de la agupacion que me filtre los que tengan mas de 1 dominio
	count(*) > 1
order by
	SUBSTRING(email, POSITION('@' IN email) + 1) asc;


