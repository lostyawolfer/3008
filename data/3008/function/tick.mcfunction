time set midnight
execute as @a[tag=!set_up] run function 3008:misc/spawntp
tag @a[tag=!set_up] add set_up
gamemode adventure @a[gamemode=survival]
recipe take @a *
effect give @a instant_health 5 0 true
execute as @a run attribute @s attack_speed modifier add 3008:base 2000000 add_value
execute as @a run attribute @s attack_damage modifier add 3008:base -.75 add_multiplied_total
execute as @e[type=zombie] run data merge entity @s {Fire: -20s}

team join player @a[gamemode=adventure, scores={stat.sleep_time=0..99}, team=!player]
team join sleeping @a[gamemode=adventure, scores={stat.sleep_time=100..}, team=!sleeping]
team join dead @a[gamemode=spectator, tag=dead, team=!dead]
team join spectator @a[gamemode=spectator, tag=!dead, team=!spectator]
team join creative @a[gamemode=creative, team=!creative]







execute as @a store result score @s stat.sleep_time run data get entity @s SleepTimer

execute store result score playercount server if entity @a[gamemode=adventure]
execute store result score standcount server if entity @e[type=armor_stand, tag=spawn_item]
execute store result score natitemscount server if entity @e[type=item, tag=natural_spawn]
execute store result score true_playercount server if entity @a
execute store result score sleepcount server if entity @a[scores={stat.sleep_time=100..}]

execute if score standcount server matches 250.. run kill @e[type=armor_stand, tag=spawn_item, limit=1, sort=random]
execute if score natitemscount server matches 350.. run kill @e[type=item, tag=natural_spawn, limit=1, sort=random]

execute as @a store result score @s stat.height run data get entity @s Pos[1]

execute as @e[tag=game] at @s if entity @a[distance=5..40] run tag @s add has_players
execute as @e[tag=game] at @s unless entity @a[distance=5..40] run tag @s remove has_players
execute store result score zombies_total server if entity @e[tag=game, tag=has_players]
execute store result score zombies_true_total server if entity @e[tag=game]


execute if score sleepcount server >= playercount server if score playercount server matches 1.. run scoreboard players add time server 5
execute as @a if score @s stat.sleep_time matches ..9 if score sleepcount server >= playercount server run scoreboard players remove @s[scores={health.percentage=..99}] health.regen_timer 2
execute as @a if score @s stat.sleep_time matches 10.. unless score sleepcount server >= playercount server run scoreboard players remove @s[scores={health.percentage=..99}] health.regen_timer 2
execute as @a if score @s stat.sleep_time matches 10.. if score sleepcount server >= playercount server run scoreboard players remove @s[scores={health.percentage=..99}] health.regen_timer 4







# execute as @a if score @s stat.playtime matches 12000 run tellraw @s {"text": "\n[tip] tired of carrying only One Block At A Time™? use minecraft's native dropping mechanic to move blocks in bulks!", "color": "#8ad4ff"}


# execute as @a unless score @s tip.night matches 1.. if score daytime server matches ..-1 run scoreboard players set @s tip.night 1
# execute as @a if score @s tip.night matches 1 if score @s stat.playtime matches 1400.. run tellraw @s {"text": "\n[tip] use beds to make time go faster! they also let you heal faster. but be careful... there are monsters nearby...", "color": "#8ad4ff"}
# execute as @a if score @s tip.night matches 1 if score @s stat.playtime matches 1400.. run scoreboard players set @s tip.night 2

# execute as @a unless score @s tip.night_blood matches 1.. if score daytime server matches -2 run scoreboard players set @s tip.night_blood 1
# execute as @a if score @s tip.night_blood matches 1 if score @s stat.playtime matches 400.. run tellraw @s {"text": "\n[tip] this is a BLOOD NIGHT. be careful, the employees have gone rogue... and they really hurt. watch out even if you built a base in the sky!\njust so you know, this happens randomly with 1/10 chance every night.\nCurrent objective: SURVIVE.", "color": "#8ad4ff"}
# execute as @a if score @s tip.night_blood matches 1 if score @s stat.playtime matches 400.. run scoreboard players set @s tip.night_blood 2

# execute as @a unless score @s tip.night_fog matches 1.. if score daytime server matches -3 run scoreboard players set @s tip.night_fog 1
# execute as @a if score @s tip.night_fog matches 1 if score @s stat.playtime matches 400.. run tellraw @s {"text": "\n[tip] welcome to a foggy night! the employees are slow, and they can't hurt you.\nyep, you got it right, THIS NIGHT IS SAFE!!!\njust so you know, this happens randomly with 1/30 chance every night.", "color": "#8ad4ff"}
# execute as @a if score @s tip.night_fog matches 1 if score @s stat.playtime matches 400.. run scoreboard players set @s tip.night_fog 2

# execute as @a unless score @s tip.day_fog matches 1.. if score daytime server matches 2 run scoreboard players set @s tip.day_fog 1
# execute as @a if score @s tip.day_fog matches 1 if score @s stat.playtime matches 400.. run tellraw @s {"text": "\n[tip] welcome to your first foggy day! the employees are slow, but it... hurts.\nyep, you got it right, THIS DAY IS NOT SAFE!!!\njust so you know, this happens randomly with 1/15 chance every day.", "color": "#8ad4ff"}
# execute as @a if score @s tip.day_fog matches 1 if score @s stat.playtime matches 400.. run scoreboard players set @s tip.day_fog 2

