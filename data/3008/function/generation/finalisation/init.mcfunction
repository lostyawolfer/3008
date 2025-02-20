execute if score temp_gen_final server matches 1..99 run title @a title "generation complete"
execute if score temp_gen_final server matches 1..99 run title @a subtitle [{"text": "", "color": "#7db9c4"}, "letting your server stabilize"]

execute if score temp_gen_final server matches 100.. as @a run stopsound @s
execute if score temp_gen_final server matches 100.. as @a run function 3008:misc/spawntp
execute if score temp_gen_final server matches 100.. run gamemode adventure @a
execute if score temp_gen_final server matches 100.. run title @a times 0 0 40
execute if score temp_gen_final server matches 100.. run title @a subtitle {"text": "enjoy!", "color": "green"}
execute if score temp_gen_final server matches 100.. run scoreboard players reset temp_gen_stage_percent server
execute if score temp_gen_final server matches 100.. run scoreboard players reset temp_gen_final server


execute if score temp_gen_final server matches 0.. run scoreboard players add temp_gen_final server 1