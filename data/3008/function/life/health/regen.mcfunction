execute unless entity @s[tag=regenerating] unless score @s health >= @s health.max_health run scoreboard players set @s health.regen_timer 10000
execute unless entity @s[tag=regenerating] unless score @s health >= @s health.max_health run scoreboard players operation @s health.regen_timer /= @s health.percentage
execute unless entity @s[tag=regenerating] unless score @s health >= @s health.max_health run scoreboard players operation @s health.regen_timer *= 2 consts
execute unless entity @s[tag=regenerating] unless score @s health >= @s health.max_health run tag @s add regenerating

execute if entity @s[tag=regenerating] if score @s health.regen_timer matches ..0 run scoreboard players add @s health 1
execute if entity @s[tag=regenerating] if score @s health.regen_timer matches ..0 run tag @s remove regenerating
