###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradeTrident Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond",Count:64b}},scores={tradeTrident=1..}] run tellraw @a {"text":"[*] ","color":"yellow","extra":[{"selector":"@s"},{"text":" has traded Diamonds for Tridents!","color":"white"}]}
give @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:64b}},scores={tradeTrident=1..}] trident 1
clear @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:64b}},scores={tradeTrident=1..}] diamond 64


## Reset
scoreboard players set @a[scores={tradeTrident=1..}] tradeTrident 0