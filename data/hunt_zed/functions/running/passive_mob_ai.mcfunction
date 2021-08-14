#
# Disable the AI for any passive mobs. Runs once a minute
#
# Tag: #hunt_zed:minute
#

execute if score UHCPassive uhcEnabled matches 0 run execute as @e[type=#hunt_zed:passive,type=!#hunt_zed:combat_tameable] unless data entity @s Passenger[0] run data merge entity @s {NoAI:1b}
