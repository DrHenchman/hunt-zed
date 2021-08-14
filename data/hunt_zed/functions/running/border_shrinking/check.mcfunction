#
# Check whether border shrinking should start this minute
#
# Tag: #hunt_zed:minute
#

execute if score UHCShrink uhcEnabled matches 1 if score UHC uhcMin = UHC uhcSBStrt run function hunt_zed:running/border_shrinking/activate
