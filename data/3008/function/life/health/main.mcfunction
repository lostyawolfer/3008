execute if score @s health matches ..0 run tag @s add dead
execute if score @s health matches ..0 run scoreboard players set @s health 0
execute if score @s health matches 1.. run tag @s remove dead

execute unless entity @s[tag=!dead] at @s run scoreboard players reset @s health.death_anim
execute unless entity @s[tag=!dead] at @s run scoreboard players reset @s health.death_anim.reason



function 3008:life/health/regen
function 3008:life/health/air
function 3008:life/health/hunger
function 3008:life/health/falling



# minecraft natural damage
execute if score @s health.damage_taken matches 1.. run scoreboard players operation @s health.damage_taken /= 2 consts
execute if score @s health.damage_taken matches 1.. run scoreboard players operation @s health.take_damage += @s health.damage_taken
execute if score @s health.damage_taken matches 1.. run scoreboard players reset @s health.damage_taken


# take damage
execute if score @s health.take_damage matches 1.. run scoreboard players operation @s health -= @s health.take_damage
execute if score @s health.take_damage matches 1.. run scoreboard players reset @s health.take_damage


# disallow sprinting on low hp
execute if score @s health matches 1..20 if score @s stat.sprinting matches 1.. run attribute @s movement_speed base set 0.077
execute if score @s health matches 1..20 unless score @s stat.sprinting matches 1.. run attribute @s movement_speed base set 0.1
execute if score @s health matches 21.. run attribute @s movement_speed base set 0.1


# low health effects
execute if score @s health matches 21..30 run attribute @s movement_speed modifier add 3008:not_so_low_health -0.1 add_multiplied_total
execute if score @s health matches 21..30 run attribute @s movement_efficiency modifier add 3008:not_so_low_health -0.1 add_multiplied_total
execute if score @s health matches 21..30 run particle dust{color:11277846, scale:.5} ~ ~1 ~ .2 .5 .2 0 1 force @a
execute if score @s health matches 21..30 run scoreboard players set @s screen_effect 5
execute unless score @s health matches 21..30 run attribute @s jump_strength modifier remove 3008:not_so_low_health
execute unless score @s health matches 21..30 run attribute @s movement_speed modifier remove 3008:not_so_low_health
execute unless score @s health matches 21..30 run attribute @s movement_efficiency modifier remove 3008:not_so_low_health

execute if score @s health matches 1..20 run attribute @s jump_strength modifier add 3008:low_health -0.2 add_multiplied_total
execute if score @s health matches 1..20 run attribute @s movement_speed modifier add 3008:low_health -0.2 add_multiplied_total
execute if score @s health matches 1..20 run attribute @s movement_efficiency modifier add 3008:low_health -0.2 add_multiplied_total
execute if score @s health matches 1..20 run particle dust{color:11277846, scale:1} ~ ~1 ~ .2 .5 .2 0 1 force @a
execute if score @s health matches 1..20 run scoreboard players set @s screen_effect 2
execute unless score @s health matches 1..20 run attribute @s jump_strength modifier remove 3008:low_health
execute unless score @s health matches 1..20 run attribute @s movement_speed modifier remove 3008:low_health
execute unless score @s health matches 1..20 run attribute @s movement_efficiency modifier remove 3008:low_health

execute if score @s health matches 1..10 run attribute @s jump_strength modifier add 3008:very_low_health -0.2 add_multiplied_total
execute if score @s health matches 1..10 run attribute @s step_height modifier add 3008:very_low_health -0.3 add_multiplied_total
execute if score @s health matches 1..10 run effect give @s mining_fatigue infinite 1 true
execute if score @s health matches 1..10 run attribute @s movement_speed modifier add 3008:very_low_health -0.2 add_multiplied_total
execute if score @s health matches 1..10 run attribute @s movement_efficiency modifier add 3008:very_low_health -0.2 add_multiplied_total
execute if score @s health matches 1..10 run particle dust{color:11277846, scale:1} ~ ~1 ~ .2 .5 .2 0 2 force @a
execute if score @s health matches 1..10 run scoreboard players set @s screen_effect 3
execute unless score @s health matches 1..10 run attribute @s jump_strength modifier remove 3008:very_low_health
execute unless score @s health matches 1..10 run attribute @s step_height modifier remove 3008:very_low_health
execute unless score @s health matches 1..10 run effect clear @s mining_fatigue
execute unless score @s health matches 1..10 run attribute @s movement_speed modifier remove 3008:very_low_health
execute unless score @s health matches 1..10 run attribute @s movement_efficiency modifier remove 3008:very_low_health

execute if score @s health matches 1..5 run attribute @s jump_strength modifier add 3008:extra_low_health -1 add_multiplied_total
execute if score @s health matches 1..5 run attribute @s movement_speed modifier add 3008:extra_low_health -0.3 add_multiplied_total
execute if score @s health matches 1..5 run attribute @s movement_efficiency modifier add 3008:extra_low_health -0.3 add_multiplied_total
execute if score @s health matches 1..5 run particle dust{color:11277846, scale:1} ~ ~1 ~ .2 .5 .2 0 7 force @a
execute if score @s health matches 1..5 run scoreboard players set @s screen_effect 4
execute unless score @s health matches 1..5 run attribute @s jump_strength modifier remove 3008:extra_low_health
execute unless score @s health matches 1..5 run attribute @s movement_speed modifier remove 3008:extra_low_health
execute unless score @s health matches 1..5 run attribute @s movement_efficiency modifier remove 3008:extra_low_health




# health display
execute as @a unless score @s health.max_health matches -2147483648..2147483647 run scoreboard players set @s health.max_health 100
execute as @a unless score @s health matches -2147483648..2147483647 run scoreboard players operation @s health = @s health.max_health
execute as @a run scoreboard players operation @s health.percentage = @s health
execute as @a run scoreboard players operation @s health.percentage *= 1000 consts
execute as @a run scoreboard players operation @s health.percentage /= @s health.max_health
execute as @a run scoreboard players operation @s health.percentage /= 10 consts

execute as @a run scoreboard players operation @s health.percentage_minecraftlike = @s health.percentage
execute as @a run scoreboard players operation @s health.percentage_minecraftlike /= 5 consts

execute as @a if score @s health.percentage matches ..-1 run scoreboard players set @s health.percentage 0
execute as @a if score @s health.percentage matches 101.. run scoreboard players set @s health.percentage 100

execute if score @s health > @s health.max_health run scoreboard players operation @s health = @s health.max_health

scoreboard players operation @s health.percentage.anim_diff_add = @s health.percentage
scoreboard players operation @s health.percentage.anim_diff_add -= @s health.percentage.anim_prev

scoreboard players operation @s health.percentage.anim_diff += @s health.percentage.anim_diff_add

execute as @a[tag=regenerating] unless score @s health.percentage.anim_prev = @s health.percentage run scoreboard players set @s health.regen_timer 1000
execute as @a[tag=regenerating] unless score @s health.percentage.anim_prev = @s health.percentage run scoreboard players operation @s health.regen_timer /= @s health
execute as @a[tag=regenerating] unless score @s health.percentage.anim_prev = @s health.percentage run scoreboard players operation @s health.regen_timer *= @s health.regen_timer
execute as @a[tag=regenerating] unless score @s health.percentage.anim_prev = @s health.percentage run scoreboard players operation @s health.regen_timer /= 4 consts

scoreboard players operation @s health.percentage.anim_prev = @s health.percentage

execute unless score @s health.percentage.anim_diff matches 1.. unless score @s health.percentage.anim_diff matches ..-1 run scoreboard players operation @s health.percentage.anim = @s health.percentage

execute if score @s health.percentage.anim_diff matches 1.. run function 3008:life/health/display/change_anim {difference: health.percentage.anim_diff, result: health.percentage.anim}
execute if score @s health.percentage.anim_diff matches ..-1 run damage @s .001
execute if score @s health.percentage.anim_diff matches ..-1 run function 3008:life/health/display/change_anim {difference: health.percentage.anim_diff, result: health.percentage.anim}

execute store result score @s stat.xp run xp query @s levels
execute unless score @s stat.xp = @s health.percentage.anim run function 3008:life/health/display/show_health
