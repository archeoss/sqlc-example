-- name: GetAuthor :one
SELECT * FROM authors2
WHERE id = $1 LIMIT 1;

-- name: ListAuthors :many
SELECT * FROM authors2
ORDER BY name;

-- name: CreateAuthor :one
INSERT INTO authors2 (
  name, bio
) VALUES (
  $1, $2
)
RETURNING *;

-- name: UpdateAuthor :exec
UPDATE authors2
  set name = $2,
  bio = $3
WHERE id = $1;

-- name: DeleteAuthor :exec
DELETE FROM authors2
WHERE id = $1
RETURNING *;
