drop table if exists user;
drop table if exists post;

create table user(
    id integer primary key AUTOINCREMENT,
    username TEXT unique not null,
    password TEXT not null
);

create table post(
    id integer primary key AUTOINCREMENT,
    title TEXT not null,
    body TEXT not null,
    created timestamp not null default current_timestamp ,
    author_id integer not null,
    foreign key (author_id) references user(id)
);

