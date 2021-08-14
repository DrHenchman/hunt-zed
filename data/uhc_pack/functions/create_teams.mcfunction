#
# Create all teams
# 
# Tag: #minecraft:load
#

team add spectate
team modify spectate color black
team modify spectate deathMessageVisibility never

team add hunters "Hunters"
team modify hunters nametagVisibility hideForOtherTeams

team add helpers "Helpers"
team modify helpers nametagVisibility hideForOtherTeams

team add hero "Hero"

# Paper fix. Empty teams are deleted by default and as a result will not have the correct friendly fire option
execute if score UHC uhcState matches 4 if score UHCFriendlyFire uhcEnabled matches 1 run function uhc_pack:starting/friendlyfire_enable
execute if score UHC uhcState matches 4 if score UHCFriendlyFire uhcEnabled matches 0 run function uhc_pack:starting/friendlyfire_disable
