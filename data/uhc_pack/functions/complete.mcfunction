#
# Complete the UHC, putting all players into spectator mode
#

scoreboard players set UHC uhcState 5
execute as @a run function uhc_pack:running/make_player_spectator
tellraw @a[tag=admin] [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Awards","color":"gray"},{"text":" \u2503 "},{"text":"[Click to reveal]","color":"green","clickEvent":{"action":"run_command","value":"/function uhc_pack:awards/reveal"}}]
function #uhc_pack:events/on_complete
