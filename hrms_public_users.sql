create table users
(
    user_id     serial       not null
        constraint users_pk
            primary key,
    email       varchar(100) not null,
    password    varchar(100) not null,
    user_status bit
);

comment on table users is 'Kullanıcılar Tablosu';

comment on column users.user_id is 'Kullanıcı Id';

comment on column users.email is 'Kullanıcı Email adresi';

comment on column users.password is 'Kullanıcı Parolası';

comment on column users.user_status is 'Kullanıcı Durumu';

alter table users
    owner to postgres;

create unique index users_email_uindex
    on users (email);

create unique index users_user_id_uindex
    on users (user_id);

INSERT INTO public.users (user_id, email, password, user_status) VALUES (1, 'nacarct@gmail.com', 'Test1234', '1');