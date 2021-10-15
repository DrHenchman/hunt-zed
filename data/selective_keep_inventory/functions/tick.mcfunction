# Detect Death and add the Tag
tag @a[scores={skI.handle_death=1},tag=!keepInventory] add skI.drop_inv
scoreboard players set @a[scores={skI.handle_death=1..}] skI.handle_death 0

# Summon the 2 Minecarts at head-height
execute at @a[tag=skI.drop_inv] run summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["skI.Minecart_1"]}
execute at @a[tag=skI.drop_inv] run summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["skI.Minecart_2"]}

# summon placeholder item, will despawn in the next tick
execute as @p[tag=skI.drop_inv] run summon minecraft:item 0 0 0 {Item:{id:"minecraft:stone",Count:1b},Age:5999s}

# copy items
execute as @a[tag=skI.drop_inv] at @s run function selective_keep_inventory:copy_items

# Kill Minecarts
kill @e[type=chest_minecart,tag=skI.Minecart_1]
kill @e[type=chest_minecart,tag=skI.Minecart_2]

# clear players Inventory
clear @a[tag=skI.drop_inv]

# remove tag
tag @a[tag=skI.drop_inv] remove skI.drop_inv

# Call function for next tick
# Only runs if UHC is currently active
execute if score UHC uhcState matches 4 run schedule function selective_keep_inventory:tick 1t
