DROP TABLE "USERUSER";
DROP TABLE "USERSTORE";
DROP TABLE "NOTIFY";
DROP TABLE "INFECTEDCOORDINATE";
DROP TABLE "STORES";
DROP TABLE "USERS";
DROP TABLE "CITY";

CREATE TABLE "USERS" (
"id" serial PRIMARY KEY,
"username" varchar unique ,
"password" text,
"fullname" varchar,
"yearOfBirth" int,
"code" varchar,
"phone" varchar,
"citycode" int,
"long" real,
"lat" real,
"address" varchar,
"transmissionLevel" int,
"isInfected" bool
);

CREATE TABLE "CITY" (
"id" int PRIMARY KEY,
"name" varchar,
"infectedCount" int,
"infectedLevel" int
);

CREATE TABLE "STORES" (
"id" serial PRIMARY KEY,
"code" varchar,
"name" varchar,
"isActive" boolean,
"long" real,
"lat" real,
"address" varchar,
"citycode" int
);

CREATE TABLE "USERSTORE" (
"id" serial PRIMARY KEY,
"timein" varchar,
"timeout" varchar,
"userid" serial,
"storeid" serial
);

CREATE TABLE "USERUSER"(
"id" serial PRIMARY KEY,
"timein" varchar,
"timeout" varchar,
"long" real,
"lat" real,
"user1id" serial,
"user2id" serial
);

CREATE TABLE "INFECTEDCOORDINATE"(
"id" serial PRIMARY KEY,
"userid" serial,
"long" real,
"lat" real,
"date" varchar,
"citycode" int,
"address" varchar
);

CREATE TABLE "NOTIFY"(
"id" serial PRIMARY KEY,
"userid" serial,
"time" varchar,
"title" varchar,
"content" text,
"type" varchar
);

ALTER TABLE "USERS"
ADD CONSTRAINT fk_users_city
FOREIGN KEY (citycode)
REFERENCES "CITY" (id);

ALTER TABLE "STORES"
ADD CONSTRAINT fk_stores_city
FOREIGN KEY (citycode)
REFERENCES "CITY" (id);

ALTER TABLE "USERSTORE"
ADD CONSTRAINT fk_userstore_user
FOREIGN KEY (userid)
REFERENCES "USERS" (id);

ALTER TABLE "USERSTORE"
ADD CONSTRAINT fk_userstore_store
FOREIGN KEY (storeid)
REFERENCES "STORES" (id);

ALTER TABLE "USERUSER"
ADD CONSTRAINT fk_user_user_1
FOREIGN KEY (user1id)
REFERENCES "USERS" (id);

ALTER TABLE "USERUSER"
ADD CONSTRAINT fk_user_user_2
FOREIGN KEY (user2id)
REFERENCES "USERS" (id);

ALTER TABLE "INFECTEDCOORDINATE"
ADD CONSTRAINT fk_infectedcoordinate_user
FOREIGN KEY (userid)
REFERENCES "USERS" (id);

ALTER TABLE "INFECTEDCOORDINATE"
ADD CONSTRAINT fk_infectedcoordinate_city
FOREIGN KEY (citycode)
REFERENCES "CITY" (id);

ALTER TABLE "NOTIFY"
ADD CONSTRAINT fk_notify_users
FOREIGN KEY (userid)
REFERENCES "USERS" (id);

SELECT * FROM "USERS"

