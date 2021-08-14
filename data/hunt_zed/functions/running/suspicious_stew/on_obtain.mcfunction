#
# Replace the suspcious stew in the players inventory
# if the game state is running and suspicious stews are disabled
#
# Entity: The player who just obtained suspicious stew
#

advancement revoke @s only hunt_zed:running/obtain_suspicious_stew

execute if score UHC uhcState matches 4 if score UHCStew uhcEnabled matches 0 run function hunt_zed:running/suspicious_stew/replace
