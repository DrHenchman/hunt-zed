#
# Check and grant the early exit advancement to the player if they are the first one
#
# Entity: The player who died
#

execute unless entity @a[advancements={uhc_pack:awards/early_exit={triggered=true}}] run advancement grant @s only uhc_pack:awards/early_exit triggered
