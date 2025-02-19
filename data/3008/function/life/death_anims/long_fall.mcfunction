scoreboard players add @s health.death_anim 1
scoreboard players set @s health.death_anim.reason 2



# first tick and visible to everyone
execute if score @s health.death_anim matches 1 store result score temp server run function 3008:misc/generate_random {min: 1, max: 4}
execute if score @s health.death_anim matches 1 if score temp server matches 1 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " fell down so hard I think they're underground now", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 2 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " stared into the abyss, then fell into it", "color": "red"}]
execute if score @s health.death_anim matches 1 if score temp server matches 3 run tellraw @a [{"translate": "Why did no one place water under ", "color": "red"}, {"selector": "@s", "color": "red"}, "?"]
execute if score @s health.death_anim matches 1 if score temp server matches 4 run tellraw @a [{"selector": "@s", "color": "red"}, {"translate": " met the concrete with terminal velocity. Now they're married.", "color": "red"}]

execute if score @s health.death_anim matches 1 run summon skeleton ~ ~ ~ {Tags: [death], NoAI: 1b}
execute if score @s health.death_anim matches 1 run item replace entity @e[type=skeleton, tag=death] armor.head with paper
execute if score @s health.death_anim matches 1 run item replace entity @e[type=skeleton, tag=death] weapon with air
execute if score @s health.death_anim matches 1 run data modify entity @e[type=minecraft:skeleton, tag=death, limit=1] Motion set from entity @s Motion
execute if score @s health.death_anim matches 1 run kill @e[type=skeleton, tag=death]

execute if score @s health.death_anim matches 1 run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ .3 .5 .3 0 40
#execute if score @s health.death_anim matches 1 run particle flame ~ ~1 ~ .3 .5 .3 .1 10




# only for the dead person
tp @s @s
execute if score @s health.death_anim matches 1 run playsound 3008:fall_end master @s ~ ~ ~ .8 1 .8
execute if score @s health.death_anim matches 2 run tp @s ~ -50 ~ 0 0

#execute if score @s health.death_anim matches 1 run playsound 3008:death_temp master @s ~ ~ ~ 1


execute if score @s health.death_anim matches 1 run title @s times 0 0 30
execute if score @s health.death_anim matches 1 run title @s title ""
execute if score @s health.death_anim matches 1 run title @s subtitle [{"text": "", "color": "dark_gray"}, "you fell ", {"score": {"name": "@s", "objective": "stat.last_fall_distance.blocks"}}, " blocks"]

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
execute if score @s health.death_anim matches 16..200 run scoreboard players set @s screen_effect 115

execute if score @s health.death_anim matches 70 run title @s times 40 180 60

execute if score @s health.death_anim matches 70 run title @s title "you're in heaven now..."

execute if score @s health.death_anim matches 70 run scoreboard players operation @s stat.death_count.anim = @s stat.death_count
execute if score @s health.death_anim matches 70 run scoreboard players remove @s stat.death_count.anim 1
execute if score @s health.death_anim matches 70 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}}

execute if score @s health.death_anim matches 105 run scoreboard players operation @s stat.death_count.anim = @s stat.death_count
#execute if score @s health.death_anim matches 105 run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score @s health.death_anim matches 105 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF0000"}
execute if score @s health.death_anim matches 106 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF1111"}
execute if score @s health.death_anim matches 107 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF2222"}
execute if score @s health.death_anim matches 108 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF3333"}
execute if score @s health.death_anim matches 109 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF4444"}
execute if score @s health.death_anim matches 110 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF5555"}
execute if score @s health.death_anim matches 111 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF6666"}
execute if score @s health.death_anim matches 112 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF7777"}
execute if score @s health.death_anim matches 113 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF8888"}
execute if score @s health.death_anim matches 114 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FF9999"}
execute if score @s health.death_anim matches 115 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FFAAAA"}
execute if score @s health.death_anim matches 116 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FFBBBB"}
execute if score @s health.death_anim matches 117 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FFCCCC"}
execute if score @s health.death_anim matches 118 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FFDDDD"}
execute if score @s health.death_anim matches 119 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FFEEEE"}
execute if score @s health.death_anim matches 120 run title @s subtitle {"score": {"name": "@s", "objective": "stat.death_count.anim"}, "color": "#FFFFFF"}

# execute if score @s health.death_anim matches 150 run SPAWNTP
execute if score @s health.death_anim matches 231 run function 3008:misc/spawntp

execute if score @s health.death_anim matches 231 run scoreboard players set @s screen_effect 200
execute if score @s health.death_anim matches 232 run scoreboard players set @s screen_effect 201
execute if score @s health.death_anim matches 233 run scoreboard players set @s screen_effect 202
execute if score @s health.death_anim matches 234 run scoreboard players set @s screen_effect 203
execute if score @s health.death_anim matches 235 run scoreboard players set @s screen_effect 204
execute if score @s health.death_anim matches 236 run scoreboard players set @s screen_effect 205
execute if score @s health.death_anim matches 237 run scoreboard players set @s screen_effect 206
execute if score @s health.death_anim matches 238 run scoreboard players set @s screen_effect 207
execute if score @s health.death_anim matches 239 run scoreboard players set @s screen_effect 208
execute if score @s health.death_anim matches 240 run scoreboard players set @s screen_effect 209
execute if score @s health.death_anim matches 241 run scoreboard players set @s screen_effect 210
execute if score @s health.death_anim matches 242 run scoreboard players set @s screen_effect 211
execute if score @s health.death_anim matches 243 run scoreboard players set @s screen_effect 212
execute if score @s health.death_anim matches 244 run scoreboard players set @s screen_effect 213
execute if score @s health.death_anim matches 245 run scoreboard players set @s screen_effect 214
execute if score @s health.death_anim matches 246 run scoreboard players set @s screen_effect 215

execute if score @s health.death_anim matches 247 run scoreboard players set @s screen_effect 0
execute if score @s health.death_anim matches 247 run gamemode adventure @s
execute if score @s health.death_anim matches 247 run scoreboard players operation @s health = @s health.max_health
execute if score @s health.death_anim matches 247 run scoreboard players set @s hunger 50000