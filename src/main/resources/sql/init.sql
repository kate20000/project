CREATE TABLE public."admin" (
                                login varchar(255) NOT NULL,
                                "password" varchar(255) NOT NULL,
                                CONSTRAINT admin_pkey PRIMARY KEY (login)
);
CREATE TABLE public.appointments (
                                     "name" varchar(255) NOT NULL,
                                     phone varchar(255) NOT NULL,
                                     car varchar(255) NOT NULL,
                                     "year" int4 NOT NULL,
                                     "date" date NOT NULL,
                                     "time" time NOT NULL,
                                     problem varchar(255) NOT NULL,
                                     appointment_id int4 NOT NULL GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE)
);
CREATE TABLE public.clients (
                                "name" varchar(255) NOT NULL,
                                phone varchar(255) NOT NULL,
                                client_id int4 NOT NULL GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE)
);
CREATE TABLE public.services (
                                 service_id int4 NOT NULL GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
                                 service varchar NOT NULL,
                                 price varchar NOT NULL
);
CREATE TABLE public.sessions (
                                 login varchar(255) NOT NULL,
                                 "date" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                 "session" varchar(255) NOT NULL,
                                 CONSTRAINT session_pkey PRIMARY KEY (login)
);
CREATE TABLE public.orders (
                               order_id int4 NOT NULL GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
                               product_name varchar NULL,
                               amount int4 NULL,
                               phone varchar NULL
);
CREATE TABLE public.products (
                                 product_id int4 NOT NULL GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE),
                                 product varchar NULL,
                                 price int4 NULL
);