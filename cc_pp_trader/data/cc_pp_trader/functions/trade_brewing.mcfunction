###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradeBrewing Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond",Count:10b}},scores={tradeBrewing=1..}] run tellraw @a {"text":"[*] ","color":"yellow","extra":[{"selector":"@s"},{"text":" has traded Diamonds for the Main Brewing Material, Blaze Rods!","color":"white"}]}
give @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:10b}},scores={tradeBrewing=1..}] blaze_rod 32
clear @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:10b}},scores={tradeBrewing=1..}] diamond 10


## Reset
scoreboard players set @a[scores={tradeBrewing=1..}] tradeBrewing 0