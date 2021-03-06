/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     20.03.2017 3:32:51                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Location') and o.name = 'FK_LOCATION_REFERENCE_CITY')
alter table Location
   drop constraint FK_LOCATION_REFERENCE_CITY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Location') and o.name = 'FK_LOCATION_REFERENCE_METRO_ST')
alter table Location
   drop constraint FK_LOCATION_REFERENCE_METRO_ST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Query') and o.name = 'FK_QUERY_REFERENCE_QUERY_NA')
alter table Query
   drop constraint FK_QUERY_REFERENCE_QUERY_NA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Query_vacancy') and o.name = 'FK_QUERY_VA_REFERENCE_VACANCY')
alter table Query_vacancy
   drop constraint FK_QUERY_VA_REFERENCE_VACANCY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Query_vacancy') and o.name = 'FK_QUERY_VA_REFERENCE_QUERY')
alter table Query_vacancy
   drop constraint FK_QUERY_VA_REFERENCE_QUERY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Salary') and o.name = 'FK_SALARY_REFERENCE_CURRENCY')
alter table Salary
   drop constraint FK_SALARY_REFERENCE_CURRENCY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Vac_con') and o.name = 'FK_VAC_CON_REFERENCE_CONDITIO')
alter table Vac_con
   drop constraint FK_VAC_CON_REFERENCE_CONDITIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Vac_con') and o.name = 'FK_VAC_CON_REFERENCE_VACANCY')
alter table Vac_con
   drop constraint FK_VAC_CON_REFERENCE_VACANCY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Vac_exp') and o.name = 'FK_VAC_EXP_REFERENCE_VACANCY')
alter table Vac_exp
   drop constraint FK_VAC_EXP_REFERENCE_VACANCY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Vac_exp') and o.name = 'FK_VAC_EXP_REFERENCE_EXPECTAT')
alter table Vac_exp
   drop constraint FK_VAC_EXP_REFERENCE_EXPECTAT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Vac_req') and o.name = 'FK_VAC_REQ_REFERENCE_VACANCY')
alter table Vac_req
   drop constraint FK_VAC_REQ_REFERENCE_VACANCY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Vac_req') and o.name = 'FK_VAC_REQ_REFERENCE_REQUERME')
alter table Vac_req
   drop constraint FK_VAC_REQ_REFERENCE_REQUERME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Vacancy') and o.name = 'FK_VACANCY_REFERENCE_COMPANY')
alter table Vacancy
   drop constraint FK_VACANCY_REFERENCE_COMPANY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Vacancy') and o.name = 'FK_VACANCY_REFERENCE_LOCATION')
alter table Vacancy
   drop constraint FK_VACANCY_REFERENCE_LOCATION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Vacancy') and o.name = 'FK_VACANCY_REFERENCE_NAME_VAC')
alter table Vacancy
   drop constraint FK_VACANCY_REFERENCE_NAME_VAC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Vacancy') and o.name = 'FK_VACANCY_REFERENCE_SALARY')
alter table Vacancy
   drop constraint FK_VACANCY_REFERENCE_SALARY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Vacancy') and o.name = 'FK_VACANCY_REFERENCE_EXPERIEN')
alter table Vacancy
   drop constraint FK_VACANCY_REFERENCE_EXPERIEN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('City')
            and   type = 'U')
   drop table City
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Company')
            and   type = 'U')
   drop table Company
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Conditions')
            and   type = 'U')
   drop table Conditions
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Currency')
            and   type = 'U')
   drop table Currency
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Expectations')
            and   type = 'U')
   drop table Expectations
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Experience')
            and   type = 'U')
   drop table Experience
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Location')
            and   type = 'U')
   drop table Location
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Metro_station')
            and   type = 'U')
   drop table Metro_station
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Name_vacancy')
            and   type = 'U')
   drop table Name_vacancy
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Query')
            and   type = 'U')
   drop table Query
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Query_name')
            and   type = 'U')
   drop table Query_name
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Query_vacancy')
            and   type = 'U')
   drop table Query_vacancy
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Requerments')
            and   type = 'U')
   drop table Requerments
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Salary')
            and   type = 'U')
   drop table Salary
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Vac_con')
            and   type = 'U')
   drop table Vac_con
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Vac_exp')
            and   type = 'U')
   drop table Vac_exp
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Vac_req')
            and   type = 'U')
   drop table Vac_req
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Vacancy')
            and   type = 'U')
   drop table Vacancy
