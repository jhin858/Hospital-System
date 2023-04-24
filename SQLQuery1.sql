create database Hospital_X
go
use Hospital_X
go
create schema PAT;
go
create table patient
(
PAT_id int not null ,
PAT_name varchar (50) not null ,
PAT_gender varchar (50) not null ,
PAT_address varchar (50) not null ,
PAT_doc_code varchar (50) not null ,
)
go 
alter table patient
add constraint  pk_patient_id
primary key (PAT_id);
go
create schema DOC;
go
create table doctor
(
DOC_code int not null,
DOC_name varchar (100) not null ,
DOC_gender varchar (50) not null ,
DOC_Address varchar (100) not null ,
DOC_designation varchar (150) not null ,
DOC_number varchar (50) not null ,
)
go 
alter table doctor
add constraint doctor_code 
primary key (DOC_code) ;
go
create schema PAT_DIG ;
go
create table patient_diagnosis
(
DIAG_id int not null ,
DIAG_details varchar (200) not null ,
DIAG_remarks varchar (300) not null ,
DIAG_date date  ,
)
go
alter table patient_diagnosis
add constraint diagnosis_id 
primary key (DIAG_id) ;
go
create schema BL
go
create table BILL
(
BILL_no varchar (100) not null ,
PAT_name varchar (50) not null ,
PAT_gender varchar (50) not null ,
PAT_address varchar (50) not null ,
DOC_name varchar (100) not null ,
amount varchar (50) not null,
)
go 
--foreign key 
alter table patient
add constraint fk_patient_doctor_code
foreign key (PAT_doc_code)
references doctor (DOC_code)
go
alter table patient_diagnosis
add constraint fk1_patient_id
foreign key (PAT_id)
references patient (PAT_id);
go
alter table BL
add constraint fk1_patient_id
foreign key (PAT_id)
references patient (PAT_id);
go








