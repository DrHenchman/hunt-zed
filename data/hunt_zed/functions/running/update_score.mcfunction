#
# Update the score based on what team the player is in
#
# Entity: The player who died
# Tag: #hunt_zed:events/on_player_death
#

execute if entity @s[team=hero] run scoreboard players operation Hunters displayScore += Hunters scoreDelta
execute if entity @s[team=hunters] run scoreboard players operation Helpers displayScore += Helpers scoreDelta
