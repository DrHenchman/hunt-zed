#
# Invoke all the listeners for milk drinking
#
# Entity: The player who just drank milk
#

# Reset the advancement always to it can be run again
advancement revoke @s only hunt_zed:running/drink_milk

# Invoke all the listeners for milk being drunk
function #hunt_zed:events/on_drink_milk
