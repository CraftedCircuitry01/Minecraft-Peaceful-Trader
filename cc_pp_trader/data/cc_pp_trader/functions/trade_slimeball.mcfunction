###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradeSlime Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond",Count:5b}},scores={tradeSlime=1..}] run tellraw @a {"text":"[*] ","color":"yellow","extra":[{"selector":"@s"},{"text":" has traded Diamonds for Slimeballs!","color":"white"}]}
give @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:5b}},scores={tradeSlime=1..}] slime_ball 64
clear @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:5b}},scores={tradeSlime=1..}] diamond 5


## Reset
scoreboard players set @a[scores={tradeSlime=1..}] tradeSlime 0