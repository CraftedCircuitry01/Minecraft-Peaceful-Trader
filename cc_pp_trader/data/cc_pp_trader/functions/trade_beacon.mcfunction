###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradeBeacon Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond",Count:64b}},scores={tradeBeacon=1..}] run tellraw @a {"text":"[*] ","color":"yellow","extra":[{"selector":"@s"},{"text":" has traded Diamonds for a Beacon!","color":"white"}]}
give @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:64b}},scores={tradeBeacon=1..}] beacon 1
clear @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:64b}},scores={tradeBeacon=1..}] diamond 64


## Reset
scoreboard players set @a[scores={tradeBeacon=1..}] tradeBeacon 0