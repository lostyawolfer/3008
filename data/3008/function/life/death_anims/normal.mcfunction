scoreboard players add @s health.death_anim 1
scoreboard players set @s health.death_anim.reason 1



# first tick and visible to everyone
execute if score @s health.death_anim matches 1 store result score temp server run function 3008:misc/generate_random {min: 1, max: 18}
execute if score @s health.death_anim matches 1 if score temp server matches 1 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " died", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 2 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " went commit die", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 3 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " reset chatacter", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 4 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " listened to LowTierGod", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 5 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " wanted to die and was heard", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 6 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " is about to ragequit", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 7 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " was brutally murdered", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 8 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " was never heard from again", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 9 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " was never here, what are you talking about?", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 10 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " tried to survive and miserably failed", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 11 run tellraw @a [{"translate": "We don't talk about what happened to ", "color": "red"}, {"selector": "@s", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 12 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " was ████ and ███████", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 13 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " knew too much", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 14 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " found a way out", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 15 run tellraw @a [{"translate": "Nothing happened to ", "color": "red"}, {"selector": "@s", "color": "red"}, " today."]
execute if score @s health.death_anim matches 1 if score temp server matches 16 run tellraw @a [{"translate": "Who is ", "color": "red"}, {"selector": "@s", "color": "red"}, "?"]
execute if score @s health.death_anim matches 1 if score temp server matches 17 run tellraw @a [{"translate": "Huh, ", "color": "red"}, {"selector": "@s", "color": "red"}, " was actually real?"]
execute if score @s health.death_anim matches 1 if score temp server matches 18 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " has a new thing to cry about", "color": "red"}]

execute if score @s health.death_anim matches 1 run summon skeleton ~ ~ ~ {Tags: [death], NoAI: 1b}
execute if score @s health.death_anim matches 1 run item replace entity @e[type=skeleton, tag=death] armor.head with paper
execute if score @s health.death_anim matches 1 run item replace entity @e[type=skeleton, tag=death] weapon with air
execute if score @s health.death_anim matches 1 run data modify entity @e[type=minecraft:skeleton, tag=death, limit=1] Motion set from entity @s Motion
execute if score @s health.death_anim matches 1 run kill @e[type=skeleton, tag=death]

execute if score @s health.death_anim matches 1 run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ .3 .5 .3 0 40
#execute if score @s health.death_anim matches 1 run particle flame ~ ~1 ~ .3 .5 .3 .1 10




# only for the dead person
tp @s @s
execute if score @s health.death_anim matches 1 run playsound 3008:death master @s ~ ~ ~ .8 1 .8


execute if score @s health.death_anim matches 2 run tp @s ~ -50 ~ 0 0

#execute if score @s health.death_anim matches 1 run playsound 3008:death_temp master @s ~ ~ ~ 1

execute if score @s health.death_anim matches 1 run scoreboard players set @s screen_effect 100
execute if score @s health.death_anim matches 2 run scoreboard players set @s screen_effect 101
execute if score @s health.death_anim matches 3 run scoreboard players set @s screen_effect 102
execute if score @s health.death_anim matches 4 run scoreboard players set @s screen_effect 103
execute if score @s health.death_anim matches 5 run scoreboard players set @s screen_effect 104
execute if score @s health.death_anim matches 6 run scoreboard players set @s screen_effect 105
execute if score @s health.death_anim matches 7 run scoreboard players set @s screen_effect 106
execute if score @s health.death_anim matches 8 run scoreboard players set @s screen_effect 107
execute if score @s health.death_anim matches 9 run scoreboard players set @s screen_effect 108
execute if score @s health.death_anim matches 10 run scoreboard players set @s screen_effect 109
execute if score @s health.death_anim matches 11 run scoreboard players set @s screen_effect 110
execute if score @s health.death_anim matches 12 run scoreboard players set @s screen_effect 111
execute if score @s health.death_anim matches 13 run scoreboard players set @s screen_effect 112
execute if score @s health.death_anim matches 14 run scoreboard players set @s screen_effect 113
execute if score @s health.death_anim matches 15 run scoreboard players set @s screen_effect 114
execute if score @s health.death_anim matches 16..100 run scoreboard players set @s screen_effect 115


execute if score @s health.death_anim matches 25 run title @s times 15 120 60