# execute as @a unless score @s tip.day matches 1.. if score daytime server matches 1 run scoreboard players set @s tip.day 1
# execute as @a if score @s tip.day matches 1 if score @s stat.playtime matches 100.. run tellraw @s {"text": "\n[tip] daytime. it's bright, and SAFE. use the daytime to your advantage to gain BUILDING MATERIALS and CONSUMABLE RESOURCES.\nat night, the employees will be mad at you because the store is closed.\nyour objective is to use everything you see in this shop to your advantage to survive!\nneed inspiration of what to build first? build a .I. using oak planks :)", "color": "#8ad4ff"}
# execute as @a if score @s tip.day matches 1 if score @s stat.playtime matches 100.. run scoreboard players set @s tip.day 2

# execute as @a unless score @s tip.playtime matches 1.. run scoreboard players set @s tip.playtime 1
# execute as @a if score @s tip.playtime matches 1 if score @s stat.playtime matches 500.. run tellraw @s {"text": "\n[tip] use the clock to see the current TIME. the shop opens at 07:00 and closes at 22:00. use this to your advantage and MANAGE your time!\nthere you may also see a WEEKDAY. i'll tell you about this later!", "color": "#8ad4ff"}
# execute as @a if score @s tip.playtime matches 1 if score @s stat.playtime matches 500.. run scoreboard players set @s tip.playtime 2

# execute as @a if score @s tip.playtime matches 2 run scoreboard players set @s tip.playtime 3
# execute as @a if score @s tip.playtime matches 3 if score @s stat.playtime matches 40000.. run tellraw @s {"text": "\n[tip] so, as promised. the weekdays. they determine some important EVENTS that happen during the week.\nfirstly, the shop has a shorter day every SATURDAY and SUNDAY (closes at 18:00)\nevery TUESDAY some of the food items restock in the places you found them for the first time.\nuse this information to your advantage to plan for employee attacks and get your life together!", "color": "#8ad4ff"}
# execute as @a if score @s tip.playtime matches 3 if score @s stat.playtime matches 40000.. run scoreboard players set @s tip.playtime 4



execute unless score blood server matches 1 run scoreboard players set zombies_total_max server 10
execute if score blood server matches 1 run scoreboard players set zombies_total_max server 15
scoreboard players operation zombies_total_max server *= playercount server

execute if score zombies_total server < zombies_total_max server unless score zombies_true_total server matches 150.. as @a at @s unless score blood server matches 1 run function 3008:misc/spawn_zombie {distance: 25, height: 3}
execute if score zombies_total server < zombies_total_max server unless score zombies_true_total server matches 150.. as @a at @s if score blood server matches 1 run function 3008:misc/spawn_zombie {distance: 10, height: 500}

execute if score zombies_true_total server matches 151.. run tp @e[tag=game, limit=5] 0 -200 0

execute as @e[tag=game] at @s unless entity @a[distance=..50] run tp @s ~ ~-200 ~








# execute as @a[scores={stat.kill_zombie=1..}] run scoreboard players add @s health 6
# execute as @a[scores={stat.kill_zombie=1..}] run scoreboard players remove @s stat.kill_zombie 1
# execute as @a[scores={stat.kill_zombie_day=1..}] run scoreboard players add @s health 11
# execute as @a[scores={stat.kill_zombie_day=1..}] run scoreboard players remove @s stat.kill_zombie_day 1



execute as @e[type=item] if data entity @s Item{components:{"minecraft:custom_data":{game:2}}} run data modify entity @s Item.components.minecraft:custom_data.game set value -1
execute as @e[type=item] if data entity @s Item{components:{"minecraft:custom_data":{game:-1}}} run data modify entity @s Age set value 0
execute as @e[type=item] if data entity @s Item{components:{"minecraft:custom_data":{game:10}}} run data modify entity @s Age set value 0
execute as @e[type=item] if data entity @s Item{components:{"minecraft:custom_data":{game:0}}} run kill @s
execute as @e[type=item] if data entity @s Item{components:{"minecraft:custom_data":{game:1}}} run kill @s
execute as @e[type=item] if data entity @s Item{components:{"minecraft:custom_data":{game:3}}} run kill @s
execute as @e[type=item] if data entity @s {PickupDelay: 39s} run data modify entity @s PickupDelay set value 10s
clear @a *[custom_data={game:-1}]
clear @a *[custom_data={game:10}]
execute as @e[type=item, nbt={Item:{id: "minecraft:barrier"}}] run kill @s

execute as @e[type=item, nbt={Item:{components:{"minecraft:custom_data":{game:10}}}}] unless score @s time_lived matches 1.. unless entity @s[tag=natural_spawn] run kill @s
execute as @e[type=item] unless score @s time_lived matches 99.. run scoreboard players add @s time_lived 1


execute as @e[type=armor_stand, tag=spawn_item, tag=!set_up] at @s run tp @s ~ ~-5 ~
execute as @e[type=armor_stand, tag=spawn_item, tag=!set_up] at @s run tag @s add set_up
execute as @e[type=armor_stand, tag=spawn_item] run data merge entity @s {Invulnerable: 1b, Invisible: 1b, NoGravity: 1b}

#what items do
function 3008:item/action {item: apple, type: add, health: 8, hunger: 4}
function 3008:item/action {item: baked_potato, type: add, health: 2, hunger: 3}
# RAW BEEF is for MEDKIT
function 3008:item/action {item: beef, type: add, health: 50, hunger: 0}
function 3008:item/action {item: potato, type: remove, health: 3, hunger: 1}
function 3008:item/action {item: rabbit_stew, type: add, health: 7, hunger: 5}

