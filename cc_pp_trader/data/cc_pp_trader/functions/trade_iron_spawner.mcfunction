###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradeIronSpawner Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_block",Count:10b}},scores={tradeIronSpawner=1..}] run tellraw @a {"text":"[*] ","color":"yellow","extra":[{"selector":"@s"},{"text":" has traded Diamonds for an Iron Golem Spawner!","color":"white"}]}
give @a[nbt={SelectedItem:{id:"minecraft:diamond_block",Count:10b}},scores={tradeIronSpawner=1..}] minecraft:iron_block{ccTra_IGActivator:1b,Enchantments:[{id:"protection",lvl:1}],display:{Name:"\"§r§e§nIron Golem Spawner\"",Lore:["\"§r§cDrop this on top of a Barrel \"","\"§r§c to turn the Barrel into an Iron Golem Spawner!\"","","\"§r§eThis came from CraftedCircuitry's Peaceful Trader\"","\"§rDo not place on the ground!\"","\"§rThe Iron Golems spawn below the spawner!\"","\"§rMake sure to have a lot of space below it!\""]}} 1
clear @a[nbt={SelectedItem:{id:"minecraft:diamond_block",Count:10b}},scores={tradeIronSpawner=1..}] diamond_block 10

## Reset
scoreboard players set @a[scores={tradeIronSpawner=1..}] tradeIronSpawner 0