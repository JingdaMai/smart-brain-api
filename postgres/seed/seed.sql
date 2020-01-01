BEGIN TRANSACTION;

INSERT INTO users (name, email, entries, joined, pet, age) VALUES ('a', 'a@a.com', 5, '2018-01-01', 'cat', 24);
-- INSERT INTO login (hash, email) VALUES ('$2a$10$bigZD2JPrOM8JSknBRea2u6vMzEe9ZFGWUNYmZ1KrzafhvIg/DEt.', 'jessie@gmail.com');

COMMIT;