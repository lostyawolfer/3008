execute if score @s hunger.add matches 1.. run scoreboard players operation @s hunger.add *= 2500 consts
execute if score @s hunger.add matches 1.. run scoreboard players operation @s hunger += @s hunger.add
execute if score @s hunger.add matches 1.. run scoreboard players reset @s hunger.add


execute unless score @s hunger.real matches 0..20 run effect give @s hunger 1 0 true
execute unless score @s hunger matches ..50000 run scoreboard players set @s hunger 50000
execute if score @s hunger matches ..-80 run scoreboard players remove @s health 10
execute if score @s hunger matches ..-80 run scoreboard players set @s hunger 0
execute unless score @s stat.sleep_time matches 1.. if score @s stat.walking matches 1.. run scoreboard players remove @s hunger 1
execute unless score @s stat.sleep_time matches 1.. if score @s stat.sprinting matches 1.. run scoreboard players remove @s hunger 3
execute unless score @s stat.sleep_time matches 1.. unless score @s stat.sprinting matches 1.. if score @s stat.jump matches 1.. run scoreboard players remove @s hunger 5
execute unless score @s stat.sleep_time matches 1.. if score @s stat.sprinting matches 1.. if score @s stat.jump matches 1.. run scoreboard players remove @s hunger 20

execute run scoreboard players operation @s hunger.minecraftlike = @s hunger
execute run scoreboard players operation @s hunger.minecraftlike *= 100 consts
execute run scoreboard players operation @s hunger.minecraftlike /= 50000 consts
execute run scoreboard players operation @s hunger.minecraftlike /= 5 consts
execute run scoreboard players operation @s hunger.minecraftlike += 1 consts

execute if score @s hunger.real > @s hunger.minecraftlike run effect give @s hunger infinite 255 true
execute if score @s hunger.real < @s hunger.minecraftlike run effect give @s saturation infinite 0 true

execute if score @s hunger.real >= @s hunger.minecraftlike run effect clear @s saturation
execute if score @s hunger.real <= @s hunger.minecraftlike run effect clear @s hunger


execute if score @s hunger.minecraftlike matches 20.. if entity @s[tag=regenerating] run scoreboard players remove @s health.regen_timer 4
execute if score @s hunger.minecraftlike matches 20.. if entity @s[tag=regenerating] run scoreboard players remove @s hunger 4

execute if score @s hunger.minecraftlike matches 18.. if entity @s[tag=regenerating] run scoreboard players remove @s health.regen_timer 2
execute if score @s hunger.minecraftlike matches 18.. if entity @s[tag=regenerating] run scoreboard players remove @s hunger 3

execute if score @s hunger.minecraftlike matches 15.. if entity @s[tag=regenerating] run scoreboard players remove @s health.regen_timer 2
execute if score @s hunger.minecraftlike matches 15.. if entity @s[tag=regenerating] run scoreboard players remove @s hunger 2

execute if score @s hunger.minecraftlike matches 10.. if entity @s[tag=regenerating] run scoreboard players remove @s health.regen_timer 1
execute if score @s hunger.minecraftlike matches 10.. if entity @s[tag=regenerating] run scoreboard players remove @s hunger 1