INSERT into "CITY"(id, name) VALUES (92, 'Thành phố Cần Thơ');
INSERT into "CITY"(id, name) VALUES (01, 'Thành phố Hà Nội');
INSERT into "CITY"(id, name) VALUES (31, 'Thành phố Hải Phòng');
INSERT into "CITY"(id, name) VALUES (79, 'Thành phố Hồ Chí Minh');
INSERT into "CITY"(id, name) VALUES (48, 'Thành phố Đà Nẵng');
INSERT into "CITY"(id, name) VALUES (89, 'Tỉnh An Giang');
INSERT into "CITY"(id, name) VALUES (77, 'Tỉnh Bà Rịa - Vũng Tàu');
INSERT into "CITY"(id, name) VALUES (74, 'Tỉnh Bình Dương');
INSERT into "CITY"(id, name) VALUES (70, 'Tỉnh Bình Phước');
INSERT into "CITY"(id, name) VALUES (60, 'Tỉnh Bình Thuận');
INSERT into "CITY"(id, name) VALUES (52, 'Tỉnh Bình Định');
INSERT into "CITY"(id, name) VALUES (95, 'Tỉnh Bạc Liêu');
INSERT into "CITY"(id, name) VALUES (24, 'Tỉnh Bắc Giang');
INSERT into "CITY"(id, name) VALUES (06, 'Tỉnh Bắc Kạn');
INSERT into "CITY"(id, name) VALUES (27, 'Tỉnh Bắc Ninh');
INSERT into "CITY"(id, name) VALUES (83, 'Tỉnh Bến Tre');
INSERT into "CITY"(id, name) VALUES (04, 'Tỉnh Cao Bằng');
INSERT into "CITY"(id, name) VALUES (96, 'Tỉnh Cà Mau');
INSERT into "CITY"(id, name) VALUES (64, 'Tỉnh Gia Lai');
INSERT into "CITY"(id, name) VALUES (17, 'Tỉnh Hoà Bình');
INSERT into "CITY"(id, name) VALUES (02, 'Tỉnh Hà Giang');
INSERT into "CITY"(id, name) VALUES (35, 'Tỉnh Hà Nam');
INSERT into "CITY"(id, name) VALUES (42, 'Tỉnh Hà Tĩnh');
INSERT into "CITY"(id, name) VALUES (33, 'Tỉnh Hưng Yên');
INSERT into "CITY"(id, name) VALUES (30, 'Tỉnh Hải Dương');
INSERT into "CITY"(id, name) VALUES (93, 'Tỉnh Hậu Giang');
INSERT into "CITY"(id, name) VALUES (56, 'Tỉnh Khánh Hòa');
INSERT into "CITY"(id, name) VALUES (91, 'Tỉnh Kiên Giang');
INSERT into "CITY"(id, name) VALUES (62, 'Tỉnh Kon Tum');
INSERT into "CITY"(id, name) VALUES (12, 'Tỉnh Lai Châu');
INSERT into "CITY"(id, name) VALUES (80, 'Tỉnh Long An');
INSERT into "CITY"(id, name) VALUES (10, 'Tỉnh Lào Cai');
INSERT into "CITY"(id, name) VALUES (68, 'Tỉnh Lâm Đồng');
INSERT into "CITY"(id, name) VALUES (20, 'Tỉnh Lạng Sơn');
INSERT into "CITY"(id, name) VALUES (36, 'Tỉnh Nam Định');
INSERT into "CITY"(id, name) VALUES (40, 'Tỉnh Nghệ An');
INSERT into "CITY"(id, name) VALUES (37, 'Tỉnh Ninh Bình');
INSERT into "CITY"(id, name) VALUES (58, 'Tỉnh Ninh Thuận');
INSERT into "CITY"(id, name) VALUES (25, 'Tỉnh Phú Thọ');
INSERT into "CITY"(id, name) VALUES (54, 'Tỉnh Phú Yên');
INSERT into "CITY"(id, name) VALUES (44, 'Tỉnh Quảng Bình');
INSERT into "CITY"(id, name) VALUES (49, 'Tỉnh Quảng Nam');
INSERT into "CITY"(id, name) VALUES (51, 'Tỉnh Quảng Ngãi');
INSERT into "CITY"(id, name) VALUES (22, 'Tỉnh Quảng Ninh');
INSERT into "CITY"(id, name) VALUES (45, 'Tỉnh Quảng Trị');
INSERT into "CITY"(id, name) VALUES (94, 'Tỉnh Sóc Trăng');
INSERT into "CITY"(id, name) VALUES (14, 'Tỉnh Sơn La');
INSERT into "CITY"(id, name) VALUES (38, 'Tỉnh Thanh Hóa');
INSERT into "CITY"(id, name) VALUES (34, 'Tỉnh Thái Bình');
INSERT into "CITY"(id, name) VALUES (19, 'Tỉnh Thái Nguyên');
INSERT into "CITY"(id, name) VALUES (46, 'Tỉnh Thừa Thiên Huế');

-- UPDATE "USERS" set "transmissionLevel" = 0 where id = 3;

-- UPDATE "USERS" set "transmissionLevel" = null where 3 = 3;
-- UPDATE "USERS" set "isInfected" = false where 1 = 1;
-- UPDATE "USERS" set "isInfected" = true where id =3;
-- select * from "CITY"
-- select * from "USERS"
-- select count(*) from "USERS" where "transmissionLevel" is null
-- select DISTINCT storeid from "USERSTORE" where userid = 3

CREATE OR REPLACE FUNCTION updateUserRiskFunc()
RETURNS trigger AS $$
DECLARE
r int;
s int;
BEGIN
if (NEW."transmissionLevel") < 5 then
raise notice 'flag 1';
FOR r IN
SELECT DISTINCT storeid from "USERSTORE" where userid = NEW.id
LOOP
raise notice 'flag 2';
FOR s IN
SELECT DISTINCT userid from "USERSTORE"
where storeid = r and userid != NEW.id
LOOP
raise notice 'flag 3';
UPDATE "USERS"
set "transmissionLevel" = NEW."transmissionLevel" + 1
where id = s and (
"transmissionLevel" >= NEW."transmissionLevel"
or "transmissionLevel" is null
);
END LOOP;
END LOOP;
end if;
RETURN NEW;
END
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS updateUserRiskTrig ON "USERS";

CREATE TRIGGER updateUserRiskTrig AFTER UPDATE ON "USERS"
FOR EACH ROW WHEN (1=1)
EXECUTE PROCEDURE updateUserRiskFunc();

CREATE OR REPLACE FUNCTION markInfectedFunc()
RETURNS trigger AS $$
DECLARE
BEGIN
UPDATE "USERS" set "transmissionLevel" = 0 where id = OLD.id;
Update "CITY" set "infectedCount" =  "infectedCount"+1 WHERE id = NEW.citycode;
RETURN NEW;
END
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS markInfectedTrig ON "USERS";

CREATE TRIGGER markInfectedTrig AFTER UPDATE ON "USERS"
FOR EACH ROW WHEN
(NEW."isInfected" != OLD."isInfected" and NEW."isInfected" = true)
EXECUTE PROCEDURE markInfectedFunc();

Update "CITY" set "infectedCount" = 0
Update "CITY" set "infectedLevel" = 0
