summon armor_stand ~ ~ ~ {Invulnerable: 1b, NoGravity: 1b, Invisible: 1b, Tags: ["generating"]}

execute as @e[type=armor_stand, tag=generating] store result score temp!1 server run data get entity @s Pos[0]
execute as @e[type=armor_stand, tag=generating] store result score temp!3 server run data get entity @s Pos[2]

scoreboard players operation temp!1 server /= 16 consts
scoreboard players operation temp!1 server *= 16 consts
execute store result score temp!0 server run function 3008:misc/generate_random {min: -4, max: 4}
scoreboard players operation temp!1 server += temp!0 server

execute store result score temp!2 server run function 3008:misc/generate_random {min: -15, max: 15}

scoreboard players operation temp!3 server /= 16 consts
scoreboard players operation temp!3 server *= 16 consts
execute store result score temp!0 server run function 3008:misc/generate_random {min: -4, max: 4}
scoreboard players operation temp!3 server += temp!0 server


execute as @e[type=armor_stand, tag=generating] store result entity @s Pos[0] double 1 run scoreboard players get temp!1 server
execute as @e[type=armor_stand, tag=generating] store result entity @s Pos[1] double 1 run scoreboard players get temp!2 server
execute as @e[type=armor_stand, tag=generating] store result entity @s Pos[2] double 1 run scoreboard players get temp!3 server

execute as @e[type=armor_stand, tag=generating] at @s run tp @s ~.5 ~ ~.5

execute as @e[type=armor_stand, tag=generating] at @s run place template 3008:plots/single/undefined ~ ~-1 ~

execute store result score temp!0 server run function 3008:misc/generate_random {min: 0, max: 11}

$execute if score temp!0 server matches 00 as @e[type=armor_stand, tag=generating] at @s run place template 3008:plots/single/$(plot) ~ ~-1 ~ none none
$execute if score temp!0 server matches 01 as @e[type=armor_stand, tag=generating] at @s run place template 3008:plots/single/$(plot) ~15 ~-1 ~ clockwise_90 none
$execute if score temp!0 server matches 02 as @e[type=armor_stand, tag=generating] at @s run place template 3008:plots/single/$(plot) ~ ~-1 ~15 counterclockwise_90 none
$execute if score temp!0 server matches 03 as @e[type=armor_stand, tag=generating] at @s run place template 3008:plots/single/$(plot) ~15 ~-1 ~15 180 none

$execute if score temp!0 server matches 04 as @e[type=armor_stand, tag=generating] at @s run place template 3008:plots/single/$(plot) ~15 ~-1 ~ none front_back
$execute if score temp!0 server matches 05 as @e[type=armor_stand, tag=generating] at @s run place template 3008:plots/single/$(plot) ~15 ~-1 ~15 clockwise_90 front_back
$execute if score temp!0 server matches 06 as @e[type=armor_stand, tag=generating] at @s run place template 3008:plots/single/$(plot) ~ ~-1 ~ counterclockwise_90 front_back
$execute if score temp!0 server matches 07 as @e[type=armor_stand, tag=generating] at @s run place template 3008:plots/single/$(plot) ~ ~-1 ~15 180 front_back

$execute if score temp!0 server matches 08 as @e[type=armor_stand, tag=generating] at @s run place template 3008:plots/single/$(plot) ~ ~-1 ~15 none left_right
$execute if score temp!0 server matches 09 as @e[type=armor_stand, tag=generating] at @s run place template 3008:plots/single/$(plot) ~ ~-1 ~ clockwise_90 left_right
$execute if score temp!0 server matches 10 as @e[type=armor_stand, tag=generating] at @s run place template 3008:plots/single/$(plot) ~15 ~-1 ~15 counterclockwise_90 left_right
$execute if score temp!0 server matches 11 as @e[type=armor_stand, tag=generating] at @s run place template 3008:plots/single/$(plot) ~15 ~-1 ~ 180 left_right

execute as @e[type=armor_stand, tag=generating] run kill @s

$tellraw @a[scores={logging=1}] ["! log: placed template [3008:$(plot)] at [x:", {"score": {"name": "temp1", "objective": "server"}}, " y:-1", " z:", {"score": {"name": "temp2", "objective": "server"}}, "]"]


scoreboard players reset temp!1 server
scoreboard players reset temp!2 server
scoreboard players reset temp!3 server
scoreboard players reset temp!0 server