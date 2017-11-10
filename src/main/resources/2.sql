SELECT project, sum(salary) as total
FROM projects, developers
WHERE projects.company_id = developers.company_id
GROUP BY projects.project
ORDER BY total desc limit 1