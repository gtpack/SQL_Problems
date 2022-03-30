SELECT user_id, user_name, email
FROM(
	SELECT *,
	ROW_NUMBER() OVER (partition BY user_name order by user_id) as rn
	FROM users
	order by user_id
) x
where x.rn <> 1;