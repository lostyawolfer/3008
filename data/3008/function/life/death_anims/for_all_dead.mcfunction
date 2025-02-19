gamemode spectator @s
title @s actionbar ""
#tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
stopsound @s block
stopsound @s hostile
stopsound @s player
stopsound @s music
stopsound @s weather
stopsound @s record

execute if score @s health.death_anim.reason matches 1 run function 3008:life/death_anims/normal
execute if score @s health.death_anim.reason matches 2 run function 3008:life/death_anims/long_fall