# Detect Death and add the Tag# copy items to placeholder and then to chest, in order to get rid of the Slot tag.

# Hotbar, off-hand and armor
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:-106b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_1,limit=1,sort=nearest] Items[{Slot:0b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:100b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_1,limit=1,sort=nearest] Items[{Slot:1b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:101b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_1,limit=1,sort=nearest] Items[{Slot:2b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:102b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_1,limit=1,sort=nearest] Items[{Slot:3b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:103b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_1,limit=1,sort=nearest] Items[{Slot:4b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:0b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_1,limit=1,sort=nearest] Items[{Slot:5b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:1b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_1,limit=1,sort=nearest] Items[{Slot:6b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:2b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_1,limit=1,sort=nearest] Items[{Slot:7b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:3b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_1,limit=1,sort=nearest] Items[{Slot:8b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:4b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_1,limit=1,sort=nearest] Items[{Slot:9b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:5b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_1,limit=1,sort=nearest] Items[{Slot:10b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:6b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_1,limit=1,sort=nearest] Items[{Slot:11b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:7b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_1,limit=1,sort=nearest] Items[{Slot:12b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:8b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_1,limit=1,sort=nearest] Items[{Slot:13b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
# Inventory (top 3 rows)
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:9b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:0b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:10b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:1b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:11b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:2b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:12b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:3b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:13b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:4b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:14b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:5b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:15b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:6b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:16b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:7b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:17b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:8b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:18b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:9b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:19b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:10b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:20b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:11b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:21b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:12b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:22b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:13b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:23b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:14b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:24b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:15b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:25b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:16b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:26b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:17b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:27b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:18b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:28b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:19b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:29b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:20b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:30b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:21b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:31b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:22b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:32b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:23b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:33b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:24b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:34b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:25b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item
execute store success score itemdetect skI.CopyInv run data modify entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item set from entity @p Inventory[{Slot:35b}]
execute if score itemdetect skI.CopyInv matches 1 run data modify entity @e[type=chest_minecart,tag=skI.Minecart_2,limit=1,sort=nearest] Items[{Slot:26b}] merge from entity @e[x=0,y=0,z=0,distance=..1,type=item,limit=1,sort=nearest] Item