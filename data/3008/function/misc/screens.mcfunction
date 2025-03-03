execute as @a[scores = {logging = 0}] run title @s actionbar ["! debug: ", {"selector": "@s"}, " has ", {"score": {"name": "@s", "objective": "screen_effect"}}, " screen effect"]
execute if score @s screen_effect matches 0 run item replace entity @s armor.head with golden_helmet[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "3008:vignettes/empty"}, minecraft:enchantments={levels:{binding_curse:1}, show_in_tooltip: false}, minecraft:enchantment_glint_override=false, minecraft:custom_data={game:0}, minecraft:custom_name='{"text":""}', hide_tooltip={}]

execute if score @s screen_effect matches 1 run item replace entity @s armor.head with golden_helmet[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "3008:vignettes/black"}, minecraft:enchantments={levels:{binding_curse:1}, show_in_tooltip: false}, minecraft:enchantment_glint_override=false, minecraft:custom_data={game:0}, minecraft:custom_name='{"text":""}', hide_tooltip={}]
execute if score @s screen_effect matches 2 run item replace entity @s armor.head with golden_helmet[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "3008:vignettes/low_health"}, minecraft:enchantments={levels:{binding_curse:1}, show_in_tooltip: false}, minecraft:enchantment_glint_override=false, minecraft:custom_data={game:0}, minecraft:custom_name='{"text":""}', hide_tooltip={}]
execute if score @s screen_effect matches 3 run item replace entity @s armor.head with golden_helmet[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "3008:vignettes/very_low_health"}, minecraft:enchantments={levels:{binding_curse:1}, show_in_tooltip: false}, minecraft:enchantment_glint_override=false, minecraft:custom_data={game:0}, minecraft:custom_name='{"text":""}', hide_tooltip={}]
execute if score @s screen_effect matches 4 run item replace entity @s armor.head with golden_helmet[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "3008:vignettes/extra_low_health"}, minecraft:enchantments={levels:{binding_curse:1}, show_in_tooltip: false}, minecraft:enchantment_glint_override=false, minecraft:custom_data={game:0}, minecraft:custom_name='{"text":""}', hide_tooltip={}]
execute if score @s screen_effect matches 5 run item replace entity @s armor.head with golden_helmet[minecraft:equippable={slot: "head", equip_sound: {sound_id: ""}, camera_overlay: "3008:vignettes/not_so_low_health"}, minecraft:enchantments={levels:{binding_curse:1}, show_in_tooltip: false}, minecraft:enchantment_glint_override=false, minecraft:custom_data={game:0}, minecraft:custom_name='{"text":""}', hide_tooltip={}]


# death
function 3008:misc/screens_macro {id: 100, folder: death, file: death_f0}
function 3008:misc/screens_macro {id: 101, folder: death, file: death_f1}
function 3008:misc/screens_macro {id: 102, folder: death, file: death_f2}
function 3008:misc/screens_macro {id: 103, folder: death, file: death_f3}
function 3008:misc/screens_macro {id: 104, folder: death, file: death_f4}
function 3008:misc/screens_macro {id: 105, folder: death, file: death_f5}
function 3008:misc/screens_macro {id: 106, folder: death, file: death_f6}
function 3008:misc/screens_macro {id: 107, folder: death, file: death_f7}
function 3008:misc/screens_macro {id: 108, folder: death, file: death_f8}
function 3008:misc/screens_macro {id: 109, folder: death, file: death_f9}
function 3008:misc/screens_macro {id: 110, folder: death, file: death_f10}
function 3008:misc/screens_macro {id: 111, folder: death, file: death_f11}
function 3008:misc/screens_macro {id: 112, folder: death, file: death_f12}
function 3008:misc/screens_macro {id: 113, folder: death, file: death_f13}
function 3008:misc/screens_macro {id: 114, folder: death, file: death_f14}
function 3008:misc/screens_macro {id: 115, folder: death, file: death_f15}

# respawn
function 3008:misc/screens_macro {id: 200, folder: respawn, file: respawn_f0}
function 3008:misc/screens_macro {id: 201, folder: respawn, file: respawn_f1}
function 3008:misc/screens_macro {id: 202, folder: respawn, file: respawn_f2}
function 3008:misc/screens_macro {id: 203, folder: respawn, file: respawn_f3}
function 3008:misc/screens_macro {id: 204, folder: respawn, file: respawn_f4}
function 3008:misc/screens_macro {id: 205, folder: respawn, file: respawn_f5}
function 3008:misc/screens_macro {id: 206, folder: respawn, file: respawn_f6}
function 3008:misc/screens_macro {id: 207, folder: respawn, file: respawn_f7}
function 3008:misc/screens_macro {id: 208, folder: respawn, file: respawn_f8}
function 3008:misc/screens_macro {id: 209, folder: respawn, file: respawn_f9}
function 3008:misc/screens_macro {id: 210, folder: respawn, file: respawn_f10}
function 3008:misc/screens_macro {id: 211, folder: respawn, file: respawn_f11}
function 3008:misc/screens_macro {id: 212, folder: respawn, file: respawn_f12}
function 3008:misc/screens_macro {id: 213, folder: respawn, file: respawn_f13}
function 3008:misc/screens_macro {id: 214, folder: respawn, file: respawn_f14}
function 3008:misc/screens_macro {id: 215, folder: respawn, file: respawn_f15}

# falling
function 3008:misc/screens_macro {id: 300, folder: fall, file: f0}
function 3008:misc/screens_macro {id: 301, folder: fall, file: f1}
function 3008:misc/screens_macro {id: 302, folder: fall, file: f2}
function 3008:misc/screens_macro {id: 303, folder: fall, file: f3}
function 3008:misc/screens_macro {id: 304, folder: fall, file: f4}
function 3008:misc/screens_macro {id: 305, folder: fall, file: f5}
function 3008:misc/screens_macro {id: 306, folder: fall, file: f6}
function 3008:misc/screens_macro {id: 307, folder: fall, file: f7}
function 3008:misc/screens_macro {id: 308, folder: fall, file: f8}
function 3008:misc/screens_macro {id: 309, folder: fall, file: f9}
function 3008:misc/screens_macro {id: 310, folder: fall, file: f10}
function 3008:misc/screens_macro {id: 311, folder: fall, file: f11}
function 3008:misc/screens_macro {id: 312, folder: fall, file: f12}
function 3008:misc/screens_macro {id: 313, folder: fall, file: f13}
