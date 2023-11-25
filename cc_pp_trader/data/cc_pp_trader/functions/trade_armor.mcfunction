###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradeArmor Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond",Count:64b}},scores={tradeArmor=1..}] run tellraw @a {"text":"[*] ","color":"yellow","extra":[{"selector":"@s"},{"text":" has traded Diamonds for Unbreakable Armor!","color":"white"}]}
give @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:64b}},scores={tradeArmor=1..}] minecraft:golden_helmet{ccTra_helmet:1b,Enchantments:[{id:"fire_protection",lvl:5},{id:"blast_protection",lvl:5},{id:"projectile_protection",lvl:5},{id:"respiration",lvl:3},{id:"aqua_affinity",lvl:1}],display:{Name:"\"§r§e§nGlittering Crown\"",Lore:["\"§r§cOne of the Unbreakable Armors\"","","\"§r§eThis came from CraftedCircuitry's Peaceful Trader\""]},Unbreakable:1b,AttributeModifiers:[{AttributeName:generic.armor,Name:generic.armor,Amount:10,Operation:0,UUIDLeast:1,UUIDMost:2,Slot:head}]} 1
give @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:64b}},scores={tradeArmor=1..}] minecraft:golden_boots{ccTra_helmet:1b,Enchantments:[{id:"fire_protection",lvl:5},{id:"blast_protection",lvl:5},{id:"projectile_protection",lvl:5},{id:"feather_falling",lvl:10},{id:"depth_strider",lvl:5}],display:{Name:"\"§r§e§nCrowning Flippers\"",Lore:["\"§r§cOne of the Unbreakable Armors\"","","\"§r§eThis came from CraftedCircuitry's Peaceful Trader\""]},Unbreakable:1b,AttributeModifiers:[{AttributeName:generic.armor,Name:generic.armor,Amount:10,Operation:0,UUIDLeast:1,UUIDMost:4,Slot:feet},{AttributeName:generic.movementSpeed,Name:generic.movementSpeed,Amount:0.08,Operation:0,UUIDLeast:1,UUIDMost:4,Slot:feet}]} 1
clear @a[nbt={SelectedItem:{id:"minecraft:diamond",Count:64b}},scores={tradeArmor=1..}] diamond 64

## Reset
scoreboard players set @a[scores={tradeArmor=1..}] tradeArmor 0