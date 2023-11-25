insert into customer(
	customer_id,
	first_name,
	last_name,
	rating_age_id
) values (
	1,
	'Kenneth',
	'Coleman',
	'R'
);

insert into concessions(
	order_id,
	product_count,
	product_avg_price,
	order_total,
	customer_id
)	values (
		1,
		2,
		.9,
		1.8,
		1
);

insert into ticket( 
	ticket_id,
	matinee_id,
	customer_id
) values (
	1,
	true,
	1
);

insert into movie(
	movie_id,
	rating,
	ticket_id
) values (
	1,
	'G',
	1
);


	