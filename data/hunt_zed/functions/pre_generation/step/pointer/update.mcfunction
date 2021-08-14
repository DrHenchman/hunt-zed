#
# Upate the cursor variables for the pre-generation
#

function hunt_zed:pre_generation/step/pointer/update/x

execute if score X uhcPG matches ..0 run function hunt_zed:pre_generation/step/pointer/update/z
execute if score X uhcPG >= Diameter uhcPG run function hunt_zed:pre_generation/step/pointer/update/z

execute if score Z uhcPG >= Diameter uhcPG run function hunt_zed:pre_generation/step/pointer/reset
