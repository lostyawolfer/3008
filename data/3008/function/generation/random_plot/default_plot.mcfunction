execute store result score tempp server run function 3008:misc/generate_random {min: 1, max: 4}
execute if score tempp server matches 1 run function 3008:generation/plot/single {plot: bedroom}
execute if score tempp server matches 2 run function 3008:generation/plot/single {plot: wardrobes}
execute if score tempp server matches 3 run function 3008:generation/plot/single {plot: lamps}
execute if score tempp server matches 4 run function 3008:generation/plot/single {plot: four_sided_something}
scoreboard players reset tempp server

return 1