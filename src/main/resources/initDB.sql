CREATE TABLE skills(
  id INT PRIMARY KEY ,
  skill VARCHAR(50) NOT NULL
);

CREATE TABLE companies(
  id INT PRIMARY KEY ,
  company_name VARCHAR(50) NOT NULL ,
  country VARCHAR(50) NOT NULL
);

CREATE TABLE customers(
  id INT PRIMARY KEY ,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE developers(
  id INT PRIMARY KEY ,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  company_id INT,

  FOREIGN KEY (company_id) REFERENCES companies(id)
);

CREATE TABLE projects(
  id INT PRIMARY KEY ,
  project VARCHAR(50) NOT NULL ,
  company_id INT NOT NULL ,
  customer_id INT NOT NULL ,

  FOREIGN KEY (company_id) REFERENCES companies(id),
  FOREIGN KEY (customer_id) REFERENCES customers(id)

);

CREATE TABLE developers_skills(
  developer_id INT NOT NULL ,
  skill_id INT NOT NULL ,

  FOREIGN KEY (developer_id) REFERENCES developers(id),
  FOREIGN KEY (skill_id) REFERENCES skills(id),

  UNIQUE (developer_id, skill_id)
);