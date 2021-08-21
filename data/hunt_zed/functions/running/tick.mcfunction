#
# Run all the things which need to happen on every tick while the game is running
#

# Handle players who have died or joined the game after it as started
team join spectate @a[gamemode=survival,tag=!playing,team=]
execute as @a[tag=playing,scores={uhcDeaths=1..}] run function #hunt_zed:events/on_player_death
scoreboard players reset @a uhcDeaths
execute as @a[tag=requires_respawn,scores={uhcATime=1..}] run function hunt_zed:running/hunt_respawn

execute if score UHC uhcTick matches 1200 run scoreboard players add UHC uhcMin 1
execute if score UHC uhcTick matches 1200.. run scoreboard players set UHC uhcTick 0
execute if score UHC uhcTick matches 0 run function #hunt_zed:minute

execute as @a[scores={uhcDiaChest=1..}] run function hunt_zed:running/diamond_chestplate/cleanup
