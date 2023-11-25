###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradePowder Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond",Count:10b}},scores={tradePowder=1..}] run tellraw @a {"text":"[*] ","color":"yellow","extra":[{"selector":"@s"},{"text":" has traded Diamonds for Gunpowders!","color":"white"}]}
give @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:10b}},scores={tradePowder=1..}] gunpowder 64
clear @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:10b}},scores={tradePowder=1..}] diamond 10


## Reset
scoreboard players set @a[scores={tradePowder=1..}] tradePowder 0