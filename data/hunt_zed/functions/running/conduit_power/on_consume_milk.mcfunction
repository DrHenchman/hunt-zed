#
# Regrant the conduit power effect to the player
#
# Entity: The player who drank the milk
# Tag: #hunt_zed:events/on_drink_milk
#

# Due to the way that the advancement trigger is invoked,
# at this point, the milk effect hasn't taken place. So we need
# the conduit power effect to take effect next tick
execute if score UHC uhcState matches 4 if score UHCConduit uhcEnabled matches 1 at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Effects:[{Id:29,Duration:2000,ShowParticles:false}],Duration:20,Radius:1}
