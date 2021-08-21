#
# Add a batch of players into the active teams.
# Tail recurse if there are still more players at the end
#

execute as @r[team=] run function hunt_zed:lobby/join_hunters
execute as @r[team=] run function hunt_zed:lobby/join_helpers

execute if entity @a[team=] run function hunt_zed:lobby/randomize_teams