execute if score time server matches 0 if score time.weekday server matches 2 run scoreboard players add GLOBAL server.items_spawned 1


execute as @a[scores={pickup_delay=1..}] run item replace entity @s container.2 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
execute as @a[scores={pickup_delay=1..}] run scoreboard players remove @s pickup_delay 1
function 3008:item/inventory {item: apple, stack: 5}
function 3008:item/inventory {item: totem_of_undying, stack: 1}
function 3008:item/inventory {item: baked_potato, stack: 5}
function 3008:item/inventory {item: potato, stack: 5}
function 3008:item/inventory_consumable {item: beef, stack: 2, anim: bow, time: 4, particles: false}
function 3008:item/inventory_consumable {item: rabbit_stew, stack: 2, anim: eat, time: 3, particles: true}


function 3008:check_block/normal {block: oak_planks, id: 1}
function 3008:check_block/normal {block: brown_concrete, id: 2}
function 3008:check_block/normal {block: ladder, id: 3}
function 3008:check_block/wall {block: torch, item: torch, id: 4}
function 3008:check_block/wall {block: wall_torch, item: torch, id: 4}
function 3008:check_block/wall {block: soul_torch, item: soul_torch, id: 5}
function 3008:check_block/wall {block: soul_wall_torch, item: soul_torch, id: 5}
function 3008:check_block/normal {block: lantern, id: 6}
function 3008:check_block/normal {block: soul_lantern, id: 7}
function 3008:check_block/normal {block: spruce_door, id: 8}
function 3008:check_block/normal {block: spruce_trapdoor, id: 9}
function 3008:check_block/normal {block: birch_door, id: 10}
function 3008:check_block/normal {block: birch_trapdoor, id: 11}
function 3008:check_block/normal {block: red_bed, id: 12}
function 3008:check_block/normal {block: green_bed, id: 13}
function 3008:check_block/normal {block: blue_bed, id: 14}
function 3008:check_block/normal {block: glass, id: 15}
function 3008:check_block/normal {block: oak_stairs, id: 16}
function 3008:check_block/normal {block: red_carpet, id: 17}
function 3008:check_block/normal {block: green_carpet, id: 18}
function 3008:check_block/normal {block: blue_carpet, id: 19}
function 3008:check_block/normal {block: glowstone, id: 20}
function 3008:check_block/normal {block: dark_oak_door, id: 21}
function 3008:check_block/normal {block: dark_oak_trapdoor, id: 22}
function 3008:check_block/normal {block: stone_button, id: 23}
function 3008:check_block/normal {block: iron_door, id: 24}
function 3008:check_block/normal {block: iron_trapdoor, id: 25}
function 3008:check_block/wall {block: birch_sign, item: birch_sign, id: 26}
function 3008:check_block/wall {block: birch_wall_sign, item: birch_sign, id: 26}
function 3008:check_block/normal {block: sea_lantern, id: 27}
function 3008:check_block/normal {block: chain, id: 28}
function 3008:check_block/normal {block: oak_fence, id: 29}
function 3008:check_block/normal {block: warped_stairs, id: 30}
function 3008:check_block/normal {block: crimson_stairs, id: 31}
function 3008:check_block/normal {block: prismarine_brick_stairs, id: 32}
function 3008:check_block/normal {block: birch_stairs, id: 33}
function 3008:check_block/normal {block: jungle_stairs, id: 34}
function 3008:check_block/block_data {block: daylight_detector, id: 35, state: 'inverted: "true"'}
function 3008:check_block/normal {block: redstone_lamp, id: 36}
function 3008:check_block/normal {block: yellow_carpet, id: 37}
function 3008:check_block/normal {block: end_stone_brick_stairs, id: 38}
function 3008:check_block/slab {block: oak_slab, result: oak_planks, id: 39}
function 3008:check_block/slab {block: birch_slab, result: birch_planks, id: 40}
function 3008:check_block/slab {block: jungle_slab, result: jungle_planks, id: 41}
function 3008:check_block/normal {block: quartz_stairs, id: 42}
function 3008:check_block/normal {block: dark_prismarine_stairs, id: 43}
function 3008:check_block/normal {block: diamond_block, id: 44}
function 3008:check_block/wall {block: redstone_wire, item: redstone, id: 46}
function 3008:check_block/normal {block: repeater, id: 47}
function 3008:check_block/normal {block: comparator, id: 48}
function 3008:check_block/normal {block: redstone_block, id: 49}
function 3008:check_block/wall {block: redstone_torch, item: redstone_torch, id: 50}
function 3008:check_block/wall {block: redstone_wall_torch, item: redstone_torch, id: 50}
function 3008:check_block/normal {block: lever, id: 51}
function 3008:check_block/normal {block: cobweb, id: 52}
function 3008:check_block/normal {block: birch_planks, id: 53}
function 3008:check_block/normal {block: jungle_planks, id: 54}
function 3008:check_block/normal {block: dark_oak_planks, id: 55}
function 3008:check_block/normal {block: dark_oak_stairs, id: 56}
function 3008:check_block/slab {block: dark_oak_slab, result: dark_oak_planks, id: 57}
function 3008:check_block/normal {block: cyan_carpet, id: 58}
function 3008:check_block/normal {block: brown_carpet, id: 59}
function 3008:check_block/normal {block: moss_block, id: 60}
function 3008:check_block/normal {block: moss_carpet, id: 61}
function 3008:check_block/normal {block: torchflower, id: 62}
function 3008:check_block/normal {block: pitcher_plant, id: 63}
function 3008:check_block/normal {block: poppy, id: 64}
function 3008:check_block/normal {block: dandelion, id: 65}
function 3008:check_block/normal {block: orange_tulip, id: 66}
function 3008:check_block/normal {block: cyan_bed, id: 67}
function 3008:check_block/normal {block: yellow_bed, id: 68}
function 3008:check_block/normal {block: purple_bed, id: 69}
function 3008:check_block/normal {block: purple_carpet, id: 70}
function 3008:check_block/wall {block: cyan_banner, item: cyan_banner, id: 71}
function 3008:check_block/wall {block: cyan_wall_banner, item: cyan_banner, id: 71}
function 3008:check_block/wall {block: red_banner, item: red_banner, id: 72}
function 3008:check_block/wall {block: red_wall_banner, item: red_banner, id: 72}
function 3008:check_block/wall {block: green_banner, item: green_banner, id: 73}
function 3008:check_block/wall {block: green_wall_banner, item: green_banner, id: 73}
function 3008:check_block/wall {block: spruce_sign, item: spruce_sign, id: 74}
function 3008:check_block/wall {block: spruce_wall_sign, item: spruce_sign, id: 74}
function 3008:check_block/normal {block: birch_button, id: 75}
function 3008:check_block/normal {block: stone_pressure_plate, id: 76}
function 3008:check_block/normal {block: oak_pressure_plate, id: 77}
function 3008:check_block/normal {block: observer, id: 78}
function 3008:check_block/normal {block: waxed_copper_bulb, id: 79}
function 3008:check_block/normal {block: oak_button, id: 80}
function 3008:check_block/normal {block: wither_rose, id: 81}
function 3008:check_block/wall {block: light_blue_banner, item: light_blue_banner, id: 82}
function 3008:check_block/wall {block: light_blue_wall_banner, item: light_blue_banner, id: 82}
function 3008:check_block/normal {block: white_bed, id: 83}
function 3008:check_block/normal {block: oak_hanging_sign, id: 84}
function 3008:check_block/normal {block: cobblestone_wall, id: 85}
function 3008:check_block/normal {block: shroomlight, id: 86}
function 3008:check_block/normal {block: polished_deepslate_wall, id: 87}
function 3008:check_block/normal {block: warped_fence, id: 88}
function 3008:check_block/normal {block: crimson_fence, id: 89}
function 3008:check_block/block_data {block: campfire, id: 90, state: 'lit: "false"'}
function 3008:check_block/block_data {block: soul_campfire, id: 91, state: 'lit: "false"'}
function 3008:check_block/normal {block: oak_fence_gate, id: 92}
function 3008:check_block/normal {block: iron_bars, id: 93}
function 3008:check_block/normal {block: mangrove_stairs, id: 94}
function 3008:check_block/wall {block: black_banner, item: black_banner, id: 95}
function 3008:check_block/wall {block: black_wall_banner, item: black_banner, id: 95}
function 3008:check_block/normal {block: red_wool, id: 100}
function 3008:check_block/normal {block: blue_wool, id: 101}
function 3008:check_block/normal {block: cyan_wool, id: 102}
function 3008:check_block/normal {block: gray_wool, id: 103}
function 3008:check_block/normal {block: lime_wool, id: 104}
function 3008:check_block/normal {block: pink_wool, id: 105}
function 3008:check_block/normal {block: black_wool, id: 106}
function 3008:check_block/normal {block: brown_wool, id: 107}
function 3008:check_block/normal {block: green_wool, id: 108}
function 3008:check_block/normal {block: white_wool, id: 109}
function 3008:check_block/normal {block: orange_wool, id: 110}
function 3008:check_block/normal {block: purple_wool, id: 111}
function 3008:check_block/normal {block: yellow_wool, id: 112}
function 3008:check_block/normal {block: magenta_wool, id: 113}




