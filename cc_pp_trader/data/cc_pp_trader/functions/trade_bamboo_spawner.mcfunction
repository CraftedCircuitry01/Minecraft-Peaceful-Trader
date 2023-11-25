###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradeIronSpawner Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_block",Count:2b}},scores={tradeBambooFarm=1..}] run tellraw @a {"text":"[*] ","color":"yellow","extra":[{"selector":"@s"},{"text":" has traded Diamonds for a Compact Bamboo Farm","color":"white"}]}
give @a[nbt={SelectedItem:{id:"minecraft:diamond_block",Count:2b}},scores={tradeBambooFarm=1..}] minecraft:green_dye{ccTra_BFActivator:1b,Enchantments:[{id:"protection",lvl:1}],display:{Name:"\"§r§e§nCompact Bamboo Farm\"",Lore:["\"§r§cDrop this on top of a Barrel \"","\"§r§c to turn the Barrel into a Compact Bamboo Farm!\"","","\"§r§eThis came from CraftedCircuitry's Peaceful Trader\"","\"§rDo not place on the ground!\"","\"§rThe Bamboo spawn 1 block below the farm block!\""]}} 1
clear @a[nbt={SelectedItem:{id:"minecraft:diamond_block",Count:2b}},scores={tradeBambooFarm=1..}] diamond_block 2

## Reset
scoreboard players set @a[scores={tradeBambooFarm=1..}] tradeBambooFarm 0