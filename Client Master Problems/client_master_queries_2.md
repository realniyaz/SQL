# CLIENT MASTER QUERIES 2

#### 1. Delete the record of Client no. 0001 from the Client master table.
```
DELETE FROM client_master
WHERE CLIENT_NO = 0001
```

#### 2. Change the city of Client no. 0005 to ‘Bombay’.
```
UPDATE client_master
SET CITY = "Bombay"
WHERE CLIENT_NO = 0005;
```

#### 3. Change the balance due of Client no. 0002 to 1000.
```
UPDATE client_master
SET BAL_DUE = 1000
WHERE CLIENT_NO = 0002;
```
#### 4. Find out the clients who stay in a city or state where second letter is a.
```
SELECT * FROM client_master
WHERE CITY LIKE '_a%'
      OR STATE LIKE '_a%' ;
```
#### 5. Calculate the average balance due of all the clients.
```
SELECT AVG(BAL_DUE)
FROM client_master;
```
