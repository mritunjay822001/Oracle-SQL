-- Q1: Display all columns from the players table.
SELECT * FROM players;

-- Q2: Display only player names.
SELECT pname FROM players;

-- Q3: Display player names and runs.
SELECT pname, runs FROM players;

-- Q4: Display player names, strike rate and batting type.
SELECT pname, s_rate, type FROM players;

-- Q5: Display runs and wickets.
SELECT runs, wickets FROM players;

-- Q6: Display all left-handed players' names.
SELECT pname
FROM players
WHERE type = 'LEFT';

-- Q7: Display debut date of every player.
SELECT debut FROM players;

-- Q8: Display country code of every player.
SELECT c_code FROM players;

-- Q9: Display fours and sixes of every player.
SELECT fours, sixes FROM players;

-- Q10: Display player name, runs, strike rate and wickets.
SELECT pname, runs, s_rate, wickets
FROM players;
-- Q21: Display players whose country code is not 22.
SELECT *
FROM players
WHERE c_code <> 22;

-- Q22: Display players whose runs are between 500 and 900.
SELECT *
FROM players
WHERE runs BETWEEN 500 AND 900;

-- Q23: Display players whose strike rate is between 140 and 170.
SELECT *
FROM players
WHERE s_rate BETWEEN 140 AND 170;

-- Q24: Display players whose debut year is after 2015.
SELECT *
FROM players
WHERE EXTRACT(YEAR FROM debut) > 2015;

-- Q25: Display players whose name starts with K.
SELECT *
FROM players
WHERE pname LIKE 'K%';

-- Q26: Display players whose name ends with R.
SELECT *
FROM players
WHERE pname LIKE '%R';

-- Q27: Display players whose name contains A.
SELECT *
FROM players
WHERE pname LIKE '%A%';

-- Q28: Display players whose name has A at the second position.
SELECT *
FROM players
WHERE pname LIKE '_A%';

-- Q29: Display players whose name is either KL RAHUL or VIRAT KOHLI.
SELECT *
FROM players
WHERE pname IN ('KL RAHUL', 'VIRAT KOHLI');

-- Q30: Display players whose runs > 500 and wickets > 20.
SELECT *
FROM players
WHERE runs > 500
AND wickets > 20;

-- Q31: Display players whose runs > 800 or strike rate > 170.
SELECT *
FROM players
WHERE runs > 800
OR s_rate > 170;

-- Q32: Display players who are not right-handed.
SELECT *
FROM players
WHERE type <> 'RIGHT';

-- Q33: Display players whose sixes are not between 20 and 40.
SELECT *
FROM players
WHERE sixes NOT BETWEEN 20 AND 40;

-- Q34: Display players whose wickets are NULL (if any).
SELECT *
FROM players
WHERE wickets IS NULL;

-- Q35: Display players whose wickets are NOT NULL.
SELECT *
FROM players
WHERE wickets IS NOT NULL;

-- Q36: Count players country-wise.
SELECT country, COUNT(*) AS total_players
FROM players
GROUP BY country;

-- Q37: Find total runs country-wise.
SELECT country, SUM(runs) AS total_runs
FROM players
GROUP BY country;

-- Q38: Find average runs country-wise.
SELECT country, AVG(runs) AS average_runs
FROM players
GROUP BY country;

-- Q39: Find maximum runs country-wise.
SELECT country, MAX(runs) AS maximum_runs
FROM players
GROUP BY country;

-- Q40: Find minimum runs country-wise.
SELECT country, MIN(runs) AS minimum_runs
FROM players
GROUP BY country;
-- Q41: Find total wickets country-wise.
SELECT country, SUM(wickets) AS total_wickets
FROM players
GROUP BY country;

-- Q42: Find average strike rate country-wise.
SELECT country, AVG(s_rate) AS average_strike_rate
FROM players
GROUP BY country;

-- Q43: Count left/right-handed players.
SELECT type, COUNT(*) AS total_players
FROM players
GROUP BY type;

-- Q44: Find total sixes by batting type.
SELECT type, SUM(sixes) AS total_sixes
FROM players
GROUP BY type;

-- Q45: Find average fours by batting type.
SELECT type, AVG(fours) AS average_fours
FROM players
GROUP BY type;

-- Q46: Find maximum strike rate by country.
SELECT country, MAX(s_rate) AS maximum_strike_rate
FROM players
GROUP BY country;

-- Q47: Find minimum strike rate by country.
SELECT country, MIN(s_rate) AS minimum_strike_rate
FROM players
GROUP BY country;

-- Q48: Find total players batting-type wise.
SELECT type, COUNT(*) AS total_players
FROM players
GROUP BY type;

-- Q49: Find total runs batting-type wise.
SELECT type, SUM(runs) AS total_runs
FROM players
GROUP BY type;

-- Q50: Find average wickets country-wise.
SELECT country, AVG(wickets) AS average_wickets
FROM players
GROUP BY country;

-- Q51: Countries having more than 3 players.
SELECT country, COUNT(*) AS total_players
FROM players
GROUP BY country
HAVING COUNT(*) > 3;

-- Q52: Countries whose total runs > 2000.
SELECT country, SUM(runs) AS total_runs
FROM players
GROUP BY country
HAVING SUM(runs) > 2000;

-- Q53: Countries whose average strike rate > 150.
SELECT country, AVG(s_rate) AS average_strike_rate
FROM players
GROUP BY country
HAVING AVG(s_rate) > 150;

-- Q54: Batting types having more than 10 players.
SELECT type, COUNT(*) AS total_players
FROM players
GROUP BY type
HAVING COUNT(*) > 10;

-- Q55: Countries whose total wickets > 50.
SELECT country, SUM(wickets) AS total_wickets
FROM players
GROUP BY country
HAVING SUM(wickets) > 50;

-- Q56: Countries whose average runs > 600.
SELECT country, AVG(runs) AS average_runs
FROM players
GROUP BY country
HAVING AVG(runs) > 600;

-- Q57: Batting types whose average sixes > 25.
SELECT type, AVG(sixes) AS average_sixes
FROM players
GROUP BY type
HAVING AVG(sixes) > 25;

-- Q58: Countries having maximum runs > 900.
SELECT country, MAX(runs) AS maximum_runs
FROM players
GROUP BY country
HAVING MAX(runs) > 900;

-- Q59: Countries having minimum strike rate < 120.
SELECT country, MIN(s_rate) AS minimum_strike_rate
FROM players
GROUP BY country
HAVING MIN(s_rate) < 120;

-- Q60: Countries whose total fours > 150.
SELECT country, SUM(fours) AS total_fours
FROM players
GROUP BY country
HAVING SUM(fours) > 150;
-- Q61: Batting types whose average wickets > 10.
SELECT type, AVG(wickets) AS average_wickets
FROM players
GROUP BY type
HAVING AVG(wickets) > 10;

-- Q62: Countries having less than 5 players.
SELECT country, COUNT(*) AS total_players
FROM players
GROUP BY country
HAVING COUNT(*) < 5;

-- Q63: Countries whose average fours > 40.
SELECT country, AVG(fours) AS average_fours
FROM players
GROUP BY country
HAVING AVG(fours) > 40;

-- Q64: Batting types having total runs > 5000.
SELECT type, SUM(runs) AS total_runs
FROM players
GROUP BY type
HAVING SUM(runs) > 5000;

-- Q65: Countries whose average sixes > 30.
SELECT country, AVG(sixes) AS average_sixes
FROM players
GROUP BY country
HAVING AVG(sixes) > 30;

-- Q66: Display players in ascending order of runs.
SELECT *
FROM players
ORDER BY runs ASC;

-- Q67: Display players in descending order of runs.
SELECT *
FROM players
ORDER BY runs DESC;

-- Q68: Display players in ascending order of strike rate.
SELECT *
FROM players
ORDER BY s_rate ASC;

-- Q69: Display players in descending order of wickets.
SELECT *
FROM players
ORDER BY wickets DESC;

-- Q70: Display players ordered by country code.
SELECT *
FROM players
ORDER BY c_code;

-- Q71: Display players ordered alphabetically by name.
SELECT *
FROM players
ORDER BY pname;

-- Q72: Display players ordered by batting type then runs.
SELECT *
FROM players
ORDER BY type, runs;

-- Q73: Display players ordered by wickets descending then runs descending.
SELECT *
FROM players
ORDER BY wickets DESC, runs DESC;

-- Q74: Display players ordered by strike rate descending.
SELECT *
FROM players
ORDER BY s_rate DESC;

-- Q75: Display players ordered by debut date.
SELECT *
FROM players
ORDER BY debut;

-- Q76: Display players ordered by sixes descending.
SELECT *
FROM players
ORDER BY sixes DESC;

-- Q77: Display players ordered by fours ascending.
SELECT *
FROM players
ORDER BY fours ASC;

-- Q78: Display players ordered by country then player name.
SELECT *
FROM players
ORDER BY country, pname;

-- Q79: Display players ordered by batting type then strike rate.
SELECT *
FROM players
ORDER BY type, s_rate;

-- Q80: Display players ordered by wickets ascending.
SELECT *
FROM players
ORDER BY wickets ASC;
-- Q81: Display the first 5 players.
SELECT *
FROM players
FETCH FIRST 5 ROWS ONLY;

-- Q82: Display the first 10 players.
SELECT *
FROM players
FETCH FIRST 10 ROWS ONLY;

-- Q83: Skip the first 5 players.
SELECT *
FROM players
OFFSET 5 ROWS;

-- Q84: Skip the first 10 players.
SELECT *
FROM players
OFFSET 10 ROWS;

-- Q85: Skip the first 5 players and display the next 5.
SELECT *
FROM players
OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY;

-- Q86: Skip the first 10 players and display the next 3.
SELECT *
FROM players
OFFSET 10 ROWS
FETCH NEXT 3 ROWS ONLY;

-- Q87: Display players ranked 6th to 10th based on runs.
SELECT *
FROM players
ORDER BY runs DESC
OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY;

-- Q88: Display the top 5 highest run scorers.
SELECT *
FROM players
ORDER BY runs DESC
FETCH FIRST 5 ROWS ONLY;

-- Q89: Display the top 3 highest wicket takers.
SELECT *
FROM players
ORDER BY wickets DESC
FETCH FIRST 3 ROWS ONLY;

-- Q90: Display the top 10 players by strike rate.
SELECT *
FROM players
ORDER BY s_rate DESC
FETCH FIRST 10 ROWS ONLY;

-- Q91: Display the bottom 5 run scorers.
SELECT *
FROM players
ORDER BY runs ASC
FETCH FIRST 5 ROWS ONLY;

-- Q92: Display players ranked 11th to 15th by runs.
SELECT *
FROM players
ORDER BY runs DESC
OFFSET 10 ROWS
FETCH NEXT 5 ROWS ONLY;

-- Q93: Display players ranked 4th to 8th by wickets.
SELECT *
FROM players
ORDER BY wickets DESC
OFFSET 3 ROWS
FETCH NEXT 5 ROWS ONLY;

-- Q94: Display the highest run scorer.
SELECT *
FROM players
ORDER BY runs DESC
FETCH FIRST 1 ROW ONLY;

-- Q95: Display the second highest run scorer.
SELECT *
FROM players
ORDER BY runs DESC
OFFSET 1 ROW
FETCH NEXT 1 ROW ONLY;

-- Q96: Display the third highest wicket taker.
SELECT *
FROM players
ORDER BY wickets DESC
OFFSET 2 ROWS
FETCH NEXT 1 ROW ONLY;

-- Q97: Display players ranked 6th to 10th alphabetically.
SELECT *
FROM players
ORDER BY pname
OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY;

-- Q98: Display the latest 5 debut players.
SELECT *
FROM players
ORDER BY debut DESC
FETCH FIRST 5 ROWS ONLY;

-- Q99: Display the oldest 5 debut players.
SELECT *
FROM players
ORDER BY debut ASC
FETCH FIRST 5 ROWS ONLY;

-- Q100: Display players ranked 8th to 12th by strike rate.
SELECT *
FROM players
ORDER BY s_rate DESC
OFFSET 7 ROWS
FETCH NEXT 5 ROWS ONLY;