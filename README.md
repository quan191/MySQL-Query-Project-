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

* 4 Cầu thủ có tổng thời gian chơi ít nhất trong mùa giải 
```
SELECT A.name , 
SUM(B.TimePlayed)
FROM players AS A
JOIN actions AS B
USING (playerID)
GROUP BY B.playerId 
ORDER BY SUM(B.TimePlayed) LIMIT 1;
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

* 9 In ra cầu thủ có tên kí tự đặc biệt của đội Manchester United (ứng dụng regexp )
```
SELECT DISTINCT(players.name)
	FROM players
    JOIN actions ON players.playerID=actions.playerID  
    JOIN teams ON teams.teamID=actions.teamID
    WHERE teams.name='Manchester United' AND REPLACE(lower(players.name),' ','') REGEXP '[^a-z]';
```

* 10 In ra cầu thủ có chữ O ở trong tên đệm ( tên đệm là tên ở ko phải họ và không phải tên 
```
SELECT DISTINCT(name)
FROM players  
WHERE  LENGTH(TRIM(name))-LENGTH(REPLACE(TRIM(name),' ',''))>=2 
AND 
POSITION('o' IN LOWER(SUBSTR(name,LOCATE(' ',name),LOCATE(SUBSTRING_INDEX(name,' ',-1),name)-LOCATE(' ',name)))) >0;
``` 

* 11 Cầu thủ ghi được nhiều bàn thắng trên sân khách nhất
```
SELECT A.name,
	SUM(B.goals) as Goal
FROM players AS A
JOIN actions AS B 
USING (playerID)
JOIN matches AS C
USING (matchID)
WHERE B.teamID=C.teamAwayID
GROUP BY A.playerID 
ORDER BY SUM(B.goals) DESC LIMIT 1 ;
```

* 12 Cầu thủ không trong đội hình xuất phát mà ghi bàn trong trận thắng của đội  
```
SELECT A.name ,
	B.team1,
	B.Team2,
    	B.timePlayed
    FROM players AS A
    JOIN actions AS B
    USING (playerID)
    JOIN matches AS C
	USING (matchID)
    WHERE B.starts =0 AND B.goals >0
    AND
    IF (B.teamID=c.teamHomeID,C.resultOfTeamHome=1,C.resultOfTeamHome=-1)
    GROUP BY B.matchID;
    
```

* 13 Liệt kê cầu thủ có số thời gian chơi lớn hơn trung bình thời gian chơi của các đội ấy
```
Solution here
```

* 14 Cầu thủ có tỉ lệ sút thành công penalty cao nhất mà số lần sút < trung bình của số penalty của mùa giải  
```
Solution here
```

* 15 Đội bóng càng đá càng hay ( số điểm dành được ở mùa sau > số điểm dành được ở mùa trước
```
Solution here
```

* 16 Thành tích của 1 đội cho đến ngày x x x 
```
Solution here
```

* 17 Cầu thủ vứt đi 
```
Solution here
```

* 18 Liệt kê số lượng thủ môn , tiền vệ , hậu vệ , tiền đạo của từng đội bóng 
```
Solution here
```

* 19 Chuỗi trận giữ sạch lưới nhiều nhất của đội X
```
Solution here
```

* 20 In ra bảng xếp hạng cuối mùa của từng đội bóng
```
Solution here
```


