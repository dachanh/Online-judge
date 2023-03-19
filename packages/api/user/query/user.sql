-- name: LoginAccount :one
SELECT *
FROM public."User" as u
Where u.email = $1 AND u.password = $2;

-- name: DeleteUser :one
UPDATE public."User" as u
SET u."status" = "deleted"
WHERE u."ID" = $1
RETURNING *;

-- name: GetAccount :one
SELECT * FROM public."User" as u
WHERE u."ID" = $1; 

