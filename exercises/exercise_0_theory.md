# Exercise 0 - Theory and Glossary

## 3. Theory questions

### a) What is SQL, and why is it important in relational databases?
SQL (Structured Query Language) är ett standardiserat språk för att kommunicera med relationsdatabaser. Det är viktigt eftersom det låter oss skapa, läsa, uppdatera och radera data (CRUD) på ett strukturerat sätt, oberoende av vilken databastillverkare som används.

### b) Explain the difference between FROM and WHERE clauses.
`FROM` anger vilken tabell (eller vilka tabeller) som datan ska hämtas från. `WHERE` används för att filtrera vilka rader som ska returneras, baserat på ett villkor (t.ex. `WHERE salary > 40000`).

### c) What is the purpose of using podman for Oracle SQL?
Podman används för att köra Oracle-databasen i en container. Det gör det enkelt att starta, stoppa och isolera databasen utan att behöva installera Oracle direkt på operativsystemet. Det är också lätt att återställa miljön om något går fel.

### d) What are the primary functions of the Data Definition Language (DDL) in SQL?
DDL används för att definiera och ändra databasens struktur. Exempel på DDL-kommandon är `CREATE` (skapa tabeller), `ALTER` (ändra tabeller) och `DROP` (ta bort tabeller).

### e) What are the primary functions of the Data Query Language (DQL) in SQL?
DQL används för att hämta och läsa data från databasen. Det viktigaste kommandot är `SELECT`, som låter oss fråga efter specifik data med hjälp av `WHERE`, `GROUP BY`, `ORDER BY` etc.

### f) What are the difference between SQLplus and SQLcl in Oracle?
SQL*Plus är Oracles äldre kommandoradsverktyg med begränsad funktionalitet. SQLcl är ett modernare verktyg som stödjer samma kommandon men också har bättre formatering, stöd för skript och integration med moderna utvecklingsverktyg.

### g) What are the differences between Oracle SQL and PL/SQL?
Oracle SQL är ett deklarativt språk för att fråga och manipulera data. PL/SQL är Oracles proceduriella tillägg till SQL, vilket innebär att man kan skriva logik med loopar, villkor och variabler (som i ett programmeringsspråk).

---

## Glossary

| Term | Explanation |
|------|-------------|
| SELECT | Kommandot som används för att hämta data från en tabell. |
| query | En fråga till databasen, oftast en `SELECT`-sats. |
| WHERE | Filtrerar rader baserat på ett villkor. |
| pl/sql | Oracles proceduriella språk som bygger på SQL. |
| SQL | Standardiserat språk för relationsdatabaser. |
| SQLcl | Oracles moderna kommandoradsverktyg. |
| podman | Verktyg för att köra containrar (t.ex. Oracle-databasen). |
| CASE WHEN | Uttryck för att göra villkorliga val i SQL (som if/else). |
| CRUD | Create, Read, Update, Delete – de fyra grundläggande operationerna. |
| aggregation | Sammanställning av data, t.ex. `SUM`, `COUNT`, `AVG`. |
| GROUP BY | Grupperar rader för aggregering. |
| ALTER | DDL-kommando för att ändra en tabells struktur. |
| DROP | DDL-kommandon för att ta bort en tabell eller ett objekt. |
| csv | Filformat med kommaseparerade värden, används för datautbyte. |

