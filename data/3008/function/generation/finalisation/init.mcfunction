execute if score temp_gen_final server matches 0 run title @a title "worldborder again (4/4)"
execute if score temp_gen_final server matches 0 run scoreboard players add temp_gen_stage_before_gen server 0
execute if score temp_gen_final server matches 0 run function 3008:generation/finalisation/0
execute if score temp_gen_final server matches 1 run function 3008:generation/finalisation/1_load
execute if score temp_gen_final server matches 2 run function 3008:generation/finalisation/1_fill
execute if score temp_gen_final server matches 3 run function 3008:generation/finalisation/1_make_sure
execute if score temp_gen_final server matches 4 run function 3008:generation/finalisation/1_unload
execute if score temp_gen_final server matches 5 run function 3008:generation/finalisation/2_load
execute if score temp_gen_final server matches 6 run function 3008:generation/finalisation/2_fill
execute if score temp_gen_final server matches 7 run function 3008:generation/finalisation/2_make_sure
execute if score temp_gen_final server matches 8 run function 3008:generation/finalisation/2_unload
execute if score temp_gen_final server matches 9 run function 3008:generation/finalisation/3_load
execute if score temp_gen_final server matches 10 run function 3008:generation/finalisation/3_fill
execute if score temp_gen_final server matches 11 run function 3008:generation/finalisation/3_make_sure
execute if score temp_gen_final server matches 12 run function 3008:generation/finalisation/3_unload
execute if score temp_gen_final server matches 13 run function 3008:generation/finalisation/4_load
execute if score temp_gen_final server matches 14 run function 3008:generation/finalisation/4_fill
execute if score temp_gen_final server matches 15 run function 3008:generation/finalisation/4_make_sure
execute if score temp_gen_final server matches 16 run function 3008:generation/finalisation/4_unload

execute if score temp_gen_final server matches 17..99 run title @a title "generation complete"
execute if score temp_gen_final server matches 17..99 run title @a subtitle [{"text": "", "color": "#7db9c4"}, "letting your server stabilize"]

execute if score temp_gen_final server matches 100.. as @a run stopsound @s
execute if score temp_gen_final server matches 100.. as @a run function 3008:misc/spawntp
execute if score temp_gen_final server matches 100.. run gamemode adventure @a
execute if score temp_gen_final server matches 100.. run title @a times 0 0 40
execute if score temp_gen_final server matches 100.. run title @a subtitle {"text": "enjoy!", "color": "green"}
execute if score temp_gen_final server matches 100.. run scoreboard players reset temp_gen_stage_percent server
execute if score temp_gen_final server matches 100.. run scoreboard players reset temp_gen_final server


execute if score temp_gen_final server matches 0.. run scoreboard players add temp_gen_final server 1