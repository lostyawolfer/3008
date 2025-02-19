execute unless entity @e[type=armor_stand, tag=generating_check] run return run function 3008:generation/random_plot/default_plot

execute as @e[type=armor_stand, tag=generating_check] at @s unless block ~16 ~ ~ air run return run return run function 3008:generation/random_plot/default_plot
execute as @e[type=armor_stand, tag=generating_check] at @s unless block ~16 ~-1 ~ light_gray_concrete run return run function 3008:generation/random_plot/default_plot

execute as @e[type=armor_stand, tag=generating_check] at @s unless block ~32 ~ ~ air run return run function 3008:generation/random_plot/default_plot
execute as @e[type=armor_stand, tag=generating_check] at @s unless block ~32 ~-1 ~ light_gray_concrete run return run function 3008:generation/random_plot/default_plot

execute as @e[type=armor_stand, tag=generating_check] at @s unless block ~ ~ ~16 air run return run function 3008:generation/random_plot/default_plot
execute as @e[type=armor_stand, tag=generating_check] at @s unless block ~ ~-1 ~16 light_gray_concrete run return run function 3008:generation/random_plot/default_plot

execute as @e[type=armor_stand, tag=generating_check] at @s unless block ~16 ~ ~16 air run return run function 3008:generation/random_plot/default_plot
execute as @e[type=armor_stand, tag=generating_check] at @s unless block ~16 ~-1 ~16 light_gray_concrete run return run function 3008:generation/random_plot/default_plot


# target temp-3% and temp-30% for a pillar is 4 when divided by 8
execute if score temp-3% server matches 4 if score temp-30% server matches 4 run return 2
execute if score temp-3% server matches 4 if score temp-30% server matches 3 run return 2

# long_z is for plots 4 chunks long and is placing into future cells
# if temp-30% is 4 then this is a pillar line
# if temp-3% is 4 then this is a pillar column
execute if score temp-3% server matches 2..3 if score temp-30% server matches 4 run return run function 3008:generation/random_plot/default_plot
execute if score temp-3% server matches 3 if score temp-30% server matches 3 run return run function 3008:generation/random_plot/default_plot

# tellraw Lostya "placed plot/special/cafeteria"
function 3008:generation/plot/special {plot: cafeteria}
return 0