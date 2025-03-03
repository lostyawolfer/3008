forceload add ~-32 ~-32 ~32 ~32
item replace entity @a armor.head with paper[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "3008:vignettes/loading"}, minecraft:enchantments={levels:{binding_curse:1}, show_in_tooltip: false}, minecraft:enchantment_glint_override=false, minecraft:custom_data={game:0}, minecraft:custom_name='{"text":""}', hide_tooltip={}]
gamemode spectator @a
stopsound @a ambient

tellraw @a[scores={logging=1}] ["\n"]
$execute if score temp-1 server matches 0.. run tellraw @a[scores={logging=1}] ["! log: generate_line: not parsing argument size:$(size) because temp-1 is already at ", {"score": {"name": "temp-1", "objective": "server"}}]

$execute unless score temp-1 server matches 0.. run tellraw @a[scores={logging=1}] "! log: generate_line: parsed argument size:$(size)"
$execute unless score temp-1 server matches 0.. run scoreboard players set temp-1 server $(size)


$execute if score temp-2 server matches 0.. run tellraw @a[scores={logging=1}] ["! log: generate_line: not parsing argument pillars:$(pillars) because temp-2 is already at ", {"score": {"name": "temp-2", "objective": "server"}}]

$execute unless score temp-2 server matches 0.. run tellraw @a[scores={logging=1}] "! log: generate_line: parsed argument pillars:$(pillars)"
$execute unless score temp-2 server matches 0.. run scoreboard players set temp-2 server $(pillars)


execute unless entity @e[type=armor_stand, tag=generating2] run summon armor_stand ~ ~ ~ {Invulnerable: 1b, NoGravity: 1b, Invisible: 1b, Tags: ["generating2"]}




scoreboard players add temp-3 server 1
scoreboard players operation temp-3% server = temp-3 server
scoreboard players operation temp-3% server %= 8 consts

execute as @e[type=armor_stand, tag=generating2] at @s unless score temp-3% server matches 4 run function 3008:generation/random_plot/generate
execute as @e[type=armor_stand, tag=generating2] at @s if score temp-3% server matches 4 unless score temp-2 server matches 1 run function 3008:generation/random_plot/generate

execute as @e[type=armor_stand, tag=generating2] at @s if score temp-3% server matches 3 if score temp-2 server matches 1 run scoreboard players add temp-5 server 1
execute as @e[type=armor_stand, tag=generating2] at @s if score temp-3% server matches 3 if score temp-2 server matches 1 run title @a subtitle [{"text": "", "color": "gray"}, "", {"score": {"name": "temp_gen_stage", "objective": "server"}}, "p/", {"score": {"name": "temp_gen_stage_max", "objective": "server"}}, " // ", {"score": {"name": "temp-1", "objective": "server"}}, "x", {"score": {"name": "temp-10", "objective": "server"}}, " -- ", {"score": {"name": "temp_gen_stage_percent", "objective": "server"}, "color":"green"}, {"text": "%", "color": "green"}]

execute as @e[type=armor_stand, tag=generating2] at @s if score temp-3% server matches 4 store result score temp!!0 server run function 3008:misc/generate_random {min: 1, max: 20}
execute as @e[type=armor_stand, tag=generating2] at @s if score temp-3% server matches 4 unless score temp!!0 server matches 1..2 run function 3008:generation/misc/pillar_gen_full_macro {type: normal}
execute as @e[type=armor_stand, tag=generating2] at @s if score temp-3% server matches 4 if score temp!!0 server matches 1 run function 3008:generation/misc/pillar_gen_full_macro {type: broken}
execute as @e[type=armor_stand, tag=generating2] at @s if score temp-3% server matches 4 if score temp!!0 server matches 2 run function 3008:generation/misc/pillar_gen_full_macro {type: pallets}


execute as @e[type=armor_stand, tag=generating2] at @s run forceload add ~-16 ~-32 ~16 ~32
execute as @e[type=armor_stand, tag=generating2] at @s run tp @s ~16 ~ ~








execute if score temp-1 server matches 1.. run scoreboard players remove temp-1 server 1
execute if score temp-1 server matches 1.. run return 1

tellraw @a[scores={logging=1}] "! log: exiting generate_line function"
execute if score temp-30% server matches 4 run scoreboard players set temp_gen_delay2 server 70
kill @e[type=armor_stand, tag=generating2]
forceload remove all
forceload add ~-32 ~-32 ~32 ~32
scoreboard players reset temp-1 server
scoreboard players reset temp-2 server
scoreboard players reset temp-3 server
scoreboard players reset temp-4 server
scoreboard players reset temp-5 server
scoreboard players reset temp!!0 server