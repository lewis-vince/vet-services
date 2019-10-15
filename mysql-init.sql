USE db;

CREATE DATABASE IF NOT EXISTS dev;

DROP TABLE IF EXISTS pets, owners, appointments;

CREATE TABLE IF NOT EXISTS owners
(
  id             VARCHAR(50) PRIMARY KEY,
  first_name     VARCHAR(50),
  surname        VARCHAR(50),
  contact_number VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS pets
(
  id            VARCHAR(50) PRIMARY KEY,
  name          VARCHAR(50),
  breed         VARCHAR(50),
  date_of_birth DATE,
  owner_id      VARCHAR(50) NOT NULL,
  FOREIGN KEY (owner_id) REFERENCES owners (id)
);

CREATE TABLE IF NOT EXISTS appointments
(
  id       VARCHAR(50) PRIMARY KEY,
  pet_id   VARCHAR(50),
  start    DATETIME    NOT NULL,
  end      DATETIME    NOT NULL,
  FOREIGN KEY (pet_id) REFERENCES pets (id)
);


# -----------------| INSERT TEST DATA |-------------------------------------------------------------
INSERT INTO owners (id, first_name, surname, contact_number)
VALUES ('65c94451-51ba-4392-8e2e-28b639c5bdc5', 'Sally', 'Brown', '01773 857748'),
       ('5cdf82c5-a8fe-45e1-bb52-71144d799f39', 'Harry', 'Smith', '07354 543224'),
       ('d5a02804-3512-406e-ba82-da65f55c4032', 'David', 'Graham', '07146 879238');

INSERT INTO pets (id, name, breed, date_of_birth, owner_id)
VALUES ('493bf947-450b-4df4-a511-c10f1d2f38dc', 'Greg', 'Border Collie', '2013-05-12',
        '65c94451-51ba-4392-8e2e-28b639c5bdc5'),
       ('ce6d16f8-f504-4eda-a6c7-01d1d8bbd8da', 'Dave', 'Labrador', '2015-11-26',
        'd5a02804-3512-406e-ba82-da65f55c4032'),
       ('2c0da7c5-feec-42ab-9f2f-05718bc4189c', 'Greg II', 'Border Collie', '2010-08-04',
        '5cdf82c5-a8fe-45e1-bb52-71144d799f39');

INSERT INTO appointments (id, pet_id, start, end)
VALUES ('06991429-ddcd-469b-aec4-0a166ccf6c33', '493bf947-450b-4df4-a511-c10f1d2f38dc', '2019-08-14 14:30:00', '2019-08-14 15:00:00'),
       ('95eb3a84-31e4-4222-9ec9-45f5cf53ba2d', '2c0da7c5-feec-42ab-9f2f-05718bc4189c', '2019-07-06 09:45:00', '2019-07-06 10:00:00'),
       ('0033906a-866e-4de5-ab25-f590c0ab9513', 'ce6d16f8-f504-4eda-a6c7-01d1d8bbd8da', '2019-06-05 16:30:00', '2019-06-05 17:00:00'),
       ('ca1eef0e-6023-4541-975f-a1ff06e21757', '2c0da7c5-feec-42ab-9f2f-05718bc4189c', '2019-08-25 11:00:00', '2019-08-25 12:00:00');