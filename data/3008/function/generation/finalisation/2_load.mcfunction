execute unless score temp-10 server matches 1.. run scoreboard players add temp_gen_stage_before_gen server 1
execute unless score temp-10 server matches 1.. run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
execute unless score temp-10 server matches 1.. run forceload add -1 -1 -1 816
