#
# Calculate and grant the heavy hitter advancement
#
# Tag: #hunt_zed:events/on_complete
#

scoreboard players set UHC uhcPG 0
execute as @a[team=!spectate] run scoreboard players operation UHC uhcPG > @s uhcDDealt
execute as @a[team=!spectate] if score @s uhcDDealt = UHC uhcPG run advancement grant @s only hunt_zed:awards/heavy_hitter triggered
scoreboard players reset UHC uhcPG
