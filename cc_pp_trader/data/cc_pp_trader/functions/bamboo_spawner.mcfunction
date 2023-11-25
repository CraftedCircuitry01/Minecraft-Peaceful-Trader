###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - Bamboo Spawner Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json


### Starting the Duper
# Finding the Green Dye Item
execute as @e[type=item,nbt={Item:{tag:{ccTra_BFActivator:1b}}}] at @s if entity @s if block ~ ~-1 ~ minecraft:barrel run tag @s add ccTra_BFActivator
# Summoning the Armor Stand to handle the Functions
execute as @e[type=item,tag=ccTra_BFActivator] at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~-1 ~ {Tags:[ccTra_BFSpawn],NoGravity:1b,Small:1b,CustomName:"{\"text\":\"Compact Bamboo Farm\",\"color\":\"yellow\",\"underlined\":true}",CustomNameVisible:1b}
# Editing the Name and Items of Spawner Barrel
execute as @e[type=armor_stand,tag=ccTra_BFSpawn] at @s run data merge block ~ ~ ~ {CustomName:"{\"text\":\"§r§cBreak this block to destroy the compact farm!\"}",Lock:"mfanmigeniena",Items:[{id:"minecraft:green_dye",Slot:0,Count:1,tag:{ccTra_BFActivator:1b,Enchantments:[{id:"protection",lvl:1}],display:{Name:"\"§r§e§nCompact Bamboo Farm\"",Lore:["\"§r§cDrop this on top of a Barrel \"","\"§r§c to turn the Barrel into a Compact Bamboo Farm!\"","","\"§r§eThis came from CraftedCircuitry's Peaceful Trader\"","\"§rDo not place on the ground!\"","\"§rThe Bamboo spawn 1 block below the farm block!\""]}}}]}
# Kill the floating Iron Spawner Item
execute as @e[type=item,tag=ccTra_BFActivator] at @s run kill @s

### Kill the Entity if Duper Barrel is destroyed
execute as @e[type=minecraft:armor_stand,tag=ccTra_BFSpawn] at @s unless block ~ ~ ~ minecraft:barrel run kill @s

