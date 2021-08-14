#
# Check the playing players remaining and see if they are all on the same team
#
# Tag: #uhc_pack:events/on_player_death
#

# Special case. Each player without a team are treated as separate teams
#execute store result score TeamsRemaining uhcState run execute if entity @a[tag=playing,team=]

#execute if entity @a[tag=playing,team=hunters] run scoreboard players add TeamsRemaining uhcState 1
#execute if entity @a[tag=playing,team=helpers] run scoreboard players add TeamsRemaining uhcState 1
#execute if entity @a[tag=playing,team=hero] run scoreboard players add TeamsRemaining uhcState 1

#execute if score TeamsRemaining uhcState matches 0..1 run tellraw @a[tag=admin] [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Victory detected","color":"gray"},{"text":" \u2503 "},{"text":"[Click to complete]","color":"green","clickEvent":{"action":"run_command","value":"/function uhc_pack:complete"}}]
