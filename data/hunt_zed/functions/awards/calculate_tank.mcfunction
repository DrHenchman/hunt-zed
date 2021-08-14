#
# Calculate and grant the tank advancement
#
# Tag: #hunt_zed:events/on_complete
#

scoreboard players set UHC uhcPG 0
execute as @a[team=!spectate] run scoreboard players operation UHC uhcPG > @s uhcDTaken
execute as @a[team=!spectate] if score @s uhcDTaken = UHC uhcPG run advancement grant @s only hunt_zed:awards/tank triggered
scoreboard players reset UHC uhcPG
