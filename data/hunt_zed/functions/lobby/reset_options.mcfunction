#
# Reset all the options
#
# Tag: #hunt_zed:events/on_lobby
#

scoreboard players set UHC uhcTeams 4
scoreboard players set UHC uhcMM 20
scoreboard players set UHC uhcNextMM 0
scoreboard players set UHC uhcBSize 1008
scoreboard players set UHC uhcSBStrt 60
scoreboard players set UHC uhcSBSize 16
scoreboard players set UHC uhcSBDur 40
scoreboard players set UHC uhcEter 70
scoreboard players set UHC uhcGlow 80
scoreboard players set UHCShrink uhcEnabled 1
scoreboard players set UHCMM uhcEnabled 1
scoreboard players set UHCDiaChest uhcEnabled 1
scoreboard players set UHCEter uhcEnabled 1
scoreboard players set UHCGlow uhcEnabled 1
scoreboard players set UHCPotion uhcEnabled 1
scoreboard players set UHCStew uhcEnabled 1
scoreboard players set UHCPassive uhcEnabled 1
scoreboard players set UHCPhantom uhcEnabled 1
scoreboard players set UHCJoining uhcEnabled 1
scoreboard players set UHCNightVision uhcEnabled 0
scoreboard players set UHCFriendlyFire uhcEnabled 1
scoreboard players set UHCShowAdvs uhcEnabled 1
scoreboard players set UHCConduit uhcEnabled 0

scoreboard players set rngRespawnHunt uhcEnabled 1
scoreboard players set rngRespawnHelp uhcEnabled 1
scoreboard players set rngRespawnHero uhcEnabled 1

scoreboard players set Hunters scoreDelta 3
scoreboard players set Helpers scoreDelta 1

# Display options for toggles

data modify storage hunt_zed:text Icon.Shrink set from storage hunt_zed:text Icon.Enabled
data modify storage hunt_zed:text Icon.Marker set from storage hunt_zed:text Icon.Enabled
data modify storage hunt_zed:text Icon.DiamondChestplate set from storage hunt_zed:text Icon.Enabled
data modify storage hunt_zed:text Icon.Eternal set from storage hunt_zed:text Icon.Enabled
data modify storage hunt_zed:text Icon.Glow set from storage hunt_zed:text Icon.Enabled
data modify storage hunt_zed:text Icon.Potion set from storage hunt_zed:text Icon.Enabled
data modify storage hunt_zed:text Icon.Stew set from storage hunt_zed:text Icon.Enabled
data modify storage hunt_zed:text Icon.Passive set from storage hunt_zed:text Icon.Enabled
data modify storage hunt_zed:text Icon.Phantom set from storage hunt_zed:text Icon.Enabled
data modify storage hunt_zed:text Icon.Joining set from storage hunt_zed:text Icon.Enabled
data modify storage hunt_zed:text Icon.NightVision set from storage hunt_zed:text Icon.Disabled
data modify storage hunt_zed:text Icon.FriendlyFire set from storage hunt_zed:text Icon.Enabled
data modify storage hunt_zed:text Icon.ShowAdvancements set from storage hunt_zed:text Icon.Enabled
data modify storage hunt_zed:text Icon.ConduitPower set from storage hunt_zed:text Icon.Disabled

data modify storage hunt_zed:text Icon.RngRespawnHunt set from storage hunt_zed:text Icon.Enabled
data modify storage hunt_zed:text Icon.RngRespawnHelp set from storage hunt_zed:text Icon.Enabled
data modify storage hunt_zed:text Icon.RngRespawnHero set from storage hunt_zed:text Icon.Enabled

