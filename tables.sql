create table regions (
  id SERIAL PRIMARY KEY,
  NAME VARCHAR(120),
  typ VARCHAR(10),
  code VARCHAR(2),
  guid VARCHAR(36),
  okato VARCHAR(11),
  updated TIMESTAMP,
  status VARCHAR(1)
);

create table areas (
  id SERIAL PRIMARY KEY,
  name VARCHAR(120),
  typ VARCHAR(10),
  region_id INTEGER REFERENCES regions(id),
  code VARCHAR(3),
  guid VARCHAR(36),
  okato VARCHAR(11),
  updated TIMESTAMP,
  status VARCHAR(1)
);

create table places (
  id SERIAL PRIMARY KEY,
  name VARCHAR(120),
  typ VARCHAR(10),
  area_id INTEGER REFERENCES areas(id),
  region_id integer REFERENCES regions(id),
  code VARCHAR(3),
  guid VARCHAR(36),
  okato VARCHAR(11),
  updated TIMESTAMP,
  status VARCHAR(1)
);

