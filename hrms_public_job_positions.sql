create table job_positions
(
    job_position_id   serial       not null
        constraint job_positions_pk
            primary key,
    job_position_name varchar(100) not null
);

comment on table job_positions is 'İş Pozisyonları';

comment on column job_positions.job_position_id is 'Pozisyon Id';

comment on column job_positions.job_position_name is 'Pozisyon Adı';

alter table job_positions
    owner to postgres;

create unique index job_positions_job_position_id_uindex
    on job_positions (job_position_id);

create unique index job_positions_job_position_name_uindex
    on job_positions (job_position_name);

