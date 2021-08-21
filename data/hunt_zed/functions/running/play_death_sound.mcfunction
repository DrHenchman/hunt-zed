#
# Mark the player who died as no longer player
#
# Entity: The player who died
# Tag: #hunt_zed:events/on_player_death
#

# Play a death sound
execute if entity @s[team=helpers] as @a at @s run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 0.25 1
execute if entity @s[team=hunters] as @a at @s run playsound minecraft:entity.firework_rocket.blast player @s ~ ~ ~ 1 0.75 1
execute if entity @s[team=hero] as @a at @s run playsound minecraft:item.totem.use player @s ~ ~ ~ 0.5 2 0.5