execute as @a[gamemode=adventure] unless score @s holding.current_block matches 1.. run item replace entity @s container.1 with diamond_axe[custom_data={game:1}, can_break={"blocks": "#3008:breakable"}, unbreakable={show_in_tooltip:false}, tool={rules:[{blocks: "#minecraft:mineable/pickaxe",speed:20,correct_for_drops:true}, {blocks: "#minecraft:mineable/axe",speed:20,correct_for_drops:true}, {blocks: "chain", speed:40,correct_for_drops:true}, {blocks: "cobweb", speed:20,correct_for_drops:true}, {blocks: "#minecraft:mineable/hoe",speed:20,correct_for_drops:true}, {blocks: "#minecraft:wool",speed:20,correct_for_drops:true}]}]

execute as @a[gamemode=adventure] unless score @s holding.current_block matches 1.. run clear @s *[custom_data={game:2}]
execute as @a[gamemode=adventure] unless score @s holding.current_block matches 1.. unless score @s pickup_delay matches 1.. run item replace entity @a[gamemode=adventure] container.2 with air

execute as @a[gamemode=adventure] if score @s holding.current_block matches 1.. run clear @s *[custom_data={game:1}]
execute as @a[gamemode=adventure] if score @s holding.current_block matches 1.. run item replace entity @s container.2 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
execute as @a[gamemode=adventure] unless entity @s[nbt={Inventory:[{Slot: 3b}]}] run item replace entity @s container.3 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
execute as @a[gamemode=adventure] unless entity @s[nbt={Inventory:[{Slot: 4b}]}] run item replace entity @s container.4 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
execute as @a[gamemode=adventure] unless entity @s[nbt={Inventory:[{Slot: 5b}]}] run item replace entity @s container.5 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
execute as @a[gamemode=adventure] unless entity @s[nbt={Inventory:[{Slot: 6b}]}] run item replace entity @s container.6 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
execute as @a[gamemode=adventure] unless entity @s[nbt={Inventory:[{Slot: 7b}]}] run item replace entity @s container.7 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
execute as @a[gamemode=adventure] unless entity @s[nbt={Inventory:[{Slot: 8b}]}] run item replace entity @s container.8 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]

