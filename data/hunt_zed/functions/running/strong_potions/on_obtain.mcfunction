#
# Replace the strong potion in the players inventory if
# the game state is running and strong potions are disabled
#
# Entity: The player who just obtained strong potion
#

advancement revoke @s only hunt_zed:running/obtain_strong_potion

execute if score UHC uhcState matches 4 if score UHCPotion uhcEnabled matches 0 run function hunt_zed:running/strong_potions/replace
