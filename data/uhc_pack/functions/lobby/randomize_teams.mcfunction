#
# Add a batch of players into the active teams.
# Tail recurse if there are still more players at the end
#

team join hunters @r[team=]
team join helpers @r[team=]

execute if entity @a[team=] run function uhc_pack:lobby/randomize_teams
