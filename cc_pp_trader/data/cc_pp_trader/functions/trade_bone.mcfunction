###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradeBone Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond",Count:5b}},scores={tradeBone=1..}] run tellraw @a {"text":"[*] ","color":"yellow","extra":[{"selector":"@s"},{"text":" has traded Diamonds for Bones!","color":"white"}]}
give @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:5b}},scores={tradeBone=1..}] bone 64
clear @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:5b}},scores={tradeBone=1..}] diamond 5


## Reset
scoreboard players set @a[scores={tradeBone=1..}] tradeBone 0