-- name: LoginAccount :one
SELECT *
FROM public."User" as u
Where u.email = $1 AND u.password = $2;