CREATE TABLE notes (
	id SERIAL PRIMARY KEY,
	title TEXT,
	content TEXT,
	created_at TIMESTAMP NOT NULL DEFAULT current_timestamp
);
