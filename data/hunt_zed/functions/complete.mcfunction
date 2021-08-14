#
# Complete the UHC, putting all players into spectator mode
#

scoreboard players set UHC uhcState 5
execute as @a run function hunt_zed:running/make_player_spectator
tellraw @a[tag=admin] [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Awards","color":"gray"},{"text":" \u2503 "},{"text":"[Click to reveal]","color":"green","clickEvent":{"action":"run_command","value":"/function hunt_zed:awards/reveal"}}]
function #hunt_zed:events/on_complete
