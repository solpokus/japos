CREATE SEQUENCE tb_master_member_tbmm_id_seq;

CREATE TABLE public.tb_master_member (
	tbmm_id int4 NOT NULL DEFAULT nextval ('tb_master_member_tbmm_id_seq'::regclass),
	tbmm_create_date timestamp NOT NULL,
	tbmm_update_date timestamp NULL,
	tbmm_create_id int4 NOT NULL,
	tbmm_update_id int4 NULL,
	tbmm_status int4 NOT NULL, -- tbms_id_parent = 1
	tbmm_email varchar(200) NOT NULL,
	tbmm_firstname varchar(64) NULL,
	tbmm_middlename varchar(64) NULL,
	tbmm_lastname varchar(64) NULL,
	tbmm_gender varchar(1) NULL, -- M = Male¶F = Female
	tbmm_phone varchar(128) NULL, -- phone number
	tbmm_dob date NULL, -- date of birth
	tbmm_last_login timestamp NULL, -- date of last login
	CONSTRAINT tb_master_member_pkey PRIMARY KEY (tbmm_id)
);


CREATE INDEX tb_master_b2b_branch_tbmbb_id_idx ON public.tb_master_member USING btree (tbmm_id) ;