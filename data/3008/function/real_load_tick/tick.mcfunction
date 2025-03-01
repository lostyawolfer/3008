execute in 3008:infinite_ikea run function 3008:generation/tick

execute unless score generated server matches 1.. run return -1
execute if score temp-1 server matches 0.. run return 1
execute if score temp-10 server matches 0.. run return 2
execute if score temp_gen_final server matches 0.. run return 3

execute in 3008:infinite_ikea run function 3008:tick