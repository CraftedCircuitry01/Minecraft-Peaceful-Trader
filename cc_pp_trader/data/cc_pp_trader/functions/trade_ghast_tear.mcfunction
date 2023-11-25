###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradeGhastTear Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond",Count:10b}},scores={tradeGhastTear=1..}] run tellraw @a {"text":"[*] ","color":"yellow","extra":[{"selector":"@s"},{"text":" has traded Diamonds for Ghast Tears!","color":"white"}]}
give @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:10b}},scores={tradeGhastTear=1..}] ghast_tear 64
clear @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:10b}},scores={tradeGhastTear=1..}] diamond 10


## Reset
scoreboard players set @a[scores={tradeGhastTear=1..}] tradeGhastTear 0