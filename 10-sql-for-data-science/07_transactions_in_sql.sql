------ MySQL Tutorial: AUTOCOMMIT, COMMIT, and ROLLBACK ------
--------------------------------------------------------------

--- Check Autocommit Status
SELECT @@autocommit;


--- Disable Autocommit
SET autocommit = 0;


--- Enable Autocommit
SET autocommit = 1;

-----------------------------
SET autocommit = 0;
-----------------------------


------ COMMIT
START TRANSACTION;

UPDATE vtp_students SET age = age - 1 WHERE id = 7;

UPDATE vtp_students SET is_passed = true WHERE id = 10;

COMMIT;


------ ROLLBACK
START TRANSACTION;

UPDATE vtp_students SET age = age + 1 WHERE id = 7;

UPDATE vtp_students SET is_passed = false WHERE id = 10;

ROLLBACK;