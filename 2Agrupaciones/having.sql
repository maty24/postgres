SELECT
	count(*) as total,
	country
FROM
	users
GROUP BY
	country
--cuando termine de agrupar los datos se ocupa el havin que es para filtrar agrupaciones
HAVING
	count(*) between 1 and 5
ORDER BY
	count(*) DESC;
