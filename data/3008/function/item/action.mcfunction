$scoreboard objectives add eat.$(item) minecraft.used:minecraft.$(item)
$execute as @e[type=armor_stand, tag=spawn_item, tag=$(item)] at @s if entity @a[distance=..20] unless score @s server.items_spawned = GLOBAL server.items_spawned positioned ~ ~5 ~ unless entity @e[type=item, tag=natural_spawn, distance=..1] run summon item ~ ~ ~ {Tags: ["natural_spawn"], Item: {id: "minecraft:$(item)", components:{"minecraft:custom_data":{game:2}}}}
$execute as @e[type=armor_stand, tag=spawn_item, tag=$(item)] at @s if entity @a[distance=..20] unless score @s server.items_spawned = GLOBAL server.items_spawned run scoreboard players operation @s server.items_spawned = GLOBAL server.items_spawned

$execute as @a[scores={eat.$(item)=1..}] run scoreboard players $(type) @s health $(health)
$execute as @a[scores={eat.$(item)=1..}] run scoreboard players add @s hunger.add $(hunger)
$execute if score $(type) argument_check matches 1 as @a[scores={eat.$(item)=1..}] run damage @s .01
$execute as @a[scores={eat.$(item)=1..}] run scoreboard players reset @s eat.$(item)