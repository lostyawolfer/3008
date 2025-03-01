forceload add ~-32 ~-32 ~32 ~32
item replace entity @a armor.head with paper[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "3008:vignettes/loading"}, minecraft:enchantments={levels:{binding_curse:1}, show_in_tooltip: false}, minecraft:enchantment_glint_override=false, minecraft:custom_data={game:0}, minecraft:custom_name='{"text":""}', hide_tooltip={}]
gamemode spectator @a
stopsound @a ambient


tellraw @a[scores={logging=1}] ["\n\n\n"]
$execute if score temp-10 server matches 0.. run tellraw @a[scores={logging=1}] ["! log: generate_matrix: not parsing argument width:$(width) because temp-10 is already at ", {"score": {"name": "temp-10", "objective": "server"}}]

$execute unless score temp-10 server matches 0.. run tellraw @a[scores={logging=1}] "! log: generate_matrix: parsed argument width:$(width)"
$execute unless score temp-10 server matches 0.. run scoreboard players set temp-10 server $(width)


$execute if score temp-20 server matches 0.. run tellraw @a[scores={logging=1}] ["! log: generate_matrix: not parsing argument length:$(length) because temp-20 is already at ", {"score": {"name": "temp-20", "objective": "server"}}]

$execute unless score temp-20 server matches 0.. run tellraw @a[scores={logging=1}] "! log: generate_matrix: parsed argument length:$(length)"
$execute unless score temp-20 server matches 0.. run scoreboard players set temp-20 server $(length)

execute unless score temp_gen_stage_max server matches 1.. run scoreboard players set temp_gen_delay server 250
execute unless score temp_gen_stage_max server matches 1.. run scoreboard players set temp_gen_stage_percent server 0
execute unless score temp_gen_stage_max server matches 1.. run function 3008:generation/misc/get_max_jobs


execute unless entity @e[type=armor_stand, tag=generating3] run summon armor_stand ~ ~ ~ {Invulnerable: 1b, NoGravity: 1b, Invisible: 1b, Tags: ["generating3"]}



execute if score temp_gen_delay server matches 300.. run title @a actionbar [{"text": "", "color": "aqua"}, "don't worry if it freezes for like 3-10 seconds. if it's longer tho, kill the game's/server's process and try again"]
execute if score temp_gen_delay server matches 1.. run title @a subtitle [{"text": "", "color": "#7db9c4"}, "letting your server stabilize before starting (", {"score": {"name": "temp_gen_delay", "objective": "server"}}, ")"]
execute if score temp_gen_delay server matches 1.. run title @a title "plots (3/4)"
execute if score temp_gen_delay server matches 10 run effect clear @s
execute if score temp_gen_delay server matches 10 run stopsound @a
execute if score temp_gen_delay server matches 10 as @a at @s run playsound 3008:loading master @s ~ ~ ~ 1 1 1
execute if score temp_gen_delay server matches 1.. run return run scoreboard players remove temp_gen_delay server 1
execute if score temp_gen_delay2 server matches 1.. run title @a subtitle [{"text": "", "color": "#c5c3ad"}, "", {"score": {"name": "temp_gen_stage", "objective": "server"}}, "/", {"score": {"name": "temp_gen_stage_max", "objective": "server"}}, " // ", {"score": {"name": "temp-1", "objective": "server"}}, "x", {"score": {"name": "temp-10", "objective": "server"}}, " -- ", {"score": {"name": "temp_gen_stage_percent", "objective": "server"}, "color":"green"}, {"text": "%", "color": "green"}]
execute if score temp_gen_delay2 server matches 1.. run return run scoreboard players remove temp_gen_delay2 server 1
execute if score temp-1 server matches 1.. run return 1

tellraw @a[scores={logging=1}] ["! log: generate_matrix: temp-10 is now at ", {"score": {"name": "temp-10", "objective": "server"}}]
title @a title "plots (3/4)"

execute if score temp-10 server matches 1.. run scoreboard players remove temp-10 server 1
execute if score temp-10 server matches 1.. run tellraw @a[scores={logging=1}] "! log: continuing generate_matrix function"

