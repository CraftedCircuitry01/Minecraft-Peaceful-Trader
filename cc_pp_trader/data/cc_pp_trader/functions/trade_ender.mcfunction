###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradeEnder Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond",Count:10b}},scores={tradeEnder=1..}] run tellraw @a {"text":"[*] ","color":"yellow","extra":[{"selector":"@s"},{"text":" has traded Diamonds for Ender Pearls!","color":"white"}]}
give @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:10b}},scores={tradeEnder=1..}] ender_pearl 16
clear @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:10b}},scores={tradeEnder=1..}] diamond 10


## Reset
scoreboard players set @a[scores={tradeEnder=1..}] tradeEnder 0