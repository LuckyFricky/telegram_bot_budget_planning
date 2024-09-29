create table budget(
    codename varchar(255) primary key,
    daily_limit integer
);

create table category(
    codename varchar(255) primary key,
    name varchar(255),
    is_base_expense boolean,
    aliases text
);

create table expense(
    id integer primary key,
    amount integer,
    created datetime,
    category_codename varchar(255),
    raw_text text,
    FOREIGN KEY(category_codename) REFERENCES category(codename)
);

insert into category (codename, name, is_base_expense, aliases)
values
    ("products", "producti", true, "food"),
    ("coffee", "cofe", true, ""),
    ("dinner", "obed", true, "stolovaya, lunch, business-lunch"),
    ("cafe", "kafe", true, "restaurant, mc, macdonalds,mac , kfc, ilpatio, il patio"),
    ("transport", "transportation", false, "metro, bus"),
    ("taxi", "taksi", false, "uber, yandex taxi"),
    ("phone", "telephone", false, "tele2, connection"),
    ("books", "book", false, "literature"),
    ("internet", "Internet", false, "inet"),
    ("subscriptions", "subs", false, "subscribe"),
    ("other", "prochee", true, "");

insert into budget(codename, daily_limit) values ('base', 500);