execute unless score temp-10 server matches 1.. run tellraw @a[scores={logging=1}] "! log: exiting generate_matrix function"
execute unless score temp-10 server matches 1.. run kill @e[type=armor_stand, tag=generating3]
execute unless score temp-10 server matches 1.. run kill @e[type=armor_stand, tag=generating2]
execute unless score temp-10 server matches 1.. run scoreboard players add temp_gen_final server 0
execute unless score temp-10 server matches 1.. run scoreboard players set GLOBAL server.items_spawned 0
execute unless score temp-10 server matches 1.. run scoreboard players reset temp-1 server
execute unless score temp-10 server matches 1.. run scoreboard players reset temp-2 server
execute unless score temp-10 server matches 1.. run scoreboard players reset temp-3 server
execute unless score temp-10 server matches 1.. run scoreboard players reset temp-3% server
execute unless score temp-10 server matches 1.. run scoreboard players reset temp-4 server
execute unless score temp-10 server matches 1.. run scoreboard players reset temp-5 server
execute unless score temp-10 server matches 1.. run scoreboard players reset temp-20 server
execute unless score temp-10 server matches 1.. run scoreboard players reset temp-30 server
execute unless score temp-10 server matches 1.. run scoreboard players reset temp-30% server
execute unless score temp-10 server matches 1.. run scoreboard players reset temp-40 server
execute unless score temp-10 server matches 1.. run scoreboard players reset temp-50 server
execute unless score temp-10 server matches 1.. run return run scoreboard players reset temp-10 server





tellraw @a[scores={logging=1}] "! log: generate_matrix: got to the point of getting temp-30 and temp-30%"

scoreboard players add temp-30 server 1
scoreboard players operation temp-30% server = temp-30 server
scoreboard players operation temp-30% server %= 8 consts

tellraw @a[scores={logging=1}] "! log: generate_matrix: got to the point AFTER getting temp-30 and temp-30%"

execute as @e[type=armor_stand, tag=generating3] at @s unless score temp-30% server matches 4 run tellraw @a[scores={logging=1}] "! log: generate_matrix: score temp-30% is not 4; creating line with no pillars"
execute as @e[type=armor_stand, tag=generating3] at @s unless score temp-30% server matches 4 run scoreboard players operation temp-1 server = temp-20 server
execute as @e[type=armor_stand, tag=generating3] at @s unless score temp-30% server matches 4 run scoreboard players set temp-2 server 0
execute as @e[type=armor_stand, tag=generating3] at @s unless score temp-30% server matches 4 run function 3008:generation/misc/generate_line {size: 0, pillars: 0}
execute as @e[type=armor_stand, tag=generating3] at @s unless score temp-30% server matches 4 if score temp_gen_stage server matches 20 run effect clear @a
execute as @e[type=armor_stand, tag=generating3] at @s if score temp-30% server matches 4 run tellraw @a[scores={logging=1}] "! log: generate_matrix: score temp-30% is yes 4; creating line with yes pillars"
execute as @e[type=armor_stand, tag=generating3] at @s if score temp-30% server matches 4 run scoreboard players operation temp-1 server = temp-20 server
execute as @e[type=armor_stand, tag=generating3] at @s if score temp-30% server matches 4 run scoreboard players set temp-2 server 1
execute as @e[type=armor_stand, tag=generating3] at @s if score temp-30% server matches 4 run scoreboard players add temp-50 server 1
execute as @e[type=armor_stand, tag=generating3] at @s if score temp-30% server matches 4 run function 3008:generation/misc/generate_line {size: 0, pillars: 0}
execute as @e[type=armor_stand, tag=generating3] at @s run tellraw @a[scores={logging=1}] "! log: generate_matrix: forceloading next area and getting the stand there"
execute as @e[type=armor_stand, tag=generating3] at @s run forceload add ~-16 ~-32 ~16 ~32
execute as @e[type=armor_stand, tag=generating3] at @s run tp @s ~ ~ ~16