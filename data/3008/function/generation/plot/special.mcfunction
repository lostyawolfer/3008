summon armor_stand ~ ~ ~ {Invulnerable: 1b, NoGravity: 1b, Invisible: 1b, Tags: ["generating"]}

execute as @e[type=armor_stand, tag=generating] store result score temp1 server run data get entity @s Pos[0]
execute as @e[type=armor_stand, tag=generating] store result score temp3 server run data get entity @s Pos[2]

scoreboard players operation temp1 server /= 16 consts
scoreboard players operation temp1 server *= 16 consts

scoreboard players operation temp2 server = 0 consts

scoreboard players operation temp3 server /= 16 consts
scoreboard players operation temp3 server *= 16 consts

execute as @e[type=armor_stand, tag=generating] store result entity @s Pos[0] double 1 run scoreboard players get temp1 server
execute as @e[type=armor_stand, tag=generating] store result entity @s Pos[1] double 1 run scoreboard players get temp2 server
execute as @e[type=armor_stand, tag=generating] store result entity @s Pos[2] double 1 run scoreboard players get temp3 server

execute as @e[type=armor_stand, tag=generating] at @s run tp @s ~.5 ~ ~.5


$execute as @e[type=armor_stand, tag=generating] at @s run place template 3008:plots/special/$(plot) ~ ~-1 ~








execute as @e[type=armor_stand, tag=generating] run kill @s

$tellraw @a[scores={logging=1}] ["! log: placed template [3008:$(plot)] at [x:", {"score": {"name": "temp1", "objective": "server"}}, " y:-1", " z:", {"score": {"name": "temp2", "objective": "server"}}, "]"]


scoreboard players reset temp1 server
scoreboard players reset temp2 server
scoreboard players reset temp3 server