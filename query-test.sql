create database ultra_voucher;
use ultra_voucher;

create table t_parent (
	id int primary key,
	name varchar(100) not null
);

create table t_child (
	id int primary key,
	name varchar(100) not null,
	parent_id int,
	foreign key (parent_id) references t_parent(id)
);

insert into t_parent
values (2, "Ilham"),
		(3, "Irwan");
	
insert into t_child
values (1, "Zaki", 2),
		(2, "Ilham", null),
		(3, "Irwan", 2),
		(4, "Arka", 3);
	
select * from t_child tc ;
select * from t_parent tp ;

select tc.id, tc.name, tp.name as parent_name from t_child tc 
left join t_parent tp on(tp.id = tc.parent_id);