execute as @a[gamemode=adventure] run item replace entity @s player.crafting.0 with air
execute as @a[gamemode=adventure] run item replace entity @s player.crafting.1 with air
execute as @a[gamemode=adventure] run item replace entity @s player.crafting.2 with air
execute as @a[gamemode=adventure] run item replace entity @s player.crafting.3 with air


item replace entity @a[gamemode=adventure] container.9 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.10 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.11 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.12 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.13 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.14 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.15 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.16 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.17 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.18 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.19 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.20 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.21 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.22 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.23 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.24 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.25 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.26 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.27 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.28 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.29 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.30 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.31 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.32 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.33 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.34 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
item replace entity @a[gamemode=adventure] container.35 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]

item replace entity @a[gamemode=adventure] container.0 with clock[custom_data={game:0}, max_stack_size=1]


clear @a[gamemode=!adventure, tag=!dead] *[custom_data={game:0}]
clear @a[gamemode=!adventure] *[custom_data={game:1}]
clear @a[gamemode=!adventure] *[custom_data={game:2}]
clear @a[gamemode=!adventure] *[custom_data={game:3}]
clear @a[gamemode=!adventure] *[custom_data={game:4}]
clear @a[gamemode=!adventure] *[custom_data={game:5}]
clear @a[gamemode=!adventure] *[custom_data={game:6}]
clear @a[gamemode=!adventure] *[custom_data={game:7}]
clear @a[gamemode=!adventure] *[custom_data={game:8}]
clear @a[gamemode=!adventure] *[custom_data={game:9}]



execute as @a if entity @s[scores={stat.sleep_time=1..}] run title @s actionbar ["", {"score": {"name": "@s", "objective": "health"}, "color": "#73ff0f"}, {"text": " ❤", "color": "#73ff0f"}, "       ", {"text": "💤 ", "color": "aqua"}, {"score": {"name": "sleepcount", "objective": "server"}, "color": "aqua"}, {"text": "/", "color": "dark_aqua"}, {"score": {"name": "playercount", "objective": "server"}, "color": "dark_aqua"}]
execute as @a if entity @a[scores={stat.sleep_time=1..}] unless entity @s[scores={stat.sleep_time=1..}] run title @s actionbar [{"text": "💤 ", "color": "aqua"}, {"score": {"name": "sleepcount", "objective": "server"}, "color": "aqua"}, {"text": "/", "color": "dark_aqua"}, {"score": {"name": "playercount", "objective": "server"}, "color": "dark_aqua"}]
execute as @a unless entity @a[scores={stat.sleep_time=1..}] run title @s actionbar ""

execute as @a if entity @s[nbt={SelectedItem:{id: "minecraft:clock"}}, gamemode=!spectator] run tag @s add clock
execute as @a if entity @s[scores={stat.sleep_time=1..}, gamemode=!spectator] run tag @s add clock
execute as @a unless entity @s[nbt={SelectedItem:{id: "minecraft:clock"}}] unless entity @s[scores={stat.sleep_time=1..}] run tag @s remove clock
execute as @a if entity @s[gamemode=spectator] run tag @s remove clock
bossbar set 3008:clock players @a[tag=clock]

execute store result bossbar 3008:clock value run scoreboard players get time server


execute if score time.weekday server matches 1 run function 3008:misc/clock_macro {weekday: Monday}
execute if score time.weekday server matches 2 run function 3008:misc/clock_macro {weekday: Tuesday}
execute if score time.weekday server matches 3 run function 3008:misc/clock_macro {weekday: Wednesday}
execute if score time.weekday server matches 4 run function 3008:misc/clock_macro {weekday: Thursday}
execute if score time.weekday server matches 5 run function 3008:misc/clock_macro {weekday: Friday}
execute if score time.weekday server matches 6 run function 3008:misc/clock_macro {weekday: Saturday}
execute if score time.weekday server matches 0 run function 3008:misc/clock_macro {weekday: Sunday}

execute unless score time.weekday server matches 6 unless score time.weekday server matches 0 run bossbar set 3008:clock style notched_6
execute if score time.weekday server matches 6 run bossbar set 3008:clock style notched_10
execute if score time.weekday server matches 0 run bossbar set 3008:clock style notched_10


item replace entity @a[gamemode=adventure] weapon.offhand with air



# execute as @a[scores={stat.drop=1}] run tellraw @s {"text": "\n[tip] building blocks you drop on the ground never despawn!\n5 min? 10 min? 1 hr? 1 day? 1 week? you name it! it will still be there.", "color": "#8ad4ff"}
# execute as @a[scores={stat.drop=1}] run scoreboard players set @s stat.drop 2






effect give @a[scores={stat.sleep_time=100..}] blindness 2 0 true





