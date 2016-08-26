create table places (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(120),
  typ VARCHAR(10),
  area_id INTEGER REFERENCES areas(id),
  region_id integer REFERENCES regions(id),
  city_id bigint references places(id),
  code VARCHAR(3),
  guid VARCHAR(36),
  okato char(11),
  updated TIMESTAMP not null default now(),
  status VARCHAR(1) not null default 'A'::char,
  constraint ckc_status_places check (status = ANY (ARRAY['A'::char, 'H'::char, 'D'::char]))
);

