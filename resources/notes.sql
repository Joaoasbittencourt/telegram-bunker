--- :name create-notes-table
--- :command :execute
--- :result :raw
--- :doc create notes table
CREATE TABLE notes (
	id SERIAL PRIMARY KEY,
	title TEXT,
	content TEXT,
	created_at TIMESTAMP NOT NULL DEFAULT current_timestamp
);
