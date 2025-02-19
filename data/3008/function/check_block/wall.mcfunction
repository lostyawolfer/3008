$scoreboard objectives add holding.get.$(block).break minecraft.mined:minecraft.$(block)
$scoreboard objectives add holding.get.$(item).pick_up minecraft.picked_up:minecraft.$(item)
$scoreboard objectives add holding.place.$(item).place minecraft.used:minecraft.$(item)
$scoreboard objectives add holding.place.$(item).drop minecraft.dropped:minecraft.$(item)


$execute as @a[gamemode=adventure] if score @s holding.get.$(block).break matches 1.. run scoreboard players set @s holding.current_block $(id)
$execute as @a[gamemode=adventure] if score @s holding.get.$(block).break matches 1.. run scoreboard players reset @s holding.get.$(block).break

$execute as @a[gamemode=adventure] if score @s holding.get.$(item).pick_up matches 1.. run scoreboard players set @s holding.current_block $(id)
$execute as @a[gamemode=adventure] if score @s holding.get.$(item).pick_up matches 1.. run scoreboard players reset @s holding.get.$(item).pick_up

$execute as @a[gamemode=adventure] if score @s holding.place.$(item).place matches 1.. run scoreboard players set @s holding.current_block 0
$execute as @a[gamemode=adventure] if score @s holding.place.$(item).place matches 1.. run scoreboard players reset @s holding.place.$(item).place

$execute as @a[gamemode=adventure] if score @s holding.place.$(item).drop matches 1.. run scoreboard players set @s holding.current_block 0
$execute as @a[gamemode=adventure] if score @s holding.place.$(item).drop matches 1.. run scoreboard players reset @s holding.place.$(item).drop


$execute as @a[gamemode=adventure] if score @s holding.current_block matches $(id) run item replace entity @s container.1 with $(item)[custom_data={game:2}, can_place_on={"blocks": "#3008:everything"}, max_stack_size=1]