#
# Respawn in a random location is enabled for team
#
# Entity: The player who died
#

tag @s remove requires_respawn
execute if entity @s[team=hunters] if score rngRespawnHunt uhcEnabled matches 1 at @s run spreadplayers ~ ~ 100 100 false @s
execute if entity @s[team=helpers] if score rngRespawnHelp uhcEnabled matches 1 at @s run spreadplayers ~ ~ 100 100 false @s
execute if entity @s[team=hero] if score rngRespawnHero uhcEnabled matches 1 at @s run spreadplayers ~ ~ 100 100 false @s
