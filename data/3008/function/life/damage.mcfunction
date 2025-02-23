$scoreboard players remove @s health $(damage)
$scoreboard players set @s health.last_damage $(reason)
$execute unless score $(silent) consts matches 1 run damage @s .001