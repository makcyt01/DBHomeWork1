create table if not exists pmax (project varchar(50), total int);
insert into pmax
  select project, sum(salary) as total from developers
    inner join companies on companies.id = developers.company_id
    inner join projects on projects.company_id = companies.id
  group by projects.id;

select project from pmax
where total = (select max(total) from pmax);

drop table pmax