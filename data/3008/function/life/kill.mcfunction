execute if score @s health.death_anim matches 17..99 run tellraw @a[scores = {logging = 1..3}] ["! error: ", "something tried to kill ", {"selector": "@s"}, ", but they're already dead"]
execute if score @s health.death_anim matches 1.. run return 1

execute if score @s health.death_anim matches ..-1 run tellraw @a[scores = {logging = 1..3}] ["! error: ", "something tried to kill ", {"selector": "@s"}, ", they're in the middle of respawning"]
execute if score @s health.death_anim matches ..-1 run return 2

execute if entity @s[gamemode = creative] run tellraw @a[scores = {logging = 1..3}] ["! error: ", "something tried to kill ", {"selector": "@s"}, ", but they're in creative"]
execute if entity @s[gamemode = creative] run return 3


execute if entity @s[nbt={Inventory:[{id: "minecraft:totem_of_undying"}]}] unless entity @s[nbt={SelectedItem:{id: "minecraft:totem_of_undying"}}] run item replace entity @s weapon.offhand with totem_of_undying
execute if entity @s[nbt={Inventory:[{id: "minecraft:totem_of_undying"}]}] run damage @s 30
execute if entity @s[nbt={Inventory:[{id: "minecraft:totem_of_undying"}]}] run scoreboard players set @s health.damage_taken 0
execute if entity @s[nbt={Inventory:[{id: "minecraft:totem_of_undying"}]}] run scoreboard players set @s health 55
execute if entity @s[nbt={Inventory:[{id: "minecraft:totem_of_undying"}]}] run tag @s remove dead
execute if entity @s[nbt={Inventory:[{id: "minecraft:totem_of_undying"}]}] run effect clear @s
execute if entity @s[nbt={Inventory:[{id: "minecraft:totem_of_undying"}]}] run gamemode adventure @s
execute if entity @s[nbt={Inventory:[{id: "minecraft:totem_of_undying"}]}] run tellraw @a[scores = {logging = 1}] ["! log: ", "something tried to kill ", {"selector": "@s"}, ", but they had a totem of undying"]
execute if entity @s[nbt={Inventory:[{id: "minecraft:totem_of_undying"}]}] run scoreboard players set @s health.fall_distance 0
execute if entity @s[nbt={Inventory:[{id: "minecraft:totem_of_undying"}]}] run scoreboard players set @s health.take_fall_damage 0
execute if entity @s[nbt={Inventory:[{id: "minecraft:totem_of_undying"}]}] unless entity @s[nbt={SelectedItem:{id: "minecraft:totem_of_undying"}}] run return run clear @s totem_of_undying 1



tellraw @a[scores = {logging = 1}] ["! log: ", "something tried to kill ", {"selector": "@s"}, " and succeeded"]

title @s times 0 0 0
title @s title ""
title @s subtitle ""

execute if score @s holding.current_block matches 1.. run scoreboard players add @s stat.drop 1

execute if score @s holding.current_block matches 1.. run summon item ~ ~ ~ {Tags: ["death_item", "block"], Item: {id: "stone"}}
execute if score @s holding.current_block matches 1.. run data modify entity @e[type=item, tag=death_item, tag=block, limit=1] Item merge from entity @s Inventory[{Slot: 1b}]

summon item ~ ~ ~ {Tags: ["death_item", "inventory_slot_1"], Item: {id: "stone"}}
data modify entity @e[type=item, tag=death_item, tag=inventory_slot_1, limit=1] Item merge from entity @s Inventory[{Slot: 3b}]

summon item ~ ~ ~ {Tags: ["death_item", "inventory_slot_2"], Item: {id: "stone"}}
data modify entity @e[type=item, tag=death_item, tag=inventory_slot_2, limit=1] Item merge from entity @s Inventory[{Slot: 4b}]

summon item ~ ~ ~ {Tags: ["death_item", "inventory_slot_3"], Item: {id: "stone"}}
data modify entity @e[type=item, tag=death_item, tag=inventory_slot_3, limit=1] Item merge from entity @s Inventory[{Slot: 5b}]

summon item ~ ~ ~ {Tags: ["death_item", "inventory_slot_4"], Item: {id: "stone"}}
data modify entity @e[type=item, tag=death_item, tag=inventory_slot_4, limit=1] Item merge from entity @s Inventory[{Slot: 6b}]

summon item ~ ~ ~ {Tags: ["death_item", "inventory_slot_5"], Item: {id: "stone"}}
data modify entity @e[type=item, tag=death_item, tag=inventory_slot_5, limit=1] Item merge from entity @s Inventory[{Slot: 7b}]

summon item ~ ~ ~ {Tags: ["death_item", "inventory_slot_6"], Item: {id: "stone"}}
data modify entity @e[type=item, tag=death_item, tag=inventory_slot_6, limit=1] Item merge from entity @s Inventory[{Slot: 8b}]

kill @e[type=item, nbt={Item:{id: "minecraft:barrier"}}]

tag @e[type=item, tag=death_item] remove block
tag @e[type=item, tag=death_item] remove inventory_slot_1
tag @e[type=item, tag=death_item] remove inventory_slot_2
tag @e[type=item, tag=death_item] remove inventory_slot_3
tag @e[type=item, tag=death_item] remove inventory_slot_4
tag @e[type=item, tag=death_item] remove inventory_slot_5
tag @e[type=item, tag=death_item] remove inventory_slot_6

execute if score @s holding.current_block matches 1.. run scoreboard players set @s holding.current_block 0

clear @s
scoreboard players set @s music.current_song 0
stopsound @s


team leave @s
execute if score @s health.last_damage matches -1 run function 3008:life/death_anims/long_fall
execute if score @s health.last_damage matches 0 run function 3008:life/death_anims/normal
execute if score @s health.last_damage matches 1 run function 3008:life/death_anims/fall
execute if score @s health.last_damage matches 2 run function 3008:life/death_anims/drown
execute if score @s health.last_damage matches 3 run function 3008:life/death_anims/hunger


scoreboard players add @s stat.death_count 1

tag @s add dead
scoreboard players set @s health 0
scoreboard players set @s hunger 0