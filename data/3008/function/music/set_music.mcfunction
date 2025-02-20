execute if score @s health matches 1..30 if score daytime server matches 1.. run scoreboard players set @s music.current_song 11
execute if score @s health matches 1..30 unless score daytime server matches 1.. run scoreboard players set @s music.current_song 12
execute if score @s health matches 1..30 run return 1


execute if predicate 3008:in_shattered_reality run scoreboard players set @s music.current_song 15
execute if predicate 3008:in_shattered_reality run return 2


execute if score @s stat.height matches 500..1989 run scoreboard players set @s music.current_song 13
execute if score @s stat.height matches 1990.. run scoreboard players set @s music.current_song 14
execute if score @s stat.height matches 500.. run return 3


execute if score daytime server matches 1 if score time.weekday server matches 0 run scoreboard players set @s music.current_song 7
execute if score daytime server matches 1 if score time.weekday server matches 1 run scoreboard players set @s music.current_song 1
execute if score daytime server matches 1 if score time.weekday server matches 2 run scoreboard players set @s music.current_song 2
execute if score daytime server matches 1 if score time.weekday server matches 3 run scoreboard players set @s music.current_song 3
execute if score daytime server matches 1 if score time.weekday server matches 4 run scoreboard players set @s music.current_song 4
execute if score daytime server matches 1 if score time.weekday server matches 5 run scoreboard players set @s music.current_song 5
execute if score daytime server matches 1 if score time.weekday server matches 6 run scoreboard players set @s music.current_song 6

execute if score daytime server matches 2 run scoreboard players set @s music.current_song 8

execute if score daytime server matches 0 run scoreboard players set @s music.current_song 0

execute if score daytime server matches -1 run scoreboard players set @s music.current_song 9
execute if score daytime server matches -2 run scoreboard players set @s music.current_song 10
execute if score daytime server matches -3 run scoreboard players set @s music.current_song 8