create table patients(id serial primary key , name varchar(50) , date_of_birth date);

create table invoices(
    id serial primary key , 
    total_amount decimal , 
    generated_at timestamp ,
    payed_at timestamp,
    medical_history_id int,
    constraint fk 
    foreign key medical_history_id 
    references medical_histories(id) 
    on delete cascade
    )

create table medical_histories(
    id serial primary key ,
    admitted_at timestamp,
    patient_id int,
    status varchar default active,
    constraint fk 
    foreign key patient_id
    references patients(id)
    )    