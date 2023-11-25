###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradeActivator Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_block",Count:64b}},scores={tradeActivator=1..}] run tellraw @a {"text":"[*] ","color":"yellow","extra":[{"selector":"@s"},{"text":" has traded Diamonds for the Lumberjack's Secret!","color":"white"}]}
give @a[nbt={SelectedItem:{id:"minecraft:diamond_block",Count:64b}},scores={tradeActivator=1..}] minecraft:golden_axe{ccTra_LDActivator:1b,Enchantments:[{id:"protection",lvl:1}],display:{Name:"\"§r§e§nThe Lumberjack's Secret\"",Lore:["\"§r§cDrop this on top of a Barrel and see what might happen!\"","","\"§r§eThis came from CraftedCircuitry's Peaceful Trader\""]},Unbreakable:1b} 1
clear @a[nbt={SelectedItem:{id:"minecraft:diamond_block",Count:64b}},scores={tradeActivator=1..}] diamond_block 64

## Reset
scoreboard players set @a[scores={tradeActivator=1..}] tradeActivator 0