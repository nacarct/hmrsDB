create table system_users
(
    system_user_id serial       not null
        constraint system_users_pk
            primary key,
    first_name     varchar(100) not null,
    last_name      varchar(100) not null,
    user_id        integer      not null
        constraint system_users_user_id_fk
            references users
);

comment on table system_users is 'Sistem Kullanıcıları';

comment on column system_users.system_user_id is 'Sistem Kullanıcı Id';

comment on column system_users.first_name is 'Ad';

comment on column system_users.last_name is 'Soyad';

comment on column system_users.user_id is 'Kullanıcı Id';

alter table system_users
    owner to postgres;

create unique index system_users_system_user_id_uindex
    on system_users (system_user_id);

create unique index system_users_user_id_uindex
    on system_users (user_id);

