execute if score @s health.air matches 0.. run scoreboard players operation @s health.air_percentage = @s health.air
execute if score @s health.air matches 0.. run scoreboard players operation @s health.air_percentage *= 100 consts
execute if score @s health.air matches 0.. run scoreboard players operation @s health.air_percentage /= 300 consts
execute if score @s health.air_percentage matches 0..99 unless entity @s[tag=dead] run title @s actionbar [{"score": {"name": "@s", "objective": "health.air_percentage"}, "color": "aqua"}, "% 🫧"]

execute if score @s health.air matches ..0 at @s run playsound entity.drowned.ambient_water master @s ~ ~ ~ 1 1 1
execute if score @s health.air matches ..0 run scoreboard players add @s health.take_damage 3
execute if score @s health.air matches ..0 run scoreboard players set @s health.last_damage_reason 3