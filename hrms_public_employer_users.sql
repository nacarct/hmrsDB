create table employer_users
(
    company_id    serial       not null
        constraint companies_pk
            primary key,
    company_name  varchar(100) not null,
    website       varchar(250) not null,
    phone_number  varchar(100) not null,
    email_status  bit          not null,
    system_status bit          not null,
    user_id       integer      not null
        constraint employer_users_users_user_id_fk
            references users
);

comment on table employer_users is 'Firmalar';

comment on column employer_users.company_id is 'Firma Id';

comment on column employer_users.company_name is 'Firma Adı';

comment on column employer_users.website is 'Firma Web Sitesi';

comment on column employer_users.phone_number is 'Firma Telefon Numarası';

comment on column employer_users.email_status is 'Email onay durumu';

comment on column employer_users.system_status is 'Sistem onay durumu';

comment on column employer_users.user_id is 'Kullanıcı Id';

alter table employer_users
    owner to postgres;

create unique index companies_company_id_uindex
    on employer_users (company_id);

create unique index companies_company_name_uindex
    on employer_users (company_name);

create unique index employer_users_user_id_uindex
    on employer_users (user_id);

