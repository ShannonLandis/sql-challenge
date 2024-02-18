DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
  dept_no varchar(10), 
  dept_name varchar(100) NOT NULL,
  Primary Key (dept_no)
);

CREATE TABLE titles (
  title_id varchar(10),
  title varchar(100),
  Primary Key (title_id)
);

CREATE TABLE employees (
  emp_no int NOT NULL,
  emp_title_id varchar(10), 
  birth_date date,
  first_name varchar(100),
  last_name varchar(100),
  sex char(1),
  hire_date date,
  Primary Key (emp_no),
  Foreign Key (emp_title_id) references titles(title_id)
);

CREATE TABLE dept_emp (
  emp_no int,
  dept_no varchar(10),
  Foreign Key (dept_no) references departments(dept_no),
  Foreign Key (emp_no) references employees(emp_no),
  Primary Key (dept_no, emp_no)
);


CREATE TABLE dept_manager (
  dept_no varchar(10),
  emp_no int,
  Foreign Key (dept_no) references departments(dept_no),
  Foreign Key (emp_no) references employees(emp_no),
  Primary Key (dept_no, emp_no)
);



CREATE TABLE salaries (
  emp_no int,
  salary int,
  Foreign Key (emp_no) references employees(emp_no),
  Primary Key (emp_no)
);



	




/*
CREATE TABLE address (
  address_id integer NOT NULL,
  address character varying(50) NOT NULL,
  address2 character varying(50),
  district character varying(20) NOT NULL,
  city_id smallint NOT NULL,
  postal_code character varying(10),
  phone character varying(20) NOT NULL,
  last_update timestamp without time zone DEFAULT now() NOT NULL
);

CREATE TABLE city (
  city_id integer NOT NULL,
  city character varying(50) NOT NULL,
  country_id smallint NOT NULL,
  last_update timestamp without time zone DEFAULT now() NOT NULL
);

CREATE TABLE country (
    country_id integer NOT NULL,
    country character varying(50) NOT NULL,
    last_update timestamp without time zone DEFAULT now() NOT NULL
);

CREATE TABLE customer (
  customer_id integer NOT NULL,
  store_id smallint NOT NULL,
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  email character varying(50),
  address_id smallint NOT NULL,
  activebool boolean DEFAULT true NOT NULL,
  create_date date DEFAULT ('now'::text)::date NOT NULL,
  last_update timestamp without time zone DEFAULT now(),
  active integer
);

CREATE TABLE customer_list (
  id integer NOT NULL,
  name character varying(50) NOT NULL,
  address character varying(50) NOT NULL,
  zip_code character varying(10),
  phone character varying(20) NOT NULL,
  city character varying(50) NOT NULL,
  country character varying(50) NOT NULL,
  notes character varying(50) NOT NULL,
  sid integer NOT NULL
);

CREATE TABLE film (
  film_id integer NOT NULL,
  title character varying(255) NOT NULL,
  description text,
  release_year integer,
  language_id smallint NOT NULL,
  original_language_id smallint,
  rental_duration smallint DEFAULT 3 NOT NULL,
  rental_rate numeric(4,2) DEFAULT 4.99 NOT NULL,
  length smallint,
  replacement_cost numeric(5,2) DEFAULT 19.99 NOT NULL,
  rating TEXT,
  last_update timestamp without time zone DEFAULT now() NOT NULL,
  special_features text[],
  fulltext tsvector NOT NULL
);

CREATE TABLE film_actor (
  actor_id smallint NOT NULL,
  film_id smallint NOT NULL,
  last_update timestamp without time zone DEFAULT now() NOT NULL
);

CREATE TABLE inventory (
  inventory_id integer NOT NULL,
  film_id smallint NOT NULL,
  store_id smallint NOT NULL,
  last_update timestamp without time zone DEFAULT now() NOT NULL
);

CREATE TABLE payment (
  payment_id integer NOT NULL,
  customer_id smallint NOT NULL,
  staff_id smallint NOT NULL,
  rental_id integer NOT NULL,
  amount numeric(5,2) NOT NULL,
  payment_date timestamp without time zone NOT NULL
);

CREATE TABLE rental (
  rental_id integer NOT NULL,
  rental_date timestamp without time zone NOT NULL,
  inventory_id integer NOT NULL,
  customer_id smallint NOT NULL,
  return_date timestamp without time zone,
  staff_id smallint NOT NULL,
  last_update timestamp without time zone DEFAULT now() NOT NULL
);

CREATE TABLE staff (
  staff_id integer NOT NULL,
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  address_id smallint NOT NULL,
  email character varying(50),
  store_id smallint NOT NULL,
  active boolean DEFAULT true NOT NULL,
  username character varying(16) NOT NULL,
  password character varying(40),
  last_update timestamp without time zone DEFAULT now() NOT NULL,
  picture bytea
);

CREATE TABLE store (
    store_id integer NOT NULL,
    manager_staff_id smallint NOT NULL,
    address_id smallint NOT NULL,
    last_update timestamp without time zone DEFAULT now() NOT NULL
);

*/
