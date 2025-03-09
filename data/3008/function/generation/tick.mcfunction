execute if score temp_gen_before_starting_current server matches 0.. as @a[limit=1] run return run function 3008:generation/final_generate
execute unless score generated server matches 1.. unless score temp_gen_before_starting_current server matches 0.. in 3008:infinite_ikea run worldborder warning distance 30000000
execute unless score generated server matches 1.. unless score temp_gen_before_starting_current server matches 0.. in 3008:infinite_ikea run tp @a[nbt=!{Dimension:"3008:infinite_ikea"}] 0 0 0
execute unless score generated server matches 1.. unless score temp_gen_before_starting_current server matches 0.. in 3008:infinite_ikea run title @a actionbar "Whenever you feel ready, go to coords 0, 0, 0 and do /function 3008:generation/final_generate"
execute unless score generated server matches 1.. run scoreboard players reset @a stat.playtime
execute unless score generated server matches 1.. run return -1


execute if score temp_gen_stage_percent server matches ..10 in 3008:infinite_ikea run tp @a 15 12 15 -45 20
execute if score temp_gen_stage_percent server matches 11..20 in 3008:infinite_ikea run tp @a 100 12 100 -45 20
execute if score temp_gen_stage_percent server matches 21..30 in 3008:infinite_ikea run tp @a 200 12 200 -45 20
execute if score temp_gen_stage_percent server matches 31..40 in 3008:infinite_ikea run tp @a 300 12 300 -45 20
execute if score temp_gen_stage_percent server matches 41..50 in 3008:infinite_ikea run tp @a 400 12 400 -45 20
execute if score temp_gen_stage_percent server matches 51..60 in 3008:infinite_ikea run tp @a 450 12 450 -45 20
execute if score temp_gen_stage_percent server matches 61..70 in 3008:infinite_ikea run tp @a 500 12 500 -45 20
execute if score temp_gen_stage_percent server matches 71..80 in 3008:infinite_ikea run tp @a 550 12 550 -45 20
execute if score temp_gen_stage_percent server matches 81..90 in 3008:infinite_ikea run tp @a 650 12 650 -45 20
execute if score temp_gen_stage_percent server matches 91..100 in 3008:infinite_ikea run tp @a 750 12 750 -45 20
execute if score temp_gen_stage_percent server matches 15.. run effect clear @a

execute if score temp-1 server matches 0.. run title @a times 0 999999999 999999999
execute if score temp-1 server matches 0.. unless score temp_gen_delay server matches 1.. unless score temp_gen_delay2 server matches 1.. unless entity @e[type=armor_stand, tag=generating2] run title @a subtitle [{"text": "", "color": "#b18e8e"}, "", {"score": {"name": "temp_gen_stage", "objective": "server"}}, "/", {"score": {"name": "temp_gen_stage_max", "objective": "server"}}, " // ", {"score": {"name": "temp-1", "objective": "server"}}, "x", {"score": {"name": "temp-10", "objective": "server"}}, " -- ", {"score": {"name": "temp_gen_stage_percent", "objective": "server"}, "color":"green"}, {"text": "%", "color": "green"}]
execute if score temp-1 server matches 0.. as @e[type=armor_stand, tag=generating2] at @s run function 3008:generation/misc/generate_line {size: 0, pillars: 0}
execute if score temp-1 server matches 0.. run scoreboard players reset @a stat.playtime
execute if score temp-1 server matches 0.. run return 1

execute if score temp-10 server matches 0.. run title @a times 0 999999999 999999999
execute if score temp-10 server matches 0.. unless score temp_gen_delay server matches 1.. unless score temp_gen_delay2 server matches 1.. unless entity @e[type=armor_stand, tag=generating2] run title @a subtitle [{"text": "", "color": "#b18e8e"}, "", {"score": {"name": "temp_gen_stage", "objective": "server"}}, "/", {"score": {"name": "temp_gen_stage_max", "objective": "server"}}, " // ", {"score": {"name": "temp-1", "objective": "server"}}, "x", {"score": {"name": "temp-10", "objective": "server"}}, " -- ", {"score": {"name": "temp_gen_stage_percent", "objective": "server"}, "color":"green"}, {"text": "%", "color": "green"}]
execute if score temp-10 server matches 0.. as @e[type=armor_stand, tag=generating3] at @s run function 3008:generation/misc/generate_matrix {length: 0, width: 0}
execute if score temp-10 server matches 0.. run scoreboard players reset @a stat.playtime
execute if score temp-10 server matches 0.. run return 2

execute if score temp_gen_final server matches 0.. run title @a times 0 999999999 999999999
execute if score temp_gen_final server matches 0.. run function 3008:generation/finalisation/init
execute if score temp_gen_final server matches 0.. run scoreboard players reset @a stat.playtime
execute if score temp_gen_final server matches 0.. run return 3

scoreboard players reset temp-1 server
scoreboard players reset temp-2 server
scoreboard players reset temp-3 server
scoreboard players reset temp-4 server
scoreboard players reset temp-5 server
scoreboard players reset temp-10 server
scoreboard players reset temp-20 server
scoreboard players reset temp-30 server
scoreboard players reset temp-40 server
scoreboard players reset temp-50 server
scoreboard players reset temp_gen_stage_max server