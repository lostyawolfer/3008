$scoreboard objectives add holding.get.$(block).break minecraft.mined:minecraft.$(block)
$scoreboard objectives add holding.get.$(block).pick_up minecraft.picked_up:minecraft.$(block)
$scoreboard objectives add holding.place.$(block).place minecraft.used:minecraft.$(block)
$scoreboard objectives add holding.place.$(block).drop minecraft.dropped:minecraft.$(block)


$execute as @a[gamemode=adventure] if score @s holding.get.$(block).break matches 1.. run scoreboard players set @s holding.current_block $(id)
$execute as @a[gamemode=adventure] if score @s holding.get.$(block).break matches 1.. run scoreboard players reset @s holding.get.$(block).break

$execute as @a[gamemode=adventure] if score @s holding.get.$(block).pick_up matches 1.. run scoreboard players set @s holding.current_block $(id)
$execute as @a[gamemode=adventure] if score @s holding.get.$(block).pick_up matches 1.. run scoreboard players reset @s holding.get.$(block).pick_up

$execute as @a[gamemode=adventure] if score @s holding.place.$(block).place matches 1.. run scoreboard players set @s holding.current_block 0
$execute as @a[gamemode=adventure] if score @s holding.place.$(block).place matches 1.. run scoreboard players reset @s holding.place.$(block).place

$execute as @a[gamemode=adventure] if score @s holding.place.$(block).drop matches 1.. run scoreboard players set @s holding.current_block 0
$execute as @a[gamemode=adventure] if score @s holding.place.$(block).drop matches 1.. run scoreboard players reset @s holding.place.$(block).drop


$execute as @a[gamemode=adventure] if score @s holding.current_block matches $(id) run item replace entity @s container.1 with $(block)[custom_data={game:2}, can_place_on={"blocks": "#3008:everything"}, max_stack_size=1, block_state={$(state)}]