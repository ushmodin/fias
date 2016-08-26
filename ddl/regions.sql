create table regions (
  id SERIAL PRIMARY KEY,
  NAME VARCHAR(120),
  typ VARCHAR(10),
  code VARCHAR(2),
  guid VARCHAR(36),
  okato char(11),
  country_id integer references countries(id),
  updated TIMESTAMP not null default now(),
  status char(1) default 'A'::char not null,
  constraint ckc_status_regions check (status = ANY (ARRAY['A'::char, 'H'::char, 'D'::char]))
);


