create database crypto;
use crypto;
create table crypto(
coin_id int not null,
coin varchar(30),
date_bought date,
cost decimal (8,2),
amount decimal (8,2),
total decimal (8,2),
primary key (coin_id),
unique (coin)
);
alter table crypto
modify coin varchar(30) not null;
INSERT INTO crypto (coin_id, coin, date_bought, cost, amount, total)
VALUES ('01', 'Basic Attention Token', '2020-01-05', '0.30', '100', '30'),
('02', 'Bitcoin', '2020-12-03', '8700', '1', '8700'),
('03', 'Ethereum', '2021-04-18', '120', '2', '240'),
('04', 'Ripple', '2021-08-16', '0.16', '100', '16'),
('05', 'Binance Coin', '2021-06-02', '190', '1', '190'),
('06', 'Cardano', '2020-11-30', '0.89', '100', '89'),
('07', 'Elron Gold', '2021-04-17', '120', '3', '360'),
('08', 'Chainlink', '2020-08-29', '10.2', '5', '51'),
('09', 'Solana', '2021-02-11', '30', '8', '240'),
('10', 'VeChain', '2021-01-01', '0.05', '1000', '50');
select * from crypto;
create table clients(
client_id int not null,
client_name varchar(30),
email varchar(50),
phone int not null,
primary key (client_id));
alter table clients
rename column client_name to first_name;
alter table clients
add last_name varchar(30);
insert into clients (client_id, first_name, last_name, email, phone)
values ('1', 'Anna', 'Stewart', 'astewart@gmail.com', '07845324567'),
('2', 'Jimmy', 'Vanilli', 'jvanilli@yahoo.com', '987465389'),
('3', 'Barry', 'Manillow', 'bmanillow@live.com', '876345673'),
('4', 'Charlie', 'Chaplin', 'cchaplin@hotmail.com', '08745362');
alter table clients
modify phone int(12) not null;
select * from clients;
insert into clients (client_id, first_name, last_name, email, phone)
values ('1', 'Anna', 'Stewart', 'astewart@gmail.com', '07845324567'),
('2', 'Jimmy', 'Vanilli', 'jvanilli@yahoo.com', '987465389'),
('3', 'Barry', 'Manillow', 'bmanillow@live.com', '876345673'),
('4', 'Charlie', 'Chaplin', 'cchaplin@hotmail.com', '08745362');
alter table clients
modify phone varchar(30) not null;
select * from clients;
insert into clients (client_id, first_name, last_name, email, phone)
values ('1', 'Anna', 'Stewart', 'astewart@gmail.com', '07845324567'),
('2', 'Jimmy', 'Vanilli', 'jvanilli@yahoo.com', '987465389'),
('3', 'Barry', 'Manillow', 'bmanillow@live.com', '876345673'),
('4', 'Charlie', 'Chaplin', 'cchaplin@hotmail.com', '08745362');
select * from clients;
alter table crypto
rename column coin_id to client_id;
select crypto.client_id, clients.client_id
from crypto
inner join clients
on crypto.client_id = clients.client_id;
update crypto
set date_bought = '2020-05-13'
where client_id = 2;
select * from crypto;
delete from crypto
where cost = "120";
select * from crypto;
delete from crypto
where cost = '120';
select * from crypto;
use crypto;
select * from clients
where last_name = 'Vanilli';
select * from crypto, clients
where crypto.client_id = clients.client_id and clients.last_name = "Chaplin";
select * from crypto, clients
where crypto.client_id = clients.client_id and crypto.date_bought = '2020-12-03';
select crypto.client_id ,clients.last_name 
from crypto
join clients
on crypto.client_id = clients.last_name
order by client_id;
select * from crypto
where cost between 0.10 and 10;