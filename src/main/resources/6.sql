SELECT avg(salary) as average
FROM developers inner join projects on projects.company_id = developers.company_id
WHERE projects.cost = (select min(cost) from projects)
