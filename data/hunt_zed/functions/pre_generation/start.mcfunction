#
# Start the pre-generation
#

scoreboard players set Stage uhcPG 0

tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Pre-generation","color":"gray"},{"text":" \u2503 "},{"text":"Started","color":"gold"}]

function hunt_zed:pre_generation/stage/next
schedule function hunt_zed:pre_generation/tick 1t
