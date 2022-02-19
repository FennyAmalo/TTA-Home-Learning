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
('03', 'Ethereum', '2021-04-18', '120', '2', '240');
select * from crypto;
