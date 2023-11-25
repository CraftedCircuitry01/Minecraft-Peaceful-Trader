###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradeXP Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond",Count:5b}},scores={tradeXP=1..}] run tellraw @a {"text":"[*] ","color":"yellow","extra":[{"selector":"@s"},{"text":" has traded Diamonds for Experience!","color":"white"}]}
xp add @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:5b}},scores={tradeXP=1..}] 30 levels
clear @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:5b}},scores={tradeXP=1..}] diamond 5


## Reset
scoreboard players set @a[scores={tradeXP=1..}] tradeXP 0