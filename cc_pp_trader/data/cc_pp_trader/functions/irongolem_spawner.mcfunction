###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - Iron Golem Spawner Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json


### Starting the Duper
# Finding the Iron Spawner Item
execute as @e[type=item,nbt={Item:{tag:{ccTra_IGActivator:1b}}}] at @s if entity @s if block ~ ~-1 ~ minecraft:barrel run tag @s add ccTra_IGActivator
# Summoning the Armor Stand to handle the Functions
execute as @e[type=item,tag=ccTra_IGActivator] at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~-1 ~ {Tags:[ccTra_IGSpawn],NoGravity:1b,Small:1b,CustomName:"{\"text\":\"Iron Golem Spawner\",\"color\":\"yellow\",\"underlined\":true}",CustomNameVisible:1b}
# Editing the Name and Items of Spawner Barrel
execute as @e[type=armor_stand,tag=ccTra_IGSpawn] at @s run data merge block ~ ~ ~ {CustomName:"{\"text\":\"§r§cBreak this block to destroy the spawner\"}",Lock:"mfanmigeniena",Items:[{id:"minecraft:iron_block",Slot:0,Count:1,tag:{ccTra_IGActivator:1b,Enchantments:[{id:"protection",lvl:1}],display:{Name:"\"§r§e§nIron Golem Spawner\"",Lore:["\"§r§cDrop this on top of a Barrel \"","\"§r§c to turn the Barrel into an Iron Golem Spawner!\"","","\"§r§eThis came from CraftedCircuitry's Peaceful Trader\"","\"§rDo not place on the ground!\"","\"§rThe Iron Golems spawn below the spawner!\"","\"§rMake sure to have a lot of space below it!\""]}}}]}
# Kill the floating Iron Spawner Item
execute as @e[type=item,tag=ccTra_IGActivator] at @s run kill @s

### Kill the Entity if Duper Barrel is destroyed
execute as @e[type=minecraft:armor_stand,tag=ccTra_IGSpawn] at @s unless block ~ ~ ~ minecraft:barrel run kill @s