execute if score @s health.death_anim matches 25 store result score temp server run function 3008:misc/generate_random {min: 1, max: 8}
execute if score @s health.death_anim matches 25 if score temp server matches 1 run title @s title "you died..."
execute if score @s health.death_anim matches 25 if score temp server matches 2 run title @s title "too bad, so sad..."
execute if score @s health.death_anim matches 25 if score temp server matches 3 run title @s title "is this what you wanted?.."
execute if score @s health.death_anim matches 25 if score temp server matches 4 run title @s title "that was scary..."
execute if score @s health.death_anim matches 25 if score temp server matches 5 run title @s title "rest in peace..."
execute if score @s health.death_anim matches 25 if score temp server matches 6 run title @s title "you were a good friend..."
execute if score @s health.death_anim matches 25 if score temp server matches 7 run title @s title "is this over yet?.."
execute if score @s health.death_anim matches 25 if score temp server matches 8 run title @s title "cry about it"
execute if score @s health.death_anim matches 25 run scoreboard players reset temp server

execute if score @s health.death_anim matches 40 run scoreboard players operation @s stat.death_count.anim = @s stat.death_count
execute if score @s health.death_anim matches 40 run scoreboard players remove @s stat.death_count.anim 1
execute if score @s health.death_anim matches 40 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}}

execute if score @s health.death_anim matches 65 run scoreboard players operation @s stat.death_count.anim = @s stat.death_count
#execute if score @s health.death_anim matches 65 run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score @s health.death_anim matches 65 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF0000"}
execute if score @s health.death_anim matches 66 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF1111"}
execute if score @s health.death_anim matches 67 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF2222"}
execute if score @s health.death_anim matches 68 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF3333"}
execute if score @s health.death_anim matches 69 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF4444"}
execute if score @s health.death_anim matches 70 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF5555"}
execute if score @s health.death_anim matches 71 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF6666"}
execute if score @s health.death_anim matches 72 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF7777"}
execute if score @s health.death_anim matches 73 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF8888"}
execute if score @s health.death_anim matches 74 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF9999"}
execute if score @s health.death_anim matches 75 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FFAAAA"}
execute if score @s health.death_anim matches 76 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FFBBBB"}
execute if score @s health.death_anim matches 77 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FFCCCC"}
execute if score @s health.death_anim matches 78 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FFDDDD"}
execute if score @s health.death_anim matches 79 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FFEEEE"}
execute if score @s health.death_anim matches 80 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FFFFFF"}

execute if score @s health.death_anim matches 131 run function 3008:misc/spawntp

execute if score @s health.death_anim matches 131 run scoreboard players set @s screen_effect 200
execute if score @s health.death_anim matches 132 run scoreboard players set @s screen_effect 201
execute if score @s health.death_anim matches 133 run scoreboard players set @s screen_effect 202
execute if score @s health.death_anim matches 134 run scoreboard players set @s screen_effect 203
execute if score @s health.death_anim matches 135 run scoreboard players set @s screen_effect 204
execute if score @s health.death_anim matches 136 run scoreboard players set @s screen_effect 205
execute if score @s health.death_anim matches 137 run scoreboard players set @s screen_effect 206
execute if score @s health.death_anim matches 138 run scoreboard players set @s screen_effect 207
execute if score @s health.death_anim matches 139 run scoreboard players set @s screen_effect 208
execute if score @s health.death_anim matches 140 run scoreboard players set @s screen_effect 209
execute if score @s health.death_anim matches 141 run scoreboard players set @s screen_effect 210
execute if score @s health.death_anim matches 142 run scoreboard players set @s screen_effect 211
execute if score @s health.death_anim matches 143 run scoreboard players set @s screen_effect 212
execute if score @s health.death_anim matches 144 run scoreboard players set @s screen_effect 213
execute if score @s health.death_anim matches 145 run scoreboard players set @s screen_effect 214
execute if score @s health.death_anim matches 146 run scoreboard players set @s screen_effect 215

execute if score @s health.death_anim matches 147 run scoreboard players set @s screen_effect 0
execute if score @s health.death_anim matches 147 run gamemode adventure @s
execute if score @s health.death_anim matches 147 run scoreboard players operation @s health = @s health.max_health
execute if score @s health.death_anim matches 147 run scoreboard players set @s hunger 50000