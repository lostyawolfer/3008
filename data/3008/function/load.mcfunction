# gamerules
gamerule keepInventory true
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule randomTickSpeed 0
gamerule fallDamage false
gamerule fireDamage true
gamerule drowningDamage false
gamerule freezeDamage true
gamerule doTileDrops false
gamerule mobGriefing false
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule playersSleepingPercentage 101
gamerule doImmediateRespawn true
gamerule showDeathMessages false
#


# constants
scoreboard objectives add consts dummy
    scoreboard players set -1 consts -1
    scoreboard players set 0 consts 0
    scoreboard players set 1 consts 1
    scoreboard players set 2 consts 2
    scoreboard players set 5 consts 5
    scoreboard players set 6 consts 6
    scoreboard players set 7 consts 7
    scoreboard players set 8 consts 8
    scoreboard players set 10 consts 10
    scoreboard players set 15 consts 15
    scoreboard players set 16 consts 16
    scoreboard players set 20 consts 20
    scoreboard players set 30 consts 30
    scoreboard players set 60 consts 60
    scoreboard players set 100 consts 100
    scoreboard players set 150 consts 150
    scoreboard players set 200 consts 200
    scoreboard players set 300 consts 300
    scoreboard players set 1000 consts 1000
    scoreboard players set 2500 consts 2500
    scoreboard players set 50000 consts 50000
#


# argument checker
scoreboard objectives add argument_check dummy
    scoreboard players set remove argument_check 1
    scoreboard players set true argument_check -1
    scoreboard players set false argument_check -2
#


# block holding
scoreboard objectives add holding.current_block dummy

    # # block 1
    # scoreboard objectives add holding.get.oak_planks.break minecraft.mined:minecraft.oak_planks
    # scoreboard objectives add holding.get.oak_planks.pick_up minecraft.picked_up:minecraft.oak_planks
    # scoreboard objectives add holding.place.oak_planks.place minecraft.used:minecraft.oak_planks
    # scoreboard objectives add holding.place.oak_planks.drop minecraft.dropped:minecraft.oak_planks

    # # block 2
    # scoreboard objectives add holding.get.oak_planks.break minecraft.mined:minecraft.oak_planks
    # scoreboard objectives add holding.get.oak_planks.pick_up minecraft.picked_up:minecraft.oak_planks
    # scoreboard objectives add holding.place.oak_planks.place minecraft.used:minecraft.oak_planks
    # scoreboard objectives add holding.place.oak_planks.drop minecraft.dropped:minecraft.oak_planks

#


# misc scoreboards
scoreboard objectives add player_list dummy
scoreboard objectives add server dummy
scoreboard objectives add server.items_spawned dummy
function 3008:misc/update_player_list

scoreboard objectives add screen_effect dummy
scoreboard objectives add pickup_delay dummy
scoreboard objectives add time_lived dummy
scoreboard objectives add logging dummy

scoreboard objectives add health dummy
    scoreboard objectives add health.max_health dummy
    scoreboard objectives add health.percentage dummy
        scoreboard objectives add health.percentage.anim dummy
        scoreboard objectives add health.percentage.anim_diff dummy
        scoreboard objectives add health.percentage.anim_diff_add dummy
        scoreboard objectives add health.percentage.anim_prev dummy
    scoreboard objectives add health.percentage_minecraftlike dummy
        scoreboard objectives modify health.percentage_minecraftlike rendertype hearts
    scoreboard objectives add health.take_damage dummy
    scoreboard objectives add health.damage_taken minecraft.custom:minecraft.damage_taken
    scoreboard objectives add health.fall_distance minecraft.custom:minecraft.fall_one_cm
    scoreboard objectives add health.fall_timer dummy
    scoreboard objectives add health.fall_timer_true dummy
    scoreboard objectives add health.last_damage_reason dummy
    scoreboard objectives add health.death_anim dummy
        scoreboard objectives add health.death_anim.reason dummy
    scoreboard objectives add health.regen_timer dummy
    scoreboard objectives add health.air air
        scoreboard objectives add health.air_percentage dummy
    scoreboard objectives add health.mc_death_trigger minecraft.custom:minecraft.deaths
scoreboard objectives setdisplay list health
scoreboard objectives setdisplay below_name health
scoreboard objectives modify health displayname {"text": "❤", "color": "#7EFC20"}
scoreboard objectives modify health numberformat styled {"color": "#7EFC20"}

scoreboard objectives add employee_sound dummy

scoreboard objectives add hunger dummy
scoreboard objectives add hunger.minecraftlike dummy
scoreboard objectives add hunger.real food
scoreboard objectives add hunger.add dummy

scoreboard objectives add stat.death_count dummy
scoreboard objectives add stat.death_count.anim dummy
scoreboard objectives add stat.xp dummy
scoreboard objectives add stat.drop minecraft.custom:minecraft.drop
scoreboard objectives add stat.playtime minecraft.custom:minecraft.play_time
scoreboard objectives add stat.sleep_time dummy
scoreboard objectives add stat.kill_zombie minecraft.killed:minecraft.zombie
scoreboard objectives add stat.kill_zombie_day minecraft.killed:minecraft.zombified_piglin
scoreboard objectives add stat.leave minecraft.custom:minecraft.leave_game
scoreboard objectives add stat.height dummy
scoreboard objectives add stat.last_fall_distance.trigger minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add stat.last_fall_distance dummy
scoreboard objectives add stat.last_fall_distance.blocks dummy
scoreboard objectives add stat.sprinting minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add stat.crouching minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add stat.walking minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add stat.jump minecraft.custom:minecraft.jump

scoreboard objectives add music.current_song dummy
scoreboard objectives add music.previous_song dummy
scoreboard objectives add music.time dummy

scoreboard objectives add tip.night dummy
scoreboard objectives add tip.day dummy
scoreboard objectives add tip.night_blood dummy
scoreboard objectives add tip.night_fog dummy
scoreboard objectives add tip.day_fog dummy
scoreboard objectives add tip.playtime dummy
#


# bossbars
bossbar add 3008:clock ""
    bossbar set 3008:clock max 28800
    bossbar set 3008:clock color yellow
    bossbar set 3008:clock style notched_6
#

# teams
team add player
    team modify player color aqua
    team modify player collisionRule always
    team modify player friendlyFire true
    team modify player nametagVisibility always
    team modify player seeFriendlyInvisibles false

team add sleeping
    team modify sleeping color dark_aqua
    team modify sleeping suffix {"text": "💤", "color": "aqua"}
    team modify sleeping collisionRule always
    team modify sleeping friendlyFire true
    team modify sleeping nametagVisibility always
    team modify sleeping seeFriendlyInvisibles false

team add dead
    team modify dead color dark_gray
    team modify dead prefix {"text": "☠", "color": "red"}
    team modify dead collisionRule never
    team modify dead friendlyFire true
    team modify dead nametagVisibility always
    team modify dead seeFriendlyInvisibles false

team add creative
    team modify creative color gray
    team modify creative prefix {"text": "⭐", "color": "aqua"}
    team modify creative collisionRule never
    team modify creative friendlyFire false
    team modify creative nametagVisibility always
    team modify creative seeFriendlyInvisibles true

team add spectator
    team modify spectator color gray
    team modify spectator prefix {"text": "☆", "color": "aqua"}
    team modify spectator collisionRule never
    team modify spectator friendlyFire false
    team modify spectator nametagVisibility always
    team modify spectator seeFriendlyInvisibles true