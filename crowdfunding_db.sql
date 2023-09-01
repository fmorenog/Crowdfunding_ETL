-- create contacts table
CREATE TABLE contacts (
    contact_id int,
    first_name varchar (50),
    last_name varchar (50),
    email varchar (150),
	primary key (contact_id)
);

-- create category table
CREATE TABLE category(
	category_id varchar (50)   NOT NULL,
    category varchar (50)  NOT NULL,
	primary key (category_id)
)

-- create subcategory table
CREATE TABLE subcategory(
	subcategory_id varchar (50)	NOT NULL,
	subcategory varchar (50)	NOT NULL,
	primary key (subcategory_id)
)

-- create campaign table
CREATE TABLE campaign(
	cf_id int,
    contact_id int,
    company_name varchar (300),
    description varchar (300),
    goal decimal,
    pledged decimal,
	--outcome varchar(50),
    backers_count int,
    country varchar (300),
    currency varchar (300),
    launched_date date,
    end_date date,
    category_id varchar (300),
    subcategory_id varchar (300),
	primary key (cf_id),
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
)

-- Query 1
SELECT * FROM campaign

-- Query 2
SELECT * FROM category

-- Query 3
SELECT * FROM contacts

-- Query 4
SELECT * FROM subcategory
