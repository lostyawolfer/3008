execute unless score @s music.current_song matches 0.. run scoreboard players set @s music.current_song 0
execute unless score @s music.previous_song matches 0.. run scoreboard players set @s music.previous_song 0
execute unless score @s music.time matches -1.. run scoreboard players set @s music.time 0
execute unless score @s music.current_song matches 1.. run scoreboard players set @s music.time 0

execute unless score @s music.current_song = @s music.previous_song run stopsound @s ambient
execute unless score @s music.current_song = @s music.previous_song if score @s music.time matches 1.. unless score @s music.previous_song matches 11..12 run scoreboard players set @s music.time 0
execute unless score @s music.current_song = @s music.previous_song if score @s music.time matches 1.. if score @s music.previous_song matches 11..12 run scoreboard players set @s music.time -1
execute unless score @s music.current_song = @s music.previous_song run scoreboard players operation @s music.previous_song = @s music.current_song

execute if score @s music.current_song matches 0 run stopsound @s ambient


function 3008:music/set_song_stats_macro {id: 1, length: 817, offset: 480}
function 3008:music/set_song_stats_macro {id: 2, length: 817, offset: 480}
function 3008:music/set_song_stats_macro {id: 3, length: 817, offset: 480}
function 3008:music/set_song_stats_macro {id: 4, length: 817, offset: 480}
function 3008:music/set_song_stats_macro {id: 5, length: 817, offset: 480}
function 3008:music/set_song_stats_macro {id: 6, length: 854, offset: 480}
function 3008:music/set_song_stats_macro {id: 7, length: 1766, offset: 480}
function 3008:music/set_song_stats_macro {id: 8, length: 6960, offset: 960}
function 3008:music/set_song_stats_macro {id: 9, length: 5820, offset: 1200}
function 3008:music/set_song_stats_macro {id: 10, length: 5760, offset: 1920}
function 3008:music/set_song_stats_macro {id: 11, length: 1600, offset: 0}
function 3008:music/set_song_stats_macro {id: 12, length: 1600, offset: 0}
function 3008:music/set_song_stats_macro {id: 13, length: 6600, offset: 0}
function 3008:music/set_song_stats_macro {id: 14, length: 4300, offset: 0}

function 3008:music/check_music_macro {id: 1, volume: 1, name: day_monday}
function 3008:music/check_music_macro {id: 2, volume: .9, name: day_tuesday}
function 3008:music/check_music_macro {id: 3, volume: .9, name: day_wednesday}
function 3008:music/check_music_macro {id: 4, volume: .9, name: day_thursday}
function 3008:music/check_music_macro {id: 5, volume: .9, name: day_friday}
function 3008:music/check_music_macro {id: 6, volume: .9, name: day_saturday}
function 3008:music/check_music_macro {id: 7, volume: .9, name: day_sunday}
function 3008:music/check_music_macro {id: 8, volume: .85, name: fog}
function 3008:music/check_music_macro {id: 9, volume: 1, name: night}
function 3008:music/check_music_macro {id: 10, volume: 1, name: blood_night}
function 3008:music/check_music_macro {id: 11, volume: .8, name: low_health_day}
function 3008:music/check_music_macro {id: 12, volume: .8, name: low_health_night}
function 3008:music/check_music_macro {id: 13, volume: .8, name: severe_acrophobia}
function 3008:music/check_music_macro {id: 14, volume: .8, name: apeirophobic_summit}


execute if score @s music.current_song matches 1.. run scoreboard players add @s music.time 1