execute as @a at @s as @e[tag=game, distance=..15, predicate=3008:chasing] if score daytime server matches ..0 run scoreboard players add @s employee_sound 1
execute as @a at @s as @e[tag=game, distance=..15, predicate=3008:chasing, limit=1, sort=random] if score daytime server matches ..0 run scoreboard players add @s employee_sound 1

execute as @a at @s as @e[tag=game, distance=..15, predicate=!3008:chasing] run scoreboard players reset @s employee_sound
execute as @a at @s as @e[tag=game, distance=15..30] run scoreboard players reset @s employee_sound
execute as @e[tag=game] unless score daytime server matches ..0 run scoreboard players reset @s employee_sound

execute as @a at @s as @e[tag=game, distance=..15, predicate=3008:chasing] if score @s employee_sound matches 1 store result score temp server run function 3008:misc/generate_random {min: 8, max: 12}
execute as @a at @s as @e[tag=game, distance=..15, predicate=3008:chasing] at @s if score @s employee_sound matches 1 if score temp server matches 8 run playsound 3008:employee_sound hostile @a ~ ~ ~ .4 .8
execute as @a at @s as @e[tag=game, distance=..15, predicate=3008:chasing] at @s if score @s employee_sound matches 1 if score temp server matches 9 run playsound 3008:employee_sound hostile @a ~ ~ ~ .4 .9
execute as @a at @s as @e[tag=game, distance=..15, predicate=3008:chasing] at @s if score @s employee_sound matches 1 if score temp server matches 10 run playsound 3008:employee_sound hostile @a ~ ~ ~ .4 1
execute as @a at @s as @e[tag=game, distance=..15, predicate=3008:chasing] at @s if score @s employee_sound matches 1 if score temp server matches 11 run playsound 3008:employee_sound hostile @a ~ ~ ~ .4 1.1
execute as @a at @s as @e[tag=game, distance=..15, predicate=3008:chasing] at @s if score @s employee_sound matches 1 if score temp server matches 12 run playsound 3008:employee_sound hostile @a ~ ~ ~ .4 1.2
execute as @a at @s as @e[tag=game, distance=..15, predicate=3008:chasing] if score @s employee_sound matches 200..399 store result score temp server run function 3008:misc/generate_random {min: 1, max: 100}
execute as @a at @s as @e[tag=game, distance=..15, predicate=3008:chasing] if score @s employee_sound matches 200..399 if score temp server matches 25 run scoreboard players reset @s employee_sound
execute as @a at @s as @e[tag=game, distance=..15, predicate=3008:chasing] if score @s employee_sound matches 400..599 store result score temp server run function 3008:misc/generate_random {min: 1, max: 50}
execute as @a at @s as @e[tag=game, distance=..15, predicate=3008:chasing] if score @s employee_sound matches 400..599 if score temp server matches 25 run scoreboard players reset @s employee_sound
execute as @a at @s as @e[tag=game, distance=..15, predicate=3008:chasing] if score @s employee_sound matches 600.. run scoreboard players reset @s employee_sound











execute if score blood server matches -1 at @a run worldborder warning distance 0
execute unless score blood server matches 1 at @a unless score blood server matches -1 run worldborder warning distance 30000000
execute if score blood server matches 1 at @a run worldborder warning distance 500000000
execute if score blood server matches 1 as @a at @s run particle crimson_spore ~ ~5 ~ 20 40 20 1 40 force @s

execute unless score zombie_state server matches 1 as @e[type=zombie, tag=game] at @s run function 3008:misc/convert_self {convert_to: zombified_piglin}
execute if score zombie_state server matches 1 as @e[type=zombified_piglin, tag=game] at @s run function 3008:misc/convert_self {convert_to: zombie}



execute unless score time.day server matches 1.. run scoreboard players set time.day server 1

execute unless score time server matches 0.. run scoreboard players set time.day server 1
execute unless score time server matches 0.. run scoreboard players set time server 8400
execute if score playercount server matches 1.. run scoreboard players add time server 1
execute if score time server matches 28800.. run scoreboard players add time.day server 1
execute if score time server matches 28800.. run scoreboard players set time server 0

scoreboard players operation time.weekday server = time.day server
scoreboard players operation time.weekday server %= 7 consts
#scoreboard players add time.weekday server 1

scoreboard players operation time.m server = time server
scoreboard players operation time.m server /= 20 consts
scoreboard players operation time.m server %= 60 consts

scoreboard players operation time.h server = time server
scoreboard players operation time.h server /= 20 consts
scoreboard players operation time.h server /= 60 consts

scoreboard players operation time.t server = time server
scoreboard players operation time.t server %= 20 consts


execute unless score time.weekday server matches 6 unless score time.weekday server matches 0 if score time.h server matches 7..21 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches 0.. if score time.day server matches 12.. store result score temp server run function 3008:misc/generate_random {min: 1, max: 15}
execute unless score time.weekday server matches 6 unless score time.weekday server matches 0 if score time.h server matches 7..21 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches 0.. unless score time.day server matches 12.. store result score temp server run function 3008:misc/generate_random {min: 2, max: 15}
execute unless score time.weekday server matches 6 unless score time.weekday server matches 0 if score time.h server matches 7..21 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches 0.. if score temp server matches 1 run scoreboard players set daytime server 2
execute unless score time.weekday server matches 6 unless score time.weekday server matches 0 if score time.h server matches 7..21 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches 0.. unless score temp server matches 1 run scoreboard players set daytime server 1

