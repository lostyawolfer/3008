$scoreboard objectives add item.picked_up.$(item) minecraft.picked_up:minecraft.$(item)
$execute as @e[type=item, nbt={Item:{id: "minecraft:$(item)"}}] run data merge entity @s {Item:{components:{custom_data:{game:10}}}}

$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt={Inventory:[{Slot: 3b, id: "minecraft:barrier"}]}] container.3 with air
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt={Inventory:[{Slot: 4b, id: "minecraft:barrier"}]}] container.4 with air
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt={Inventory:[{Slot: 5b, id: "minecraft:barrier"}]}] container.5 with air
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt={Inventory:[{Slot: 6b, id: "minecraft:barrier"}]}] container.6 with air
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt={Inventory:[{Slot: 7b, id: "minecraft:barrier"}]}] container.7 with air
$execute as @a if score @s item.picked_up.$(item) matches 1.. run item replace entity @s[nbt={Inventory:[{Slot: 8b, id: "minecraft:barrier"}]}] container.8 with air

$execute as @a if score @s item.picked_up.$(item) matches 1.. run scoreboard players set @s pickup_delay 10
$execute as @a if score @s item.picked_up.$(item) matches 1.. run function 3008:misc/item_barrier {selector: "@s", slot: "container.2"}
$execute as @a if score @s item.picked_up.$(item) matches 1.. run give @s minecraft:$(item)[food={nutrition:0, saturation:0, can_always_eat:true}, max_stack_size=$(stack)]

$execute as @a if score @s item.picked_up.$(item) matches 1.. run function 3008:misc/item_barrier {selector: "@s[nbt=!{Inventory:[{Slot: 3b}]}]", slot: "container.3"}
$execute as @a if score @s item.picked_up.$(item) matches 1.. run function 3008:misc/item_barrier {selector: "@s[nbt=!{Inventory:[{Slot: 4b}]}]", slot: "container.4"}
$execute as @a if score @s item.picked_up.$(item) matches 1.. run function 3008:misc/item_barrier {selector: "@s[nbt=!{Inventory:[{Slot: 5b}]}]", slot: "container.5"}
$execute as @a if score @s item.picked_up.$(item) matches 1.. run function 3008:misc/item_barrier {selector: "@s[nbt=!{Inventory:[{Slot: 6b}]}]", slot: "container.6"}
$execute as @a if score @s item.picked_up.$(item) matches 1.. run function 3008:misc/item_barrier {selector: "@s[nbt=!{Inventory:[{Slot: 7b}]}]", slot: "container.7"}
$execute as @a if score @s item.picked_up.$(item) matches 1.. run function 3008:misc/item_barrier {selector: "@s[nbt=!{Inventory:[{Slot: 8b}]}]", slot: "container.8"}

$execute as @a if score @s item.picked_up.$(item) matches 1.. run scoreboard players remove @s item.picked_up.$(item) 1

$execute as @a if score @s item.picked_up.$(item) matches 1.. run function 3008:item/inventory {item: $(item), stack: $(stack)}
$execute as @a unless score @s item.picked_up.$(item) matches 1.. run scoreboard players reset @s item.picked_up.$(item)