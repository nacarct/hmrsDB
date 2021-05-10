create table job_seeker_users
(
    job_seeker_user_id serial       not null
        constraint job_seeker_users_pk
            primary key,
    first_name         varchar(100) not null,
    last_name          varchar(100) not null,
    citizen_id         integer      not null,
    year_of_birth      smallint     not null,
    user_id            integer      not null
        constraint job_seeker_users_users_user_id_fk
            references users,
    email_status       bit          not null,
    citizen_id_status  bit          not null
);

comment on table job_seeker_users is 'İş Arayan Kullanıcılar';

comment on column job_seeker_users.job_seeker_user_id is 'İş Arayan Kullanıcı Id';

comment on column job_seeker_users.first_name is 'Ad';

comment on column job_seeker_users.last_name is 'Soyad';

comment on column job_seeker_users.citizen_id is 'Vatandaşlık Numarası';

comment on column job_seeker_users.year_of_birth is 'Doğum Yılı';

comment on column job_seeker_users.user_id is 'Kullanıcı Id';

comment on column job_seeker_users.email_status is 'Email onay durumu';

comment on column job_seeker_users.citizen_id_status is 'Vatandaşlık onay durumu';

alter table job_seeker_users
    owner to postgres;

create unique index job_seeker_users_citizen_id_uindex
    on job_seeker_users (citizen_id);

create unique index job_seeker_users_job_seeker_user_id_uindex
    on job_seeker_users (job_seeker_user_id);

create unique index job_seeker_users_user_id_uindex
    on job_seeker_users (user_id);

