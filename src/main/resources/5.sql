SELECT name
FROM customers inner join projects on projects.customer_id = customers.id
where cost = (select min(cost) from projects)