execute unless score time.weekday server matches 6 unless score time.weekday server matches 0 unless score time.h server matches 7..21 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches ..0 if score time.day server matches 12.. store result score temp server run function 3008:misc/generate_random {min: 1, max: 30}
execute unless score time.weekday server matches 6 unless score time.weekday server matches 0 unless score time.h server matches 7..21 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches ..0 unless score time.day server matches 12.. store result score temp server run function 3008:misc/generate_random {min: 5, max: 30}
execute unless score time.weekday server matches 6 unless score time.weekday server matches 0 unless score time.h server matches 7..21 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches ..0 if score temp server matches 1 run scoreboard players set daytime server -3
execute unless score time.weekday server matches 6 unless score time.weekday server matches 0 unless score time.h server matches 7..21 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches ..0 if score temp server matches 2..4 run scoreboard players set daytime server -2
execute unless score time.weekday server matches 6 unless score time.weekday server matches 0 unless score time.h server matches 7..21 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches ..0 unless score temp server matches 1..4 run scoreboard players set daytime server -1



execute if score time.weekday server matches 6 if score time.h server matches 7..17 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches 0.. store result score temp server run function 3008:misc/generate_random {min: 1, max: 15}
execute if score time.weekday server matches 6 if score time.h server matches 7..17 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches 0.. if score temp server matches 1 run scoreboard players set daytime server 2
execute if score time.weekday server matches 6 if score time.h server matches 7..17 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches 0.. unless score temp server matches 1 run scoreboard players set daytime server 1

execute if score time.weekday server matches 6 unless score time.h server matches 7..17 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches ..0 unless score temp server matches 1..4 run scoreboard players set daytime server -1


execute if score time.weekday server matches 0 if score time.h server matches 7..17 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches 0.. store result score temp server run function 3008:misc/generate_random {min: 1, max: 15}
execute if score time.weekday server matches 0 if score time.h server matches 7..17 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches 0.. if score temp server matches 1 run scoreboard players set daytime server 2
execute if score time.weekday server matches 0 if score time.h server matches 7..17 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches 0.. unless score temp server matches 1 run scoreboard players set daytime server 1

execute if score time.weekday server matches 0 unless score time.h server matches 7..17 if score time.m server matches 0..59 if score time.t server matches 0..19 unless score daytime server matches ..0 unless score temp server matches 1..4 run scoreboard players set daytime server -1


execute if score daytime server matches 2 unless score daytime_save server matches 2 as @a run effect clear @e[tag=game]
execute if score daytime server matches 2 unless score daytime_save server matches 2 as @a run effect clear @a resistance
execute if score daytime server matches 2 unless score daytime_save server matches 2 as @a run stopsound @s master
execute if score daytime server matches 2 unless score daytime_save server matches 2 run scoreboard players set @a music.current_song 8
execute if score daytime server matches 2 unless score daytime_save server matches 2 run playsound 3008:daytime_switch.light_on master @a[tag=!dead] 0 0 0 1 1 1
execute if score daytime server matches 2 unless score daytime_save server matches 2 run stopsound @a * 3008:employee_sound

execute if score daytime server matches 1 unless score daytime_save server matches 1 as @a run effect clear @e[tag=game]
execute if score daytime server matches 1 unless score daytime_save server matches 1 as @a run effect clear @a resistance
execute if score daytime server matches 1 unless score daytime_save server matches 1 as @a run stopsound @s master
execute if score daytime server matches 1 unless score daytime_save server matches 1 if score time.weekday server matches 0 run scoreboard players set @a[tag=!dead] music.current_song 7
execute if score daytime server matches 1 unless score daytime_save server matches 1 if score time.weekday server matches 1 run scoreboard players set @a[tag=!dead] music.current_song 1
execute if score daytime server matches 1 unless score daytime_save server matches 1 if score time.weekday server matches 2 run scoreboard players set @a[tag=!dead] music.current_song 2
execute if score daytime server matches 1 unless score daytime_save server matches 1 if score time.weekday server matches 3 run scoreboard players set @a[tag=!dead] music.current_song 3
execute if score daytime server matches 1 unless score daytime_save server matches 1 if score time.weekday server matches 4 run scoreboard players set @a[tag=!dead] music.current_song 4
execute if score daytime server matches 1 unless score daytime_save server matches 1 if score time.weekday server matches 5 run scoreboard players set @a[tag=!dead] music.current_song 5
execute if score daytime server matches 1 unless score daytime_save server matches 1 if score time.weekday server matches 6 run scoreboard players set @a[tag=!dead] music.current_song 6
execute if score daytime server matches 1 unless score daytime_save server matches 1 run playsound 3008:daytime_switch.light_on master @a[tag=!dead] 0 0 0 1 1 1
execute if score daytime server matches 1 unless score daytime_save server matches 1 run stopsound @a * 3008:employee_sound

execute if score daytime server matches 0 unless score daytime_save server matches 0 as @a run effect clear @e[tag=game]
execute if score daytime server matches 0 unless score daytime_save server matches 0 as @a run effect clear @a resistance
execute if score daytime server matches 0 unless score daytime_save server matches 0 as @a run stopsound @s master
execute if score daytime server matches 0 unless score daytime_save server matches 0 run playsound 3008:daytime_loop_start.blackout master @a[tag=!dead] 0 0 0 1 1 1
execute if score daytime server matches 0 unless score daytime_save server matches 0 run playsound 3008:daytime_switch.light_off master @a[tag=!dead] 0 0 0 1 1 1

