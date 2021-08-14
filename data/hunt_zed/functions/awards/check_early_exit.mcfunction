#
# Check and grant the early exit advancement to the player if they are the first one
#
# Entity: The player who died
# Tag: #hunt_zed:events/on_player_death
#

execute unless entity @a[advancements={hunt_zed:awards/early_exit={triggered=true}}] run advancement grant @s only hunt_zed:awards/early_exit triggered
