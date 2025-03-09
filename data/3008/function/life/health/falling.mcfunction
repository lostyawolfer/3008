execute as @a if score @s health.fall_timer matches 0.. run scoreboard players add @s health.fall_timer 1
execute as @a if score @s health.fall_timer matches 0.. run scoreboard players add @s health.fall_timer_true 1
execute as @a[nbt={OnGround:0b}, gamemode=adventure] at @s if blocks ~ ~-1 ~ ~ ~-20 ~ ~ ~ ~ all if block ~ ~ ~ air unless score @s health.fall_timer matches 0.. run scoreboard players set @s health.fall_timer 1
execute as @a[nbt={OnGround:1b}] run scoreboard players reset @s health.fall_timer
execute as @a at @s unless block ~ ~ ~ air run scoreboard players reset @s health.fall_timer
execute as @a unless score @s health.fall_timer matches 0.. run scoreboard players reset @s health.fall_timer_true


execute as @a[scores={health.fall_timer=10  }] at @s run playsound 3008:fall_loop master @s[tag=!dead] ~ ~ ~ 1 1 1
execute as @a unless score @s health.fall_timer matches 0.. run stopsound @s * 3008:fall_loop

execute as @a if score @s health.fall_timer_true matches 100.. run attribute @s gravity modifier add 3008:long_fall 1 add_multiplied_total
execute as @a unless score @s health.fall_timer_true matches 100.. run attribute @s gravity modifier remove 3008:long_fall

execute as @a if score @s health.fall_timer_true matches 200.. run attribute @s gravity modifier add 3008:very_long_fall 1.1 add_multiplied_total
execute as @a unless score @s health.fall_timer_true matches 200.. run attribute @s gravity modifier remove 3008:very_long_fall


execute as @a unless score @s health.fall_timer matches 1.. if score @s health matches 21.. run scoreboard players set @s screen_effect 0

execute as @a[scores={health.fall_timer=10}] if score @s health matches 1.. run scoreboard players set @s screen_effect 300
execute as @a[scores={health.fall_timer=11}] if score @s health matches 1.. run scoreboard players set @s screen_effect 301
execute as @a[scores={health.fall_timer=12}] if score @s health matches 1.. run scoreboard players set @s screen_effect 302
execute as @a[scores={health.fall_timer=13}] if score @s health matches 1.. run scoreboard players set @s screen_effect 303
execute as @a[scores={health.fall_timer=14}] if score @s health matches 1.. run scoreboard players set @s screen_effect 304
execute as @a[scores={health.fall_timer=15}] if score @s health matches 1.. run scoreboard players set @s screen_effect 305
execute as @a[scores={health.fall_timer=16}] if score @s health matches 1.. run scoreboard players set @s screen_effect 306
execute as @a[scores={health.fall_timer=17}] if score @s health matches 1.. run scoreboard players set @s screen_effect 307
execute as @a[scores={health.fall_timer=18}] if score @s health matches 1.. run scoreboard players set @s screen_effect 308
execute as @a[scores={health.fall_timer=19}] if score @s health matches 1.. run scoreboard players set @s screen_effect 309

execute as @a[scores={health.fall_timer=20}] if score @s health matches 1.. run scoreboard players set @s screen_effect 310
execute as @a[scores={health.fall_timer=21}] if score @s health matches 1.. run scoreboard players set @s screen_effect 311
execute as @a[scores={health.fall_timer=22}] if score @s health matches 1.. run scoreboard players set @s screen_effect 312
execute as @a[scores={health.fall_timer=23}] if score @s health matches 1.. run scoreboard players set @s screen_effect 313

execute as @a[scores={health.fall_timer=24}] if score @s health matches 1.. run scoreboard players set @s health.fall_timer 19




execute as @a[scores={stat.last_fall_distance.trigger=1..}] run scoreboard players operation @s stat.last_fall_distance = @s stat.last_fall_distance.trigger
execute as @a[scores={stat.last_fall_distance.trigger=1..}] run scoreboard players reset @s stat.last_fall_distance.trigger

execute as @a[scores={stat.last_fall_distance=1..}] run scoreboard players operation @s stat.last_fall_distance.blocks = @s stat.last_fall_distance
execute as @a[scores={stat.last_fall_distance=1..}] run scoreboard players operation @s stat.last_fall_distance.blocks /= 100 consts

execute as @a[scores={health.fall_distance=1..}] run stopsound @s * 3008:fall_cont
execute as @a[nbt={OnGround:1b}] run stopsound @s * 3008:fall_cont
execute as @a[scores={health.fall_distance=300..}] run scoreboard players operation @s health.take_damage += @s health.fall_distance
execute as @a[scores={health.fall_distance=300..699}] run scoreboard players operation @s health.take_damage /= 60 consts
execute as @a[scores={health.fall_distance=700..1199}] run scoreboard players operation @s health.take_damage /= 30 consts
execute as @a[scores={health.fall_distance=1200..}] run scoreboard players operation @s health.take_damage /= 20 consts
execute as @a[scores={health.fall_distance=1500..99999}] run scoreboard players set @s health.last_damage_reason 1
execute as @a[scores={health.fall_distance=100000..}] run scoreboard players set @s health.last_damage_reason 2
execute as @a[scores={health.fall_distance=1..}] run scoreboard players reset @s health.fall_distance