execute if score daytime server matches -1 unless score daytime_save server matches -1 as @a run effect clear @e[tag=game]
execute if score daytime server matches -1 unless score daytime_save server matches -1 as @a run effect clear @a resistance
execute if score daytime server matches -1 unless score daytime_save server matches -1 as @a run stopsound @s master
execute if score daytime server matches -1 unless score daytime_save server matches -1 run scoreboard players set @a music.current_song 9
execute if score daytime server matches -1 unless score daytime_save server matches -1 run playsound 3008:daytime_switch.light_off master @a[tag=!dead] 0 0 0 1 1 1

execute if score daytime server matches -2 unless score daytime_save server matches -2 as @a run effect clear @e[tag=game]
execute if score daytime server matches -2 unless score daytime_save server matches -2 as @a run effect clear @a resistance
execute if score daytime server matches -2 unless score daytime_save server matches -2 as @a run stopsound @s master
execute if score daytime server matches -2 unless score daytime_save server matches -2 run scoreboard players set @a music.current_song 10
execute if score daytime server matches -2 unless score daytime_save server matches -2 run playsound 3008:daytime_switch.light_off_blood master @a[tag=!dead] 0 0 0 1 1 1

execute if score daytime server matches -3 unless score daytime_save server matches -3 as @a run effect clear @e[tag=game]
execute if score daytime server matches -3 unless score daytime_save server matches -3 as @a run effect clear @a resistance
execute if score daytime server matches -3 unless score daytime_save server matches -3 as @a run stopsound @s master
execute if score daytime server matches -3 unless score daytime_save server matches -3 run scoreboard players set @a music.current_song 8
execute if score daytime server matches -3 unless score daytime_save server matches -3 run playsound 3008:daytime_switch.light_off master @a[tag=!dead] 0 0 0 1 1 1

execute unless score daytime_save server = daytime server run scoreboard players operation daytime_save server = daytime server

execute if score daytime server matches 2 run scoreboard players set blood server 0
execute if score daytime server matches 2 run scoreboard players set zombie_state server 1
execute if score daytime server matches 2 run effect give @e[tag=game] slowness 1 1 true
execute if score daytime server matches 2 as @a at @s run particle white_smoke ~ ~ ~ 40 40 40 .01 40 force @s
execute if score daytime server matches 2 run weather rain

execute if score daytime server matches 1 run scoreboard players set blood server 0
execute if score daytime server matches 1 run scoreboard players set zombie_state server 0
execute if score daytime server matches 1 run effect give @e[tag=game] strength 1 0 true
execute if score daytime server matches 1 run weather clear

execute if score daytime server matches 1.. run effect give @a night_vision infinite 0 true
execute if score daytime server matches 1.. as @a at @s run fill ~-20 ~-10 ~-20 ~20 ~10 ~20 daylight_detector[inverted=false, power=0] replace daylight_detector[inverted=true]
execute unless score daytime server matches 1.. run effect clear @a night_vision
execute unless score daytime server matches 1.. as @a at @s run fill ~-20 ~-10 ~-20 ~20 ~10 ~20 daylight_detector[inverted=true, power=15] replace daylight_detector[inverted=false]

execute if score daytime server matches 0 run scoreboard players set blood server 0
execute if score daytime server matches 0 run scoreboard players set zombie_state server 1
execute if score daytime server matches 0 run weather clear
execute if score daytime server matches 0 run effect give @a darkness 2 0 true

execute if score daytime server matches -1 run scoreboard players set blood server 0
execute if score daytime server matches -1 run scoreboard players set zombie_state server 1
execute if score daytime server matches -1 run effect give @a resistance 1 0 true
execute if score daytime server matches -1 run weather clear

execute if score daytime server matches -2 run scoreboard players set blood server 1
execute if score daytime server matches -2 run scoreboard players set zombie_state server 1
execute if score daytime server matches -2 run effect give @e[tag=game] speed 1 1 true
execute if score daytime server matches -2 run effect give @e[tag=game] strength 1 0 true
execute if score daytime server matches -2 run weather clear

execute if score daytime server matches -3 run scoreboard players set blood server 0
execute if score daytime server matches -3 run scoreboard players set zombie_state server 1
execute if score daytime server matches -3 run effect give @e[tag=game] slowness 1 1 true
execute if score daytime server matches -3 run effect give @e[tag=game] weakness 1 100 true
execute if score daytime server matches -3 run weather rain
execute if score daytime server matches -3 as @a at @s run particle large_smoke ~ ~ ~ 40 40 40 .01 40 force @s




















execute as @a at @s run function 3008:life/health/main

execute as @a[tag=dead] at @s unless score @s health.death_anim matches 1.. run function 3008:life/kill
execute as @a[tag=dead] at @s run function 3008:life/death_anims/for_all_dead
scoreboard players set @a health.last_damage_reason 0

execute as @a[tag=!dead] run function 3008:music/set_music
execute as @a[scores={stat.leave=1..}] run function 3008:misc/join_routine
execute as @a at @s run function 3008:music/play_music
execute as @a at @s run function 3008:misc/screens

execute if score true_playercount_old server < true_playercount server run scoreboard players add @a player_list 0
execute if score true_playercount_old server > true_playercount server run function 3008:misc/update_player_list
execute store result score true_playercount_old server if entity @a
scoreboard players reset temp server
scoreboard players reset temp_gen_stage server
scoreboard players reset temp_gen_substage server
scoreboard players reset @a stat.sprinting
scoreboard players reset @a stat.crouching
scoreboard players reset @a stat.walking
scoreboard players reset @a stat.jump