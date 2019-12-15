# MySQL Query Project

Bài tập lớn cuối kì môn cơ sở dữ liệu 

## Authors

* **Lê Ngọc Anh Quân** - *20176852* - [Link github](https://github.com/quan191)

* **Nguyễn Vũ Long** - *20176809* - [Link github](https://github.com/LongNguyenVu181)



## Đề bài 

Xây dựng cơ sở dữ liệu và viết các câu truy vấn với database đó 

## Phần mềm sử dụng và database sử dụng 

* MySQL - The web framework used
* MySQL WorkBench - Sử dụng để tạo ER diagram và các câu truy vấn
* Premiere League (https://relational.fit.cvut.cz/dataset/PremiereLeague) - Database sử dụng 

## List các câu hỏi 

* 1 In ra tổng số bản thắng của từng đội trong mùa giải.
```
SELECT B.name , SUM(A.goals) as GoalsInSeason
FROM actions as A
JOIN teams as B 
ON A.teamID=B.teamID
GROUP BY A.teamID;
```

* 2 In ra vua phá lưới của mùa giải 2011-2012
```
SELECT A.name, sum(B.goals) as GoalsInSeason
 FROM players as A 
JOIN actions as B 
ON A.PlayerID=B.PlayerID 
JOIN matches as C 
ON B.matchID=C.matchID 
WHERE year(C.date) IN (2011,2012)
 GROUP BY A.PlayerID 
ORDER BY GoalsInSeason DESC LIMIT 1;
```

* 3 Lấy ra kết quả và số bàn thắng của các trận 2 đội Manchester United và Arsenal gặp nhau trong cả mùa giải
```
SELECT A.MatchID , Date,
(SELECT name FROM teams where teamID=A.TeamHomeID) as TEAMHOME,
 (SELECT name FROM teams where teamID=A.TeamAwayID) as TEAMAWAY ,
 concat(sum(if(B.teamID=A.TeamHomeID,goals,0)),'-', 
 sum(if(B.TeamID=A.TeamAwayID,goals,0))) as Score 
 FROM matches as A 
JOIN actions as B 
ON	A.matchID=B.matchID 
WHERE  A.TeamHomeID IN 
(SELECT teamID 
from teams 
WHERE  name IN ('Arsenal','Manchester United')) 
AND A.TeamAwayID IN 
(SELECT teamID 
FROM teams
 WHERE
  name IN ('Manchester United','Arsenal')) 
group by A.matchID;  
```

* 4 	Đội bóng có chuỗi trận giữ sạch lưới dài nhất 
```
Solution here
```

* 5 Ví dụ của intersect : Đội bóng vừa bán hành cho Arsenal ( thắng  Arsenal cả lượt đi và lượt về )
```
SELECT (SELECT DISTINCT(teams.name) 
		FROM matches JOIN teams 
        ON matches.teamAwayID=teams.teamID 
        WHERE A.teamAwayID=teams.teamID) AS TEAMWIN,
        A.teamAwayID AS TeamWinID
FROM matches AS A 
JOIN Teams AS B
 ON A.TeamHomeID=B.TeamID 
WHERE B.name='Arsenal' AND A.resultOfTeamHome =-1
AND A.teamAwayID IN 
(SELECT teamHomeID 
FROM matches JOIN Teams 
ON matches.teamAwayID=Teams.teamID
WHERE Teams.name='Arsenal' AND matches.resultOfTeamHome=1 );
```

* 6 Ví dụ của minus : Đội bóng từng thắng MU nhưng chưa từng thắng MC 
```
Solution here
```

* 7 In ra lịch thi đấu ngày x/y/z
```
SELECT B.name AS Home,
      	C.name AS AWAY,
       concat(sum(if(D.teamID=A.TeamHomeID,goals,0)),'-', 
              sum(if(D.TeamID=A.TeamAwayID,goals,0))) as Score ,
       Date
FROM matches AS A 
JOIN teams AS B ON B.teamID=A.teamHomeID
JOIN teams AS C ON C.teamID=A.teamAwayID
JOIN actions AS D on A.matchID=D.matchID
WHERE date='2011-12-10'
group by A.matchID;  ;


```

* 8 Tạo bảng lịch sử đối đầu của các đội ( tỉ lệ thắng hòa thua của 2 đội)
```
Solution here
```

* 9
```
Solution here
```

* 10
```
Solution here
``` 

* 11 
```
Solution here
```

* 12 
```
Solution here
```

* 13 
```
Solution here
```

* 14
```
Solution here
```

* 15 
```
Solution here
```

* 16
```
Solution here
```

* 17
```
Solution here
```

* 18
```
Solution here
```

* 19
```
Solution here
```

* 20 In ra bảng xếp hạng cuối mùa của từng đội bóng
```
Solution here
```


