tag @s remove suspicious_stew

execute store success score @s uhcPotion run clear @s minecraft:suspicious_stew 1
execute if score @s uhcPotion matches 1 run give @s minecraft:mushroom_stew
execute if score @s uhcPotion matches 1 run tag @s add suspicious_stew

playsound minecraft:entity.player.burp player @s[tag=suspicious_stew] ~ ~ ~ 1 0.9
tellraw @s[tag=suspicious_stew] [{"text":""},{"text":"UHC","color":"light_purple"},{"text":" \u2503 "},{"text":"Suspicious stew","color":"gray"},{"text":" \u2503 "},{"text":"Disabled","color":"red"}]
tag @s remove suspicious_stew

