#
# Update the Game Details sidebar with all the relevant information
#

execute store result score Players uhcLobby run execute if entity @a[team=!spectate]
execute store result score Hero uhcLobby run execute if entity @a[team=hero]
execute store result score Hunters uhcLobby run execute if entity @a[team=hunters]
execute store result score Helpers uhcLobby run execute if entity @a[team=helpers]
