###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradeTools Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond",Count:64b}},scores={tradeTools=1..}] run tellraw @a {"text":"[*] ","color":"yellow","extra":[{"selector":"@s"},{"text":" has traded Diamonds for Unbreakable Tools!","color":"white"}]}
give @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:64b}},scores={tradeTools=1..}] minecraft:diamond_axe{ccTra_axe:1b,Enchantments:[{id:"sharpness",lvl:6}],display:{Name:"\"§r§e§nUnbreakable Hatchet\"",Lore:["\"§r§cOne of the Unbreakable Tools\"","","\"§r§eThis came from CraftedCircuitry's Peaceful Trader\""]},Unbreakable:1b,AttributeModifiers:[{AttributeName:generic.attackDamage,Name:generic.attackDamage,Amount:11.75,Operation:0,UUIDLeast:1,UUIDMost:1,Slot:mainhand},{AttributeName:generic.attackSpeed,Name:generic.attackSpeed,Amount:1024,Operation:0,UUIDLeast:1,UUIDMost:1,Slot:mainhand}]} 1
give @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:64b}},scores={tradeTools=1..}] minecraft:diamond_pickaxe{ccTra_pick:1b,Enchantments:[{id:"efficiency",lvl:5}],display:{Name:"\"§r§e§nUnbreakable Pickaxe\"",Lore:["\"§r§cOne of the Unbreakable Tools\"","","\"§r§eThis came from CraftedCircuitry's Peaceful Trader\""]},Unbreakable:1b} 1
give @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:64b}},scores={tradeTools=1..}] minecraft:diamond_shovel{ccTra_pick:1b,Enchantments:[{id:"efficiency",lvl:5}],display:{Name:"\"§r§e§nUnbreakable Spade\"",Lore:["\"§r§cOne of the Unbreakable Tools\"","","\"§r§eThis came from CraftedCircuitry's Peaceful Trader\""]},Unbreakable:1b} 1
clear @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:64b}},scores={tradeTools=1..}] diamond 64


## Reset
scoreboard players set @a[scores={tradeTools=1..}] tradeTools 0