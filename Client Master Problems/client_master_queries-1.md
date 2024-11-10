# CLIENT MASTER QUERIES

#### 1. Find out the names of all clients
```
SELECT CLIENT_NAME FROM client_master
```

#### 2. Retrieve the list of names and citites of all the clients
```
SELECT CLIENT_NAME, CITY FROM client_master
```

#### 3. List all the names located in Bombay
```
SELECT CLIENT_NAME
FROM client_master
WHERE CITY = "Bombay";
```

#### 4. Find the list of clients who stay in DELHI, BOMBAY or MADRAS
```
SELECT CITY, count(CLIENT_NAME)
FROM client_master
GROUP BY CITY;
```

#### 5. Display the info for only 0001 and 0002
```
SELECT * FROM client_master
LIMIT 2;
```

#### 6. List the names of clients not in Maharastra
```
SELECT CLIENT_NAME, CITY, STATE
FROM client_master
WHERE STATE NOT IN("Maharastra");
```
