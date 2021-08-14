#
# Call the corresponding tick function for the current UHC state 
#
# Tag: #minecraft:tick
#

# uhcState - The state machine scoreboard
#
# 1 - Lobby
# 3 - Start sequence
# 4 - UHC
# 5 - Awards
execute if score UHC uhcState matches 1 run function hunt_zed:lobby/tick
execute if score UHC uhcState matches 3 run function hunt_zed:starting/tick
execute if score UHC uhcState matches 4 run function hunt_zed:running/tick

scoreboard players add UHC uhcTick 1
