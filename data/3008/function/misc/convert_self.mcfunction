tag @s add dying
$summon $(convert_to) ~ ~ ~ {Tags:["spawning"]}

data modify entity @e[tag=spawning, limit=1, sort=nearest] {} merge from entity @s

# execute as @e[tag=spawning, limit=1, sort=nearest] store result entity @s Pos[0] double 0.001 run data get entity @e[tag=dying, limit=1, sort=nearest] Pos[0] 1000
# execute as @e[tag=spawning, limit=1, sort=nearest] store result entity @s Pos[1] double 0.001 run data get entity @e[tag=dying, limit=1, sort=nearest] Pos[1] 1000
# execute as @e[tag=spawning, limit=1, sort=nearest] store result entity @s Pos[2] double 0.001 run data get entity @e[tag=dying, limit=1, sort=nearest] Pos[2] 1000

# execute as @e[tag=spawning, limit=1, sort=nearest] store result entity @s Rotation[0] float 0.001 run data get entity @e[tag=dying, limit=1, sort=nearest] Rotation[0] 1000
# execute as @e[tag=spawning, limit=1, sort=nearest] store result entity @s Rotation[1] float 0.001 run data get entity @e[tag=dying, limit=1, sort=nearest] Rotation[1] 1000

# execute as @e[tag=spawning, limit=1, sort=nearest] store result entity @s Health float 0.001 run data get entity @e[tag=dying, limit=1, sort=nearest] Health 1000

# execute as @e[tag=spawning, limit=1, sort=nearest] store result entity @s IsBaby byte 0.001 run data get entity @e[tag=dying, limit=1, sort=nearest] IsBaby 1000


tag @s remove dying
tag @e[tag=spawning] remove spawning
tp @s ~ -100 ~
kill @s