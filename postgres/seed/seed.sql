BEGIN TRANSACTION;

INSERT INTO users (name, email, entries, joined) VALUES ('Jessie', 'jessie@gmail.com', 5, '2018-01-01');
INSERT INTO login (hash, email) VALUES ('$2a$10$bigZD2JPrOM8JSknBRea2u6vMzEe9ZFGWUNYmZ1KrzafhvIg/DEt.', 'jessie@gmail.com');

COMMIT;