go

/*==============================================================*/
/* Table: City                                                  */
/*==============================================================*/
create table City (
   id_city              int                  identity(1,1),
   name_city            varchar(40)          not null	UNIQUE NONCLUSTERED,
   constraint PK_CITY primary key (id_city)
)
go

/*==============================================================*/
/* Table: Company                                               */
/*==============================================================*/
create table Company (
   id_company           int                  identity(1,1),
   name_company         varchar(200)          not null	UNIQUE NONCLUSTERED,
   constraint PK_COMPANY primary key (id_company)
)
go

/*==============================================================*/
/* Table: Conditions                                            */
/*==============================================================*/
create table Conditions (
   id_condition         int                  identity(1,1),
   text_condition       varchar(1000)        not null	UNIQUE NONCLUSTERED,
   constraint PK_CONDITIONS primary key (id_condition)
)
go

/*==============================================================*/
/* Table: Currency                                              */
/*==============================================================*/
create table Currency (
   id_currency          int                  identity(1,1),
   name_currency        varchar(3)           not null	UNIQUE NONCLUSTERED,
   constraint PK_CURRENCY primary key (id_currency)
)
go

/*==============================================================*/
/* Table: Expectations                                          */
/*==============================================================*/
create table Expectations (
   id_expectation       int                  identity(1,1),
   text_expectation     varchar(1000)         not null	UNIQUE NONCLUSTERED,
   constraint PK_EXPECTATIONS primary key (id_expectation)
)
go

/*==============================================================*/
/* Table: Experience                                            */
/*==============================================================*/
create table Experience (
   id_experience        int                  identity(1,1),
   text_experience      varchar(20)          not null UNIQUE NONCLUSTERED,
   constraint PK_EXPERIENCE primary key (id_experience)
)
go

/*==============================================================*/
/* Table: Location                                              */
/*==============================================================*/
create table Location (
   id_location          int                  identity(1,1),
   id_city              int                  null,
   id_metro_station     int                  null,
   constraint PK_LOCATION primary key (id_location)
)
go

/*==============================================================*/
/* Table: Metro_station                                         */
/*==============================================================*/
create table Metro_station (
   id_metro_station     int                  identity(1,1),
   name_metro_station   varchar(50)          not null UNIQUE NONCLUSTERED,
   constraint PK_METRO_STATION primary key (id_metro_station)
)
go

/*==============================================================*/
/* Table: Name_vacancy                                          */
/*==============================================================*/
create table Name_vacancy (
   id_name_vacancy      int                  identity(1,1),
   name_vacancy         varchar(200)          not null UNIQUE NONCLUSTERED,
   constraint PK_NAME_VACANCY primary key (id_name_vacancy)
)
go

/*==============================================================*/
/* Table: Query                                                 */
/*==============================================================*/
create table Query (
   id_query             int                  identity(1,1),
   id_query_name        int                  null,
   time_query           datetime             not null,
   time_analyze_query   int                  not null,
   constraint PK_QUERY primary key (id_query)
)
go

/*==============================================================*/
/* Table: Query_name                                            */
/*==============================================================*/
create table Query_name (
   id_query_name        int                  identity(1,1),
   name_query           varchar(200)          not null	UNIQUE NONCLUSTERED,
   constraint PK_QUERY_NAME primary key (id_query_name)
)
go

/*==============================================================*/
/* Table: Query_vacancy                                         */
/*==============================================================*/
create table Query_vacancy (
   id_query_vacancy     int                  identity(1,1),
   id_vacancy           int                  null,
   id_query             int                  null,
   constraint PK_QUERY_VACANCY primary key (id_query_vacancy)
)
go

/*==============================================================*/
/* Table: Requerments                                           */
/*==============================================================*/
create table Requerments (
   id_requerment        int                  identity(1,1),
   text_requerment      varchar(1000)         not null	UNIQUE NONCLUSTERED,
   constraint PK_REQUERMENTS primary key (id_requerment)
)
go

/*==============================================================*/
/* Table: Salary                                                */
/*==============================================================*/
create table Salary (
   id_salary            int                  identity(1,1),
   salary               int                  null,
   id_currency          int                  null,
   constraint PK_SALARY primary key (id_salary)
)
go

/*==============================================================*/
/* Table: Vac_con                                               */
/*==============================================================*/
create table Vac_con (
   id_desc_con          int                  identity(1,1),
   id_vacancy           int                  null,
   id_condition         int                  null,
   constraint PK_VAC_CON primary key (id_desc_con)
)
go

/*==============================================================*/
/* Table: Vac_exp                                               */
/*==============================================================*/
create table Vac_exp (
   id_desc_exp          int                  identity(1,1),
   id_vacancy           int                  null,
   id_expectation       int                  null,
   constraint PK_VAC_EXP primary key (id_desc_exp)
)
go

/*==============================================================*/
/* Table: Vac_req                                               */
/*==============================================================*/
create table Vac_req (
   id_desc_req          int                  identity(1,1),
   id_vacancy           int                  null,
   id_requerment        int                  null,
   constraint PK_VAC_REQ primary key (id_desc_req)
)
go

/*==============================================================*/
/* Table: Vacancy                                               */
/*==============================================================*/
create table Vacancy (
   id_vacancy           int                  identity(1,1),
   id_name_vacancy      int                  not null,
   id_company           int                  not null,
   id_salary            int                  null,
   id_experience        int                  not null,
   id_location          int                  not null,
   date_vacancy         date                 null,
   url_vacancy          varchar(200)         not null	UNIQUE NONCLUSTERED,
   constraint PK_VACANCY primary key (id_vacancy)
)
go

alter table Location
   add constraint FK_LOCATION_REFERENCE_CITY foreign key (id_city)
      references City (id_city)
go

alter table Location
   add constraint FK_LOCATION_REFERENCE_METRO_ST foreign key (id_metro_station)
      references Metro_station (id_metro_station)
go

alter table Query
   add constraint FK_QUERY_REFERENCE_QUERY_NA foreign key (id_query_name)
      references Query_name (id_query_name)
go

alter table Query_vacancy
   add constraint FK_QUERY_VA_REFERENCE_VACANCY foreign key (id_vacancy)
      references Vacancy (id_vacancy)
go

alter table Query_vacancy
   add constraint FK_QUERY_VA_REFERENCE_QUERY foreign key (id_query)
      references Query (id_query)
go

alter table Salary
   add constraint FK_SALARY_REFERENCE_CURRENCY foreign key (id_currency)
      references Currency (id_currency)
go

alter table Vac_con
   add constraint FK_VAC_CON_REFERENCE_CONDITIO foreign key (id_condition)
      references Conditions (id_condition)
go

alter table Vac_con
   add constraint FK_VAC_CON_REFERENCE_VACANCY foreign key (id_vacancy)
      references Vacancy (id_vacancy)
go

alter table Vac_exp
   add constraint FK_VAC_EXP_REFERENCE_VACANCY foreign key (id_vacancy)
      references Vacancy (id_vacancy)
go

alter table Vac_exp
   add constraint FK_VAC_EXP_REFERENCE_EXPECTAT foreign key (id_expectation)
      references Expectations (id_expectation)
go

alter table Vac_req
   add constraint FK_VAC_REQ_REFERENCE_VACANCY foreign key (id_vacancy)
      references Vacancy (id_vacancy)
go

alter table Vac_req
   add constraint FK_VAC_REQ_REFERENCE_REQUERME foreign key (id_requerment)
      references Requerments (id_requerment)
go

alter table Vacancy
   add constraint FK_VACANCY_REFERENCE_COMPANY foreign key (id_company)
      references Company (id_company)
go

alter table Vacancy
   add constraint FK_VACANCY_REFERENCE_LOCATION foreign key (id_location)
      references Location (id_location)
go

alter table Vacancy
   add constraint FK_VACANCY_REFERENCE_NAME_VAC foreign key (id_name_vacancy)
      references Name_vacancy (id_name_vacancy)
go

alter table Vacancy
   add constraint FK_VACANCY_REFERENCE_SALARY foreign key (id_salary)
      references Salary (id_salary)
go

alter table Vacancy
   add constraint FK_VACANCY_REFERENCE_EXPERIEN foreign key (id_experience)
      references Experience (id_experience)
go

