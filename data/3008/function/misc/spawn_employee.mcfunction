execute unless entity @a run return 0

execute store result score temp server run function 3008:misc/generate_random {min: 7, max: 11}
execute if score temp server matches 07 run execute in 3008:infinite_ikea run summon piglin ~ ~200 ~ {Tags:["game", "spawning"], attributes: [{id: "minecraft:scale", base: 0.7d}]}
execute if score temp server matches 08 run execute in 3008:infinite_ikea run summon piglin ~ ~200 ~ {Tags:["game", "spawning"], attributes: [{id: "minecraft:scale", base: 0.8d}]}
execute if score temp server matches 09 run execute in 3008:infinite_ikea run summon piglin ~ ~200 ~ {Tags:["game", "spawning"], attributes: [{id: "minecraft:scale", base: 0.9d}]}
execute if score temp server matches 10 run execute in 3008:infinite_ikea run summon piglin ~ ~200 ~ {Tags:["game", "spawning"], attributes: [{id: "minecraft:scale", base: 1.0d}]}
execute if score temp server matches 11 run execute in 3008:infinite_ikea run summon piglin ~ ~200 ~ {Tags:["game", "spawning"], attributes: [{id: "minecraft:scale", base: 1.1d}]}

effect give @e[tag=spawning] slowness 2 20 true
effect give @e[tag=spawning] weakness 2 20 true


$spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run spreadplayers ~ ~ 3 40 under $(height) false @e[tag=spawning]
$execute as @e[tag=spawning] at @s if entity @a[distance=..$(distance)] in 3008:infinite_ikea run tp @s ~ -200 ~


tag @e[tag=spawning] remove spawning