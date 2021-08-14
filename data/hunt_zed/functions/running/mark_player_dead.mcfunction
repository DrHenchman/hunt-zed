#
# Mark the player who died as no longer player
#
# Entity: The player who died
# Tag: #hunt_zed:events/on_player_death
#

# Play a death sound
execute as @a at @s run playsound minecraft:item.totem.use player @s ~ ~ ~ 0.5 2 0.5
