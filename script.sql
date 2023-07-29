show databases;
create database sistemadeventas;
use sistemadeventas;
show databases;
show tables;
#se crea tabla vendedor
create table if not exists vendedor(
id_vendedor int auto_increment primary key not null,
dni varchar(8),
nombre varchar(255) not null,
telefono varchar(9) not null,
estado varchar(1)not null,
user_2 varchar(8) not null
)engine=innodb;

create table if not exists cliente(
idcliente int (11) auto_increment primary key not null,
dni varchar (8) not null,
nombres varchar(244) not null,
direccion varchar(244) not null,
estado varchar (1) not null
)engine=innodb;
-- probando tabla en netbens
insert into cliente(dni,nombres,direccion,estado)
    values ('5475',"breinner",'candelaria 35',"0");
   -- update  cliente set estado="1" where idcliente=1;


create table if not exists ventas(
idventas int (11)auto_increment primary key not null, 
numeroventas varchar(244) not null,
fechaventas date not null,
monto double not null,
estado varchar (1) not null,
cliente_idcliente int(11) not null,
vendedor_idvendedor int not null,
foreign key (cliente_idcliente)
references cliente(idcliente),
foreign key (vendedor_idvendedor)
references vendedor(id_vendedor)
)engine=innodb;
#alter table ventas add primary key (idventas);
#drop table ventas;
describe ventas;
show tables;
create table  if not exists producto(
idproducto int(11) auto_increment primary key not null,
nombres varchar(244) not null,
precio double not null,
stock int(11) not null,
estado  varchar (1) not null
)engine=innodb;

#drop table producto;
create table if not exists detalle_ventas(
iddetalleventas int (11) auto_increment primary key  not null,
cantidad int (11)  not null,
precioventa double not null,
ventas_idventas int(11) not null,
producto_idproductos int (11) not null,
foreign key (ventas_idventas)
references  ventas(idventas),
foreign key (producto_idproductos)
references   producto(idproducto)
)engine=innodb;
show tables;
describe ventas;
describe detalle_ventas;