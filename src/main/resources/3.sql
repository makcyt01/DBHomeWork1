SELECT sum(salary) FROM skills
  INNER JOIN developers_skills ON skills.id = developers_skills.skill_id
  INNER JOIN developers ON developers.id = developers_skills.developer_id
WHERE skills.skill = 'Java';