$execute if score @s music.current_song matches $(id) if score @s music.time >= $song$(id).length music.time run scoreboard players set @s music.time 0

$execute if score @s music.current_song matches $(id) if score @s music.time matches 0 run playsound 3008:daytime_loop.$(name) ambient @s 0 0 0 $(volume) 1 $(volume)

$execute if score @s music.current_song matches $(id) if score @s music.time matches -1 run playsound 3008:daytime_loop_fade_in.$(name) ambient @s 0 0 0 $(volume) 1 $(volume)
$execute if score @s music.current_song matches $(id) if score @s music.time matches -1 run scoreboard players operation @s music.time = $song$(id).offset music.time