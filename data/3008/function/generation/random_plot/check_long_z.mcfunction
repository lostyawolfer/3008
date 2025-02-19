execute unless entity @e[type=armor_stand, tag=generating_check] run return run function 3008:generation/random_plot/default_plot

execute as @e[type=armor_stand, tag=generating_check] at @s unless block ~ ~ ~16 air run return run return run function 3008:generation/random_plot/default_plot
execute as @e[type=armor_stand, tag=generating_check] at @s if block ~1 ~-1 ~17 black_concrete run return run function 3008:generation/random_plot/default_plot

execute as @e[type=armor_stand, tag=generating_check] at @s unless block ~ ~ ~32 air run return run function 3008:generation/random_plot/default_plot
execute as @e[type=armor_stand, tag=generating_check] at @s if block ~1 ~-1 ~33 black_concrete run return run function 3008:generation/random_plot/default_plot

execute as @e[type=armor_stand, tag=generating_check] at @s unless block ~ ~ ~48 air run return run function 3008:generation/random_plot/default_plot
execute as @e[type=armor_stand, tag=generating_check] at @s if block ~1 ~-1 ~49 black_concrete run return run function 3008:generation/random_plot/default_plot


# target temp-3% and temp-30% for a pillar is 4 when divided by 8
execute if score temp-30% server matches 4 if score temp-3% server matches 4 run return 2

# long_z is for plots 4 chunks long and is placing into future cells
# if temp-30% is 4 then this is a pillar line
# if temp-3% is 4 then this is a pillar column
execute if score temp-30% server matches 1..3 if score temp-3% server matches 4 run return run function 3008:generation/random_plot/default_plot

# $tellraw Lostya "placed plot/long_z/$(plot)"
$function 3008:generation/plot/long_z {plot: $(plot)}
return 0