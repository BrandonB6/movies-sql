-- primary keys can't be empty or duplicated

create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	rating_age_id VARCHAR(20)
);

create table concessions(
	order_id SERIAL primary key,
	product_count INTEGER,
	product_avg_price NUMERIC(7,2),
	order_total NUMERIC(7,2),
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id)
);


create table ticket(
	ticket_id SERIAL primary key,
	date_id DATE default CURRENT_DATE,
	matinee_id BOOLEAN not null,
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id)
);

create table movie(
	movie_id SERIAL primary key,
	rating VARCHAR(20),
	ticket_id INTEGER not null,
	foreign key(ticket_id) references ticket(ticket_id)
);



