insert into team(name, city) values ('Team Eagle', 'Calgary'), ('Team Bear', 'Vancouver'), ('Team Lion', 'Toronto');
insert into player (team_id, name, `number`, points)
values (1, 'Gabriel', 1, 0), (1, 'Natalia', 2, 0), (1, 'Chicago', 3, 0),
(2, 'Jose', 4, 0), (2, 'Damaris', 5, 0), (2, 'Daniel', 6, 0),
(3, 'Ira', 7, 0), (3, 'Nascimento', 8, 0), (3, 'Pipoca', 9, 0);


select t.name, p.name, p.`number`, p.points 
from team t 
inner join player p on t.id = p.team_id 
order by p.points desc; 

call team_players_by_points(1);
call team_players_by_points(2);
call team_players_by_points(3);

select t.name, sum(p.points) 
from team t 
inner join player p on p.team_id = t.id
group by t.id;

call team_points;

