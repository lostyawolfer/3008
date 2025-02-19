forceload add 0 0
summon armor_stand 0 0 0 {Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, Tags:[rng]}
summon armor_stand 0 0 0 {Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, Tags:[rng]}
summon armor_stand 0 0 0 {Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, Tags:[rng]}
summon armor_stand 0 0 0 {Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, Tags:[rng]}
summon armor_stand 0 0 0 {Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, Tags:[rng]}
execute store result score temp1 server run data get entity @e[type=armor_stand, tag=rng, limit=1, sort=random] UUID[0]
execute store result score temp2 server run data get entity @e[type=armor_stand, tag=rng, limit=1, sort=random] UUID[1]
execute store result score temp3 server run data get entity @e[type=armor_stand, tag=rng, limit=1, sort=random] UUID[2]
execute store result score temp4 server run data get entity @e[type=armor_stand, tag=rng, limit=1, sort=random] UUID[3]

scoreboard players operation temp server += temp1 server
scoreboard players operation temp server *= temp2 server
scoreboard players operation temp server += temp3 server
scoreboard players operation temp server *= temp4 server

$scoreboard players set temp_max server $(max)
$scoreboard players set temp_min server $(min)
scoreboard players operation temp_true_max server = temp_max server
scoreboard players operation temp_true_max server -= temp_min server
scoreboard players add temp_true_max server 1

scoreboard players set temp_negative_one server -1
execute if score temp server matches ..-1 run scoreboard players operation temp server *= temp_negative_one server
execute if score temp server > temp_true_max server run scoreboard players operation temp server %= temp_true_max server
scoreboard players operation temp server += temp_min server



kill @e[type=armor_stand, tag=rng]
scoreboard players reset temp1 server
scoreboard players reset temp2 server
scoreboard players reset temp3 server
scoreboard players reset temp4 server
scoreboard players reset temp_min server
scoreboard players reset temp_max server
scoreboard players reset temp_true_max server
scoreboard players reset temp_negative_one server

return run scoreboard players get temp server