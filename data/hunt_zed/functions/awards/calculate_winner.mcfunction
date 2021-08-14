#
# Calculate and grant the WINNER advancement
#
# Tag: #hunt_zed:events/on_complete
#

# Special case. As players without teams are solo, only give the advancement to the player
# still playing
#execute if entity @a[tag=playing,team=] run advancement grant @a[tag=playing,team=] only hunt_zed:awards/winner triggered

# Check for any remaining players in each team still alive, and if there are, grant everyone in the team the winner advancement
#execute if entity @a[tag=playing,team=hunters] run advancement grant @a[team=hunters] only hunt_zed:awards/winner triggered
#execute if entity @a[tag=playing,team=helpers] run advancement grant @a[team=helpers] only hunt_zed:awards/winner triggered
#execute if entity @a[tag=playing,team=hero] run advancement grant @a[team=hero] only hunt_zed:awards/winner triggered
