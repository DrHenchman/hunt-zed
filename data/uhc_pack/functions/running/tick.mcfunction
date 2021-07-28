#
# Run all the things which need to happen on every tick while the game is running
#

# Handle players who have died or joined the game after it as started
team join spectate @a[gamemode=survival,tag=!playing,team=]
execute as @a[tag=playing,scores={uhcDeaths=1..}] run function #uhc_pack:events/on_player_death

execute if score UHC uhcTick matches 1200 run scoreboard players add UHC uhcMin 1
execute if score UHC uhcTick matches 1200.. run scoreboard players set UHC uhcTick 0
execute if score UHC uhcTick matches 0 run function #uhc_pack:minute

execute as @a[scores={uhcDiaChest=1..}] run function uhc_pack:running/diamond_chestplate/cleanup
