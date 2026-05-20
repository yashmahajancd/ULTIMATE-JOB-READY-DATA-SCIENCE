------ MySQL Tutorial: Getting Current Date and Time ------
-----------------------------------------------------------

--- 1. CURRENT_DATE
SELECT CURRENT_DATE;


--- 2. CURRENT_TIME
SELECT CURRENT_TIME;


--- 3. CURRENT_TIMESTAMP (or NOW() )
SELECT CURRENT_TIMESTAMP;

-- or

SELECT NOW();


--- 4. LOCALTIME and LOCALTIMESTAMP
SELECT LOCALTIME;

SELECT LOCALTIMESTAMP;


--- 5. Using in Table Inserts
ALTER TABLE vtp_students ADD COLUMN date_joined DATETIME DEFAULT(NOW());

--------------------------------------------------------------
UPDATE vtp_students SET date_joined = NULL WHERE id IN (1, 5);
--------------------------------------------------------------

UPDATE vtp_students SET date_joined = CURRENT_TIMESTAMP WHERE date_joined IS NULL;