$execute if score $(self_called) consts matches 0 run scoreboard players add temp_gen_stage server 1

$execute if score $(self_called) consts matches 0 run summon armor_stand ~ ~ ~ {Invulnerable: 1b, NoGravity: 1b, Invisible: 1b, Tags: ["generating"]}

$execute if score $(self_called) consts matches 0 run execute as @e[type=armor_stand, tag=generating] store result score temp1 server run data get entity @s Pos[0]
$execute if score $(self_called) consts matches 0 run execute as @e[type=armor_stand, tag=generating] store result score temp3 server run data get entity @s Pos[2]

$execute if score $(self_called) consts matches 0 run scoreboard players operation temp1 server /= 16 consts
$execute if score $(self_called) consts matches 0 run scoreboard players operation temp1 server *= 16 consts

$execute if score $(self_called) consts matches 0 run scoreboard players operation temp2 server = 0 consts

$execute if score $(self_called) consts matches 0 run scoreboard players operation temp3 server /= 16 consts
$execute if score $(self_called) consts matches 0 run scoreboard players operation temp3 server *= 16 consts

$execute if score $(self_called) consts matches 0 run execute as @e[type=armor_stand, tag=generating] store result entity @s Pos[0] double 1 run scoreboard players get temp1 server
$execute if score $(self_called) consts matches 0 run execute as @e[type=armor_stand, tag=generating] store result entity @s Pos[1] double 1 run scoreboard players get temp2 server
$execute if score $(self_called) consts matches 0 run execute as @e[type=armor_stand, tag=generating] store result entity @s Pos[2] double 1 run scoreboard players get temp3 server

$execute if score $(self_called) consts matches 0 run execute as @e[type=armor_stand, tag=generating] at @s run tp @s ~.5 ~ ~.5
$execute if score $(self_called) consts matches 0 run execute as @e[type=armor_stand, tag=generating] at @s run place template 3008:pillar/bases/$(type) ~ ~-1 ~

$execute if score $(self_called) consts matches 0 run scoreboard players set temp10 server 125



$execute if score temp10 server matches 122..125 run tellraw @a[scores={logging=1}] ["! log: generating pillar with mark $(letter)$(number) and type $(type); stage ", {"score": {"name": "temp10", "objective": "server"}}]
$execute if score temp10 server matches 122 run tellraw @a[scores={logging=1}] ["! log: generating pillar with mark $(letter)$(number) and type $(type); continuing until stage 3 with no logging"]
$execute if score temp10 server matches 0..3 run tellraw @a[scores={logging=1}] ["! log: generating pillar with mark $(letter)$(number) and type $(type); stage ", {"score": {"name": "temp10", "objective": "server"}}]

execute as @e[type=armor_stand, tag=generating] at @s run tp @s ~ ~16 ~

execute as @e[type=armor_stand, tag=generating] at @s unless score temp10 server matches 125 run place template 3008:pillar/main ~ ~-1 ~

execute as @e[type=armor_stand, tag=generating] at @s if score temp10 server matches 125 run place template 3008:pillar/mark ~ ~-1 ~
$execute as @e[type=armor_stand, tag=generating] at @s if score temp10 server matches 125 run place template 3008:pillar/marks/letters/pillar_mark_$(letter) ~ ~-1 ~
$execute as @e[type=armor_stand, tag=generating] at @s if score temp10 server matches 125 run place template 3008:pillar/marks/numbers/pillar_mark_$(number) ~ ~-1 ~


scoreboard players remove temp10 server 1

$execute if score temp10 server matches 1.. run function 3008:generation/misc/pillar {letter: $(letter), number: $(number), type: $(type), self_called: 1}
execute as @e[type=armor_stand, tag=generating] at @s unless score temp10 server matches 1.. run fill ~ 2010 ~ ~15 2010 ~15 light_gray_concrete
execute as @e[type=armor_stand, tag=generating] at @s unless score temp10 server matches 1.. run fill ~ 2011 ~ ~15 2014 ~15 air

scoreboard players reset temp10 server
scoreboard players reset temp_gen_substage server