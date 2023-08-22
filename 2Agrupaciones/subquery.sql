
--esto es una subquery
SELECT
	*
--sebo poner los mimsmo nombres que de las columnas que estan en las subquerys
FROM (
	SELECT
		count(*) as total,
		SUBSTRING(email, POSITION('@' IN email) + 1) AS DOMAIN,
		'Matias' AS name,
		26 AS age
	FROM
		users
	GROUP BY
		SUBSTRING(email, POSITION('@' IN email) + 1)
	HAVING
		count(*) > 1
	ORDER BY
		SUBSTRING(email, POSITION('@' IN email) + 1) ASC
) as email_domains;