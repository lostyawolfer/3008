$scoreboard objectives add item.picked_up.$(item) minecraft.picked_up:minecraft.$(item)
$execute as @e[type=item, nbt={Item:{id: "minecraft:$(item)"}}] run data merge entity @s {Item:{components:{custom_data:{game:10}}}}

$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt={Inventory:[{Slot: 3b, id: "minecraft:barrier"}]}] container.3 with air
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt={Inventory:[{Slot: 4b, id: "minecraft:barrier"}]}] container.4 with air
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt={Inventory:[{Slot: 5b, id: "minecraft:barrier"}]}] container.5 with air
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt={Inventory:[{Slot: 6b, id: "minecraft:barrier"}]}] container.6 with air
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt={Inventory:[{Slot: 7b, id: "minecraft:barrier"}]}] container.7 with air
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt={Inventory:[{Slot: 8b, id: "minecraft:barrier"}]}] container.8 with air

$execute as @a if score @s item.picked_up.$(item) matches 1.. run scoreboard players set @s pickup_delay 10
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s container.2 with barrier
$execute as @a if score @s item.picked_up.$(item) matches 1.. run give @s minecraft:$(item)[food={nutrition:0, saturation:0, can_always_eat:true}, max_stack_size=$(stack), consumable={animation:"$(anim)", consume_seconds: $(time), has_consume_particles: $(particles)}, !use_remainder]

$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt=!{Inventory:[{Slot: 3b}]}] container.3 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt=!{Inventory:[{Slot: 4b}]}] container.4 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt=!{Inventory:[{Slot: 5b}]}] container.5 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt=!{Inventory:[{Slot: 6b}]}] container.6 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt=!{Inventory:[{Slot: 7b}]}] container.7 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt=!{Inventory:[{Slot: 8b}]}] container.8 with barrier[hide_tooltip={}, custom_name='""', custom_data={game:0}, max_stack_size=1]

$execute as @a if score @s item.picked_up.$(item) matches 1.. run scoreboard players remove @s item.picked_up.$(item) 1

$execute as @a if score @s item.picked_up.$(item) matches 1.. run function 3008:item/inventory_consumable {item: $(item), stack: $(stack),  anim: $(anim), time: $(time), particles: $(particles)}
$execute as @a unless score @s item.picked_up.$(item) matches 1.. run scoreboard players reset @s item.picked_up.$(item)


# existing animations:
# block
# bow
# brush
# crossbow
# drink
# eat
# none
# spear
# spyglass
# toot_horn