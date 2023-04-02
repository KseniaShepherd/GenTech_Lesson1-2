# # 1 уровень сложности: 1. Создать таблицу staff с полями:
# # • id – integer - уникальное значение, не null, с автозаполнением
# # • firstname - varchar - не null
# # • lastname - varchar - не null
# # • position - varchar
# # • age - integer - от 0 до 110
# # • has_child – либо Y, либо N
# # • username - varchar - уникальный
# use ygyeughe;
# create table Staff(
#     id int primary key not null auto_increment,
#     firstname varchar(100) not null,
#     lastname varchar(100) not null ,
#     position varchar(100),
#     age int check ( age>=0 && age<=110 ),
#     has_child char(1) check ( has_child in ('Y', 'N') ),
#     username varchar(100) UNIQUE
# );
# # Используя файл staff.txt заполнить таблицу,
#
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Anna'
#     , 'Khachaturyan'
#     , 'Senior Teacher'
#     , 22
#     , 'N'
#     , 'annakhach5'
#     );
#
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Tom'
#     , 'Austin'
#     , 'Junior Blogger'
#     , 25
#     , 'Y'
#     , 'tom12345'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Bill'
#     , 'Lorentz'
#     , 'Junior Web Developer'
#     , 40
#     , 'Y'
#     , 'billt1'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Lily'
#     , 'May'
#     , 'Junior Backend Developer'
#     , 25
#     , 'Y'
#     , 'lil12'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Nona'
#     , 'Lucky'
#     , 'Junior Teacher'
#     , 20
#     , 'N'
#     , 'LuckyNona'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ( 'Nancy'
#     , 'Greenberg'
#     , 'Middle UI Designer'
#     , 32
#     , 'Y'
#     , 'nancy1'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Daniel'
#     , 'Faviet'
#     , 'Senior UX Designer'
#     , 43
#     , 'Y'
#     , 'favietD'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Ally'
#     , 'Austin'
#     , 'Junior UI Designer'
#     , 28
#     , 'N'
#     , 'ally1'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Lily'
#     , 'Chen'
#     , 'Senior Teacher'
#     , 25
#     , 'Y'
#     , 'lilychen'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Anna'
#     , 'Austin'
#     , 'Middle Teacher'
#     , 34
#     , 'Y'
#     , 'anna28'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Alexander'
#     , 'Lorentz'
#     , 'Junior Backend Developer'
#     , 25
#     , 'N'
#     , 'alex12345'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Ashley'
#     , 'Lorentz'
#     , 'Junior UX Designer'
#     , 18
#     , 'N'
#     , 'lorentz99'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Tom'
#     , 'Lucky'
#     , 'Middle Blogger'
#     , 34
#     , 'Y'
#     , 'lucky78'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Ashley'
#     , 'Weiss'
#     , 'Junior Blogger'
#     , 18
#     , 'N'
#     , 'weiss11'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Tom'
#     , 'Weiss'
#     , 'Junior UI Designer'
#     , 18
#     , 'N'
#     , 'tom222'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Anna'
#     , 'Bloom'
#     , 'Middle UX Designer'
#     , 20
#     , 'N'
#     , 'bloom5'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Tom'
#     , 'Berg'
#     , 'Middle Teacher'
#     , 34
#     , 'N'
#     , 'tommy1'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Ashley'
#     , 'Berg'
#     , 'Senior Teacher'
#     , 37
#     , 'N'
#     , 'ash89'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Lily'
#     , 'Weiss'
#     , 'Middle Blogger'
#     , 45
#     , 'N'
#     , 'lilyW1'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Anna'
#     , 'Lorentz'
#     , 'Senior UX Designer'
#     , 31
#     , 'N'
#     , 'annlo1'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Ashley'
#     , 'Weiss'
#     , 'Middle UX Designer'
#     , 18
#     , 'N'
#     , 'weiss1'
#     );
# INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES
#     ('Anna'
#     , 'Keren'
#     , 'Junior UX Designer'
#     , 34
#     , 'N'
#     , 'annaK1'
#     );
#
# # Получить всю таблицу,
# select * from Staff;



# Найти список работников, которым больше 30 лет и у них нет детей,
#
# select * from Staff
# where has_child = 'N' and age>30;


# Найти список работников, у которых средний уровень должности и им больше 20 лет,
#
# select * from Staff
# where position like 'Middle%' and age>20;


# Найти список работников, у которых имя начинается с буквы А и у них нет детей,
#

# select * from Staff
# where firstname like 'A%' and has_child = 'N';

# Найти список работников, которым меньше 25, у них младший уровень должности и у них нет
# детей,
#
# select * from Staff
# where position like 'Junior%' and has_child = 'N';


# Найти список работников с именем Анна, у которых уровень должности либо средний, либо
# старший,
#
# select * from Staff
# where firstname ='Anna' and (position like 'Middle%' or position like 'Senior%');


# Найти всех блогеров,
# select * from Staff
# where position like '%Blogger%';


# Найти всех преподавателей, у которых есть дети,
#
# select * from Staff
# where position like '%Teacher%' and has_child = 'Y';


# Найти всех дизайнеров, которым меньше 40,
#
# select * from Staff
# where position like '%Designer%' and age<40;

# Найти всех Томов со средним уровнем должности,
#
# select * from Staff
# where firstname ='Tom' and position like 'Middle%';


# Найти всех с фамилией Лоренц у который нет детей, и они молодые работники (младший
# уровень должности),
#
# select * from Staff
# where lastname ='Lorentz' and position like 'Junior%' and has_child = 'N';

# Найти список работников, у который юзернейм заканчивается на ‘1’,
#
# select * from Staff
# where username like '%1';

# Найти список работников в возрасте от 20 до 30 лет, у которых младший уровень должности.
select * from Staff
where position like 'Junior%' and (age>20 and age<30) ;