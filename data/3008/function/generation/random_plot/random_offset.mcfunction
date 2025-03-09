# scoreboard players add temp_gen_stage server 1
# scoreboard players operation temp_gen_stage_percent server = temp_gen_stage server
# scoreboard players operation temp_gen_stage_percent server *= 100 consts
# scoreboard players operation temp_gen_stage_percent server /= temp_gen_stage_max server
# title @a subtitle [{"text": "", "color": "gray"}, "", {"score": {"name": "temp_gen_stage", "objective": "server"}}, "/", {"score": {"name": "temp_gen_stage_max", "objective": "server"}}, " // ", {"score": {"name": "temp-1", "objective": "server"}}, "x", {"score": {"name": "temp-10", "objective": "server"}}, " -- ", {"score": {"name": "temp_gen_stage_percent", "objective": "server"}, "color":"green"}, {"text": "%", "color": "green"}]




execute as @e[type=armor_stand, tag=generating_check] run kill @s
summon armor_stand ~ ~ ~ {Invulnerable: 1b, NoGravity: 1b, Invisible: 1b, Tags: ["generating_check"]}

execute as @e[type=armor_stand, tag=generating_check] store result score temp1 server run data get entity @s Pos[0]
execute as @e[type=armor_stand, tag=generating_check] store result score temp3 server run data get entity @s Pos[2]

scoreboard players operation temp1 server /= 16 consts
scoreboard players operation temp1 server *= 16 consts

scoreboard players operation temp2 server = 0 consts

scoreboard players operation temp3 server /= 16 consts
scoreboard players operation temp3 server *= 16 consts

execute as @e[type=armor_stand, tag=generating_check] store result entity @s Pos[0] double 1 run scoreboard players get temp1 server
execute as @e[type=armor_stand, tag=generating_check] store result entity @s Pos[1] double 1 run scoreboard players get temp2 server
execute as @e[type=armor_stand, tag=generating_check] store result entity @s Pos[2] double 1 run scoreboard players get temp3 server

scoreboard players reset temp1 server
scoreboard players reset temp2 server
scoreboard players reset temp3 server


execute as @e[type=armor_stand, tag=generating_check] at @s run tp @s ~.5 ~ ~.5



execute store result score temp server run function 3008:misc/generate_random {min: 1, max: 999}
execute if score temp server matches 0 run function 3008:generation/plot/random_offset_single {plot: undefined}


execute if score temp server matches 001..100 run function 3008:generation/plot/random_offset_single {plot: bedroom}
execute if score temp server matches 101..200 run function 3008:generation/plot/random_offset_single {plot: wardrobes}
execute if score temp server matches 201..300 run function 3008:generation/plot/random_offset_single {plot: campfire}
execute if score temp server matches 301..330 run function 3008:generation/plot/random_offset_single {plot: cozy_bedroom}
execute if score temp server matches 331..400 run function 3008:generation/plot/random_offset_single {plot: billiards}
execute if score temp server matches 401..440 run function 3008:generation/plot/random_offset_single {plot: redstone}
execute if score temp server matches 441..480 run function 3008:generation/plot/random_offset_single {plot: small_industrial_shelves}
execute if score temp server matches 481..510 run function 3008:generation/plot/random_offset_single {plot: windows}
execute if score temp server matches 511..530 run function 3008:generation/plot/random_offset_single {plot: complementary_nether}
execute if score temp server matches 531..540 run function 3008:generation/plot/random_offset_single {plot: greenhouse}
execute if score temp server matches 541..600 run function 3008:generation/plot/random_offset_single {plot: outdoor}
execute if score temp server matches 601..730 run function 3008:generation/plot/random_offset_single {plot: four_sided_something}
execute if score temp server matches 731..830 run function 3008:generation/plot/random_offset_single {plot: lamps}
execute if score temp server matches 831..860 run function 3008:generation/plot/random_offset_single {plot: swimming_pool}
execute if score temp server matches 861..865 run function 3008:generation/plot/random_offset_single {plot: corners}
execute if score temp server matches 866..870 run function 3008:generation/plot/random_offset_single {plot: glass_table}
execute if score temp server matches 871..930 run function 3008:generation/plot/random_offset_single {plot: swimming_pool}
execute if score temp server matches 931..999 run function 3008:generation/plot/random_offset_single {plot: tv_bedroom}


