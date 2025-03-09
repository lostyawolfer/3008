scoreboard players add @s health.death_anim 1
scoreboard players set @s health.death_anim.reason 1



# first tick and visible to everyone
execute if score @s health.death_anim matches 1 store result score temp server run function 3008:misc/generate_random {min: 1, max: 4}
execute if score @s health.death_anim matches 1 if score temp server matches 1 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " ", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 2 run tellraw @a [{"translate": "The last thing ", "color": "red"}, {"selector": "@s", "color": "red"}, {"translate": " ever felt was their stomach eating itself", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 3 run tellraw @a [{"translate": "LET ", "color": "red"}, {"selector": "@s", "color": "red"}, " EAT CAKES!"]
execute if score @s health.death_anim matches 1 if score temp server matches 4 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " had a headache", "color": "red"}]

execute if score @s health.death_anim matches 1 run summon skeleton ~ ~ ~ {Tags: [death], NoAI: 1b}
execute if score @s health.death_anim matches 1 run item replace entity @e[type=skeleton, tag=death] armor.head with paper
execute if score @s health.death_anim matches 1 run item replace entity @e[type=skeleton, tag=death] weapon with air
execute if score @s health.death_anim matches 1 run data modify entity @e[type=minecraft:skeleton, tag=death, limit=1] Motion set from entity @s Motion
execute if score @s health.death_anim matches 1 run kill @e[type=skeleton, tag=death]

execute if score @s health.death_anim matches 1 run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ .3 .5 .3 0 40
#execute if score @s health.death_anim matches 1 run particle flame ~ ~1 ~ .3 .5 .3 .1 10



# only for the dead person
tp @s @s
execute if score @s health.death_anim matches 1 run playsound 3008:death master @s ~ ~ ~ 1