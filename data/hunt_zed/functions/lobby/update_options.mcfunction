#
# Update the option triggered by the player
#
# Entity: the player updating the option
#


########
# Page 1
########

# >>>>>>> Join a team manually
# 1     - Solo
# 2     - Spectate
# 3..16 - Teams
execute if score @s uhcOpt matches 1 run team leave @s
execute if score @s uhcOpt matches 2 run team join spectate
execute if score @s uhcOpt matches 3 if score UHCJoining uhcEnabled matches 1 run team join hunters
execute if score @s uhcOpt matches 4 if score UHCJoining uhcEnabled matches 1 run team join helpers
execute if score @s uhcOpt matches 5 if score UHCJoining uhcEnabled matches 1 run team join hero
execute if score @s uhcOpt matches 1..2 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"selector":"@s","color":"aqua"},{"text":" changed team manually"}]
execute if score @s uhcOpt matches 3..16 if score UHCJoining uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"selector":"@s","color":"aqua"},{"text":" changed team manually"}]

# >>>> Adjust number of teams (min=2, max=14)
# 17 - Reduce number of teams (or cycle to max)
# 18 - Increase number of teams (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 17 run scoreboard players remove UHC uhcTeams 1
execute if score @s[tag=admin] uhcOpt matches 18 run scoreboard players add UHC uhcTeams 1
execute if score UHC uhcTeams matches 15.. run scoreboard players set UHC uhcTeams 2
execute if score UHC uhcTeams matches ..1 run scoreboard players set UHC uhcTeams 14
execute if score @s[tag=admin] uhcOpt matches 17..18 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Teams ","color":"aqua"},{"text":"set to "},{"score":{"name":"UHC","objective":"uhcTeams"},"color":"gold"}]

# 19 - Randomize teams
execute if score @s[tag=admin] uhcOpt matches 19 run team leave @a[team=!spectate,team=!hero]
execute if score @s[tag=admin] uhcOpt matches 19 run function hunt_zed:lobby/randomize_teams
execute if score @s[tag=admin] uhcOpt matches 19 run scoreboard players set UHCJoining uhcEnabled 0
execute if score @s[tag=admin] uhcOpt matches 19 run data modify storage hunt_zed:text Icon.Joining set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 19 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Randomized teams"}]

# >>>> Adjust world size (min=496, max=3056)
# 20 - Reduce world size by 512 (or cycle to max)
# 21 - Increase world size by 512 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 20 run scoreboard players remove UHC uhcBSize 512
execute if score @s[tag=admin] uhcOpt matches 21 run scoreboard players add UHC uhcBSize 512
execute if score UHC uhcBSize matches 3057.. run scoreboard players set UHC uhcBSize 496
execute if score UHC uhcBSize matches ..495 run scoreboard players set UHC uhcBSize 3056
execute if score @s[tag=admin] uhcOpt matches 20..21 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"World size ","color":"aqua"},{"text":"set to "},{"score":{"name":"UHC","objective":"uhcBSize"},"color":"gold"}]

# >>>> Adjust border shrink start (min=0, max=100)
# 22 - Reduce border shrink start by 10 (or cycle to max)
# 23 - Increase border shrink start by 10 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 22 run scoreboard players remove UHC uhcSBStrt 10
execute if score @s[tag=admin] uhcOpt matches 23 run scoreboard players add UHC uhcSBStrt 10
execute if score UHC uhcSBStrt matches 101.. run scoreboard players set UHC uhcSBStrt 0
execute if score UHC uhcSBStrt matches ..-1 run scoreboard players set UHC uhcSBStrt 100
execute if score @s[tag=admin] uhcOpt matches 22..23 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Border shrink start ","color":"aqua"},{"text":"set to "},{"score":{"name":"UHC","objective":"uhcSBStrt"},"color":"gold"},{"text":" minutes"}]

# >>>> Adjust border shrink size (min=16, max=496)
# 24 - Reduce border shrink size by 96 (or cycle to max)
# 25 - Increase border shrink size by 96 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 24 run scoreboard players remove UHC uhcSBSize 96
execute if score @s[tag=admin] uhcOpt matches 25 run scoreboard players add UHC uhcSBSize 96
execute if score UHC uhcSBSize matches 497.. run scoreboard players set UHC uhcSBSize 16
execute if score UHC uhcSBSize matches ..15 run scoreboard players set UHC uhcSBSize 496
execute if score @s[tag=admin] uhcOpt matches 24..25 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Border shrink size ","color":"aqua"},{"text":"set to "},{"score":{"name":"UHC","objective":"uhcSBSize"},"color":"gold"}]

# >>>> Adjust border shrink duration (min=10, max=100)
# 26 - Reduce border shrink duration by 10 (or cycle to max)
# 27 - Increase border shrink duration by 10 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 26 run scoreboard players remove UHC uhcSBDur 10
execute if score @s[tag=admin] uhcOpt matches 27 run scoreboard players add UHC uhcSBDur 10
execute if score UHC uhcSBDur matches 101.. run scoreboard players set UHC uhcSBDur 10
execute if score UHC uhcSBDur matches ..9 run scoreboard players set UHC uhcSBDur 100
execute if score @s[tag=admin] uhcOpt matches 26..27 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Border shrink duration ","color":"aqua"},{"text":"set to "},{"score":{"name":"UHC","objective":"uhcSBDur"},"color":"gold"},{"text":" minutes"}]

# 28 - Pre-generate
execute if score @s[tag=admin] uhcOpt matches 28 run function hunt_zed:pre_generation/start

# 29 - Toggle Shrinking
execute if score @s[tag=admin] uhcOpt matches 29 run execute store success score UHCShrink uhcEnabled run execute if score UHCShrink uhcEnabled matches 0
execute if score UHCShrink uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.Shrink set from storage hunt_zed:text Icon.Enabled
execute if score UHCShrink uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.Shrink set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 29 if score UHCShrink uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Border shrink","color":"aqua"},{"text":" is "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 29 if score UHCShrink uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Border shrink","color":"aqua"},{"text":" is "},{"text":"Disabled","color":"red"}]

# 30 - Start
execute if score @s[tag=admin] uhcOpt matches 30 run function hunt_zed:start

########
# Page 2
########

# >>>> Adjust minute marker (min=10, max=60)
# 100 - Reduce minute marker by 10 (or cycle to max)
# 101 - Increase minute marker by 10 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 100 run scoreboard players remove UHC uhcMM 10
execute if score @s[tag=admin] uhcOpt matches 101 run scoreboard players add UHC uhcMM 10
execute if score UHC uhcMM matches 61.. run scoreboard players set UHC uhcMM 10
execute if score UHC uhcMM matches ..9 run scoreboard players set UHC uhcMM 60
execute if score @s[tag=admin] uhcOpt matches 100..101 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Minute marker ","color":"aqua"},{"text":"set to "},{"score":{"name":"UHC","objective":"uhcMM"},"color":"gold"},{"text":" minutes"}]

# >>>> Adjust Eternal day start (min=0, max=100)
# 102 - Reduce eternal day start by 10 (or cycle to max)
# 103 - Increase eternal day start by 10 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 102 run scoreboard players remove UHC uhcEter 10
execute if score @s[tag=admin] uhcOpt matches 103 run scoreboard players add UHC uhcEter 10
execute if score UHC uhcEter matches 101.. run scoreboard players set UHC uhcEter 0
execute if score UHC uhcEter matches ..-1 run scoreboard players set UHC uhcEter 100
execute if score @s[tag=admin] uhcOpt matches 102..103 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Eternal day start ","color":"aqua"},{"text":"set to "},{"score":{"name":"UHC","objective":"uhcEter"},"color":"gold"},{"text":" minutes"}]

# >>>> Adjust Glowing start (min=0, max=200)
# 104 - Reduce glowing start by 10 (or cycle to max)
# 105 - Increase glowing start by 10 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 104 run scoreboard players remove UHC uhcGlow 10
execute if score @s[tag=admin] uhcOpt matches 105 run scoreboard players add UHC uhcGlow 10
execute if score UHC uhcGlow matches 201.. run scoreboard players set UHC uhcGlow 0
execute if score UHC uhcGlow matches ..-1 run scoreboard players set UHC uhcGlow 200
execute if score @s[tag=admin] uhcOpt matches 104..105 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Glowing start ","color":"aqua"},{"text":"set to "},{"score":{"name":"UHC","objective":"uhcGlow"},"color":"gold"},{"text":" minutes"}]

# 106 - Toggle Eternal day
execute if score @s[tag=admin] uhcOpt matches 106 run execute store success score UHCEter uhcEnabled run execute if score UHCEter uhcEnabled matches 0
execute if score UHCEter uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.Eternal set from storage hunt_zed:text Icon.Enabled
execute if score UHCEter uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.Eternal set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 106 if score UHCEter uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Eternal day","color":"aqua"},{"text":" is "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 106 if score UHCEter uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Eternal day","color":"aqua"},{"text":" is "},{"text":"Disabled","color":"red"}]

# 107 - Toggle Glowing
execute if score @s[tag=admin] uhcOpt matches 107 run execute store success score UHCGlow uhcEnabled run execute if score UHCGlow uhcEnabled matches 0
execute if score UHCGlow uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.Glow set from storage hunt_zed:text Icon.Enabled
execute if score UHCGlow uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.Glow set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 107 if score UHCGlow uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Glowing","color":"aqua"},{"text":" is "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 107 if score UHCGlow uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Glowing","color":"aqua"},{"text":" is "},{"text":"Disabled","color":"red"}]

# 108 - Toggle Markers
execute if score @s[tag=admin] uhcOpt matches 108 run execute store success score UHCMM uhcEnabled run execute if score UHCMM uhcEnabled matches 0
execute if score UHCMM uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.Marker set from storage hunt_zed:text Icon.Enabled
execute if score UHCMM uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.Marker set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 108 if score UHCMM uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Minute marker","color":"aqua"},{"text":" is "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 108 if score UHCMM uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Minute marker","color":"aqua"},{"text":" is "},{"text":"Disabled","color":"red"}]

# 109 - Toggle Strong Potions
execute if score @s[tag=admin] uhcOpt matches 109 run execute store success score UHCPotion uhcEnabled run execute if score UHCPotion uhcEnabled matches 0
execute if score UHCPotion uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.Potion set from storage hunt_zed:text Icon.Enabled
execute if score UHCPotion uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.Potion set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 109 if score UHCPotion uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Strong potions","color":"aqua"},{"text":" are "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 109 if score UHCPotion uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Strong potions","color":"aqua"},{"text":" are "},{"text":"Disabled","color":"red"}]

# 110 - Toggle Suspicious Stew
execute if score @s[tag=admin] uhcOpt matches 110 run execute store success score UHCStew uhcEnabled run execute if score UHCStew uhcEnabled matches 0
execute if score UHCStew uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.Stew set from storage hunt_zed:text Icon.Enabled
execute if score UHCStew uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.Stew set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 110 if score UHCStew uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Suspicious stew","color":"aqua"},{"text":" is "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 110 if score UHCStew uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Supicious stew","color":"aqua"},{"text":" is "},{"text":"Disabled","color":"red"}]

# 111 - Toggle Passive Mobs
execute if score @s[tag=admin] uhcOpt matches 111 run execute store success score UHCPassive uhcEnabled run execute if score UHCPassive uhcEnabled matches 0
execute if score UHCPassive uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.Passive set from storage hunt_zed:text Icon.Enabled
execute if score UHCPassive uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.Passive set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 111 if score UHCPassive uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Passive mob AI","color":"aqua"},{"text":" is "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 111 if score UHCPassive uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Passive mob AI","color":"aqua"},{"text":" is "},{"text":"Disabled","color":"red"}]

# 112 - Toggle Phantoms
execute if score @s[tag=admin] uhcOpt matches 112 run execute store success score UHCPhantom uhcEnabled run execute if score UHCPhantom uhcEnabled matches 0
execute if score UHCPhantom uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.Phantom set from storage hunt_zed:text Icon.Enabled
execute if score UHCPhantom uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.Phantom set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 112 if score UHCPhantom uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Phantom spawning","color":"aqua"},{"text":" is "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 112 if score UHCPhantom uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Phantom spawning","color":"aqua"},{"text":" is "},{"text":"Disabled","color":"red"}]

# 113 - Toggle Team joining
execute if score @s[tag=admin] uhcOpt matches 113 run execute store success score UHCJoining uhcEnabled run execute if score UHCJoining uhcEnabled matches 0
execute if score UHCJoining uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.Joining set from storage hunt_zed:text Icon.Enabled
execute if score UHCJoining uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.Joining set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 113 if score UHCJoining uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Team joining","color":"aqua"},{"text":" is "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 113 if score UHCJoining uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Team joining","color":"aqua"},{"text":" is "},{"text":"Disabled","color":"red"}]

# 114 - Toggle Night vision
execute if score @s[tag=admin] uhcOpt matches 114 run execute store success score UHCNightVision uhcEnabled run execute if score UHCNightVision uhcEnabled matches 0
execute if score UHCNightVision uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.NightVision set from storage hunt_zed:text Icon.Enabled
execute if score UHCNightVision uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.NightVision set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 114 if score UHCNightVision uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Night vision","color":"aqua"},{"text":" is "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 114 if score UHCNightVision uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Night vision","color":"aqua"},{"text":" is "},{"text":"Disabled","color":"red"}]

# 115 - Toggle Diamond chestplates
execute if score @s[tag=admin] uhcOpt matches 115 run execute store success score UHCDiamondChestplate uhcEnabled run execute if score UHCDiamondChestplate uhcEnabled matches 0
execute if score UHCDiamondChestplate uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.DiamondChestplate set from storage hunt_zed:text Icon.Enabled
execute if score UHCDiamondChestplate uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.DiamondChestplate set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 115 if score UHCDiamondChestplate uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Diamond chestplates","color":"aqua"},{"text":" are "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 115 if score UHCDiamondChestplate uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Diamond chestplates","color":"aqua"},{"text":" are "},{"text":"Disabled","color":"red"}]

# 116 - Toggle Friendly fire
execute if score @s[tag=admin] uhcOpt matches 116 run execute store success score UHCFriendlyFire uhcEnabled run execute if score UHCFriendlyFire uhcEnabled matches 0
execute if score UHCFriendlyFire uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.FriendlyFire set from storage hunt_zed:text Icon.Enabled
execute if score UHCFriendlyFire uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.FriendlyFire set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 116 if score UHCFriendlyFire uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Friendly Fire","color":"aqua"},{"text":" is "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 116 if score UHCFriendlyFire uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Friendly Fire","color":"aqua"},{"text":" is "},{"text":"Disabled","color":"red"}]

# 117 - Toggle Show Advancements
execute if score @s[tag=admin] uhcOpt matches 117 run execute store success score UHCShowAdvs uhcEnabled run execute if score UHCShowAdvs uhcEnabled matches 0
execute if score UHCShowAdvs uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.ShowAdvancements set from storage hunt_zed:text Icon.Enabled
execute if score UHCShowAdvs uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.ShowAdvancements set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 117 if score UHCShowAdvs uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Show Advancements","color":"aqua"},{"text":" is "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 117 if score UHCShowAdvs uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Show Advancements","color":"aqua"},{"text":" is "},{"text":"Disabled","color":"red"}]

# 118 - Toggle Conduit Power
execute if score @s[tag=admin] uhcOpt matches 118 run execute store success score UHCConduit uhcEnabled run execute if score UHCConduit uhcEnabled matches 0
execute if score UHCConduit uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.ConduitPower set from storage hunt_zed:text Icon.Enabled
execute if score UHCConduit uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.ConduitPower set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 118 if score UHCConduit uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Conduit Power","color":"aqua"},{"text":" is "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 118 if score UHCConduit uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Conduit Power","color":"aqua"},{"text":" is "},{"text":"Disabled","color":"red"}]

# HUNT ZED OPTIONS
# 201 - Toggle Random Respawn Hunters
execute if score @s[tag=admin] uhcOpt matches 201 run execute store success score rngRespawnHunt uhcEnabled run execute if score rngRespawnHunt uhcEnabled matches 0
execute if score rngRespawnHunt uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.RngRespawnHunt set from storage hunt_zed:text Icon.Enabled
execute if score rngRespawnHunt uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.RngRespawnHunt set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 201 if score rngRespawnHunt uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Random Respawn Hunters","color":"aqua"},{"text":" is "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 201 if score rngRespawnHunt uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Random Respawn Hunters","color":"aqua"},{"text":" is "},{"text":"Disabled","color":"red"}]

# 202 - Toggle Random Respawn Hunters
execute if score @s[tag=admin] uhcOpt matches 202 run execute store success score rngRespawnHelp uhcEnabled run execute if score rngRespawnHelp uhcEnabled matches 0
execute if score rngRespawnHelp uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.RngRespawnHelp set from storage hunt_zed:text Icon.Enabled
execute if score rngRespawnHelp uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.RngRespawnHelp set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 202 if score rngRespawnHelp uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Random Respawn Helpers","color":"aqua"},{"text":" is "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 202 if score rngRespawnHelp uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Random Respawn Helpers","color":"aqua"},{"text":" is "},{"text":"Disabled","color":"red"}]

# 203 - Toggle Random Respawn Hero
execute if score @s[tag=admin] uhcOpt matches 203 run execute store success score rngRespawnHero uhcEnabled run execute if score rngRespawnHero uhcEnabled matches 0
execute if score rngRespawnHero uhcEnabled matches 1 run data modify storage hunt_zed:text Icon.RngRespawnHero set from storage hunt_zed:text Icon.Enabled
execute if score rngRespawnHero uhcEnabled matches 0 run data modify storage hunt_zed:text Icon.RngRespawnHero set from storage hunt_zed:text Icon.Disabled
execute if score @s[tag=admin] uhcOpt matches 203 if score rngRespawnHero uhcEnabled matches 1 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Random Respawn Hero","color":"aqua"},{"text":" is "},{"text":"Enabled","color":"dark_green"}]
execute if score @s[tag=admin] uhcOpt matches 203 if score rngRespawnHero uhcEnabled matches 0 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Random Respawn Hero","color":"aqua"},{"text":" is "},{"text":"Disabled","color":"red"}]

# >>>> Adjust Hunters points (min=1, max=20)
# 204 - Reduce points by 1 (or cycle to max)
# 205 - Increase points by 1 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 204 run scoreboard players remove Hunters scoreDelta 1
execute if score @s[tag=admin] uhcOpt matches 205 run scoreboard players add Hunters scoreDelta 1
execute if score Hunters scoreDelta matches 21.. run scoreboard players set Hunters scoreDelta 1
execute if score Hunters scoreDelta matches ..0 run scoreboard players set Hunters scoreDelta 20
execute if score @s[tag=admin] uhcOpt matches 204..205 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Hunters points ","color":"aqua"},{"text":"set to "},{"score":{"name":"Hunters","objective":"scoreDelta"},"color":"gold"}]

# >>>> Adjust Helpers points (min=1, max=20)
# 206 - Reduce points by 1 (or cycle to max)
# 207 - Increase points by 1 (or cycle to min)
execute if score @s[tag=admin] uhcOpt matches 206 run scoreboard players remove Helpers scoreDelta 1
execute if score @s[tag=admin] uhcOpt matches 207 run scoreboard players add Helpers scoreDelta 1
execute if score Helpers scoreDelta matches 21.. run scoreboard players set Helpers scoreDelta 1
execute if score Helpers scoreDelta matches ..0 run scoreboard players set Helpers scoreDelta 20
execute if score @s[tag=admin] uhcOpt matches 206..207 run tellraw @a [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Helpers points ","color":"aqua"},{"text":"set to "},{"score":{"name":"Helpers","objective":"scoreDelta"},"color":"gold"}]




# Handle sound effects and permission errors
execute if score @s[tag=!admin] uhcOpt matches 17.. run tellraw @s [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 Sorry, only "},{"text":"UHC Admins","color":"gold"},{"text":" can perform that action"}]
execute if score @s uhcOpt matches 3..16 if score UHCJoining uhcEnabled matches 0 run tellraw @s [{"text":""},{"text":"Hunt Zed","color":"light_purple"},{"text":" \u2503 "},{"text":"Options","color":"gray"},{"text":" \u2503 "},{"text":"Sorry, teams are now locked"}]
execute if score @s uhcOpt matches ..2 at @s run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 1
execute if score @s uhcOpt matches 3..16 at @s run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 1
execute if entity @s[tag=admin] if score @s uhcOpt matches 17.. unless score @s uhcOpt matches 30 at @s run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 1

# Finally, reset the book for everyone so that the scores are updated
execute as @a run function hunt_zed:lobby/reset_book
