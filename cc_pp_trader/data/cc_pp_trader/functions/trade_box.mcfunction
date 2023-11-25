###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradeBox Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond",Count:32b}},scores={tradeBox=1..}] run tellraw @a {"text":"[*] ","color":"yellow","extra":[{"selector":"@s"},{"text":" has traded Diamonds for a Shulker Box!","color":"white"}]}
give @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:32b}},scores={tradeBox=1..}] shulker_box 1
clear @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:32b}},scores={tradeBox=1..}] diamond 32


## Reset
scoreboard players set @a[scores={tradeBox=1..}] tradeBox 0