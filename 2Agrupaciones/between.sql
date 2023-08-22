SELECT
	first_name,
	last_name,
	followers
FROM
	users
WHERE
	-- followers >= 4600 AND followers <= 4700
    --PARA DECIR QUE QUIERO DATOS EN ESE RANGO
	followers between 4600 and 4700

--LE PONGO ORDER BY PARA ORDENALOS
order by
	followers ASC ;