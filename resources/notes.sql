

-- :name create-notes-table
-- :command :execute
-- :result :raw
-- :doc create notes table
create table notes (
	id SERIAL primary key,
	title TEXT,
	content TEXT,
	created_at timestamp not null default current_timestamp
);

-- :name get-notes :? :*
select * from notes;

-- :name get-notes-by-id :? :*
select * from notes where id =:id;

-- :name update-note-by-id :! :1
update notes
set title = :title, content = :content
where id = :id

-- :name insert-note :? :1
insert into notes (title, content)
values (:title, :content)
RETURNING id;

-- :name delete-note-by-id :! :1
delete from notes where id = :id;