item replace entity @a armor.head with paper[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "3008:vignettes/loading"}, minecraft:enchantments={levels:{binding_curse:1}, show_in_tooltip: false}, minecraft:enchantment_glint_override=false, minecraft:custom_data={game:0}, minecraft:custom_name='{"text":""}', hide_tooltip={}]
gamemode spectator @a
stopsound @a ambient
effect give @a night_vision infinite 0 true

execute in 3008:infinite_ikea run tp @a 15 20 15 -45 45
gamerule commandModificationBlockLimit 2147483647


title @a subtitle [{"text": "", "color": "gray"}, "starting: forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]

stopsound @a
title @a times 0 999999999 999999999
title @a title "forcing chunk generation"

scoreboard players add temp_gen_stage_before_gen server 0
title @a subtitle [{"text": "", "color": "gray"}, "starting: forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}]

execute in 3008:infinite_ikea run summon armor_stand -1 0 -1 {Tags: [generating0], Invisible: 1b, NoGravity: 1b}
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all




scoreboard players set temp_gen_stage_before_gen server 0
title @a title "setting biome"



execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s -1 0 -1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run tp @s ~ ~ ~64
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~ 816 ~
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~16 816 ~16
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~32 816 ~32
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/56"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload add 0 ~48 816 ~48



execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "setting biome"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run fillbiome -5 -16 -5 810 810 810 3008:infinite_ikea

execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "unloading"]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run forceload remove all


scoreboard players set temp_gen_stage_before_gen server 0




execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run scoreboard players add temp_gen_stage_before_gen server 1
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run title @a subtitle [{"text": "", "color": "gray"}, "killed armor stand ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}]
execute in 3008:infinite_ikea as @e[type=armor_stand, tag=generating0] at @s run kill @s

title @a title "worldborder"

scoreboard players set temp_gen_stage_before_gen server 0
title @a subtitle [{"text": "", "color": "gray"}, "thinking ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]

forceload remove all

scoreboard players add temp_gen_stage_before_gen server 1
title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
forceload add -1 -1 816 -1
title @a subtitle [{"text": "", "color": "gray"}, "filling ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
fill -1 0 -1 800 2010 -1 gray_concrete
title @a subtitle [{"text": "", "color": "gray"}, "making sure ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
fill -1 0 -1 800 2010 -1 gray_concrete
title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
forceload remove all

scoreboard players add temp_gen_stage_before_gen server 1
title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
forceload add -1 -1 -1 816
title @a subtitle [{"text": "", "color": "gray"}, "filling ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
fill -1 0 -1 -1 2010 800 gray_concrete
title @a subtitle [{"text": "", "color": "gray"}, "making sure ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
fill -1 0 -1 -1 2010 800 gray_concrete
title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
forceload remove all


scoreboard players add temp_gen_stage_before_gen server 1
title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
forceload add 816 -1 816 816
title @a subtitle [{"text": "", "color": "gray"}, "filling ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
fill 800 0 -1 800 2010 800 gray_concrete
title @a subtitle [{"text": "", "color": "gray"}, "making sure ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
fill 800 0 -1 800 2010 800 gray_concrete
title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
forceload remove all

scoreboard players add temp_gen_stage_before_gen server 1
title @a subtitle [{"text": "", "color": "gray"}, "forceloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
forceload add -1 816 816 816
title @a subtitle [{"text": "", "color": "gray"}, "filling ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
fill -1 0 800 800 2010 800 gray_concrete
title @a subtitle [{"text": "", "color": "gray"}, "making sure ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
fill -1 0 800 800 2010 800 gray_concrete
title @a subtitle [{"text": "", "color": "gray"}, "unloading ", {"score": {"name": "temp_gen_stage_before_gen", "objective": "server"}}, "/4"]
forceload remove all

scoreboard players reset temp_gen_stage_before_gen server
execute in 3008:infinite_ikea positioned 0 0 0 run function 3008:generation/generate_matrix {length: 50, width: 51}

scoreboard players reset temp_gen_before_starting_current server
scoreboard players set generated server 1