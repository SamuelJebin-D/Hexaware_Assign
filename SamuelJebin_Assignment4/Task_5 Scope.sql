Use CMS

--49
SELECT * FROM courier WHERE weight >(SELECT AVG(weight) FROM courier)


--50
SELECT name FROM employee WHERE salary>(SELECT AVG(salary) FROM Employee)


--51
SELECT SUM(cost) FROM courierservices WHERE cost <(SELECT MAX(cost) FROM courierservices)


--52
SELECT * FROM courier c1 WHERE weight > all
(SELECT weight FROM courier c2 WHERE c2.sendername='Lara')
SELECT * FROM courier where sendername='Lara'


--53
SELECT locationid FROM payments 
WHERE amount=(SELECT MAX(amount) FROM payments)


--54
SELECT * FROM courier c1 WHERE weight > ALL
(SELECT weight FROM courier c2 WHERE c2.sendername='Kesavan')