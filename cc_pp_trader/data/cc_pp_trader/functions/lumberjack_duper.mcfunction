###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - Lumberjack Duping Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json


### Starting the Duper
# Finding the Lumberjack Item
execute as @e[type=item,nbt={Item:{tag:{ccTra_LDActivator:1b}}}] at @s if entity @s if block ~ ~-1 ~ minecraft:barrel run tag @s add ccTra_LDOK
# Summoning the Armor Stand to handle the Functions
execute as @e[type=item,tag=ccTra_LDOK] at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:[ccTra_LDuper],NoGravity:1b,Small:1b,CustomName:"{\"text\":\"Lumberjack's Secret\",\"color\":\"yellow\",\"underlined\":true}",CustomNameVisible:1b}
# Editing the Name of the Duper Barrel
execute as @e[type=armor_stand,tag=ccTra_LDuper] at @s run data merge block ~ ~-1 ~ {CustomName:"{\"text\":\"§r§cPlace items here and break the block above!\"}"}
# Giving back the Lumberjack Item to nearest player
execute as @e[type=item,tag=ccTra_LDOK] at @s run give @p minecraft:golden_axe{ccTra_LDActivator:1b,Enchantments:[{id:"protection",lvl:1}],display:{Name:"\"§r§e§nThe Lumberjack's Secret\"",Lore:["\"§r§cDrop this on top of a Barrel and see what might happen!\"","","\"§r§eThis came from CraftedCircuitry's Peaceful Trader\""]},Unbreakable:1b} 1
# Kill the floating Lumberjack Item
execute as @e[type=item,tag=ccTra_LDOK] at @s run kill @s

### Main Duplication 
execute as @e[type=minecraft:armor_stand,tag=ccTra_LDuper] at @s if block ~ ~-0.5 ~ minecraft:barrel run clone ~ ~-1 ~ ~ ~-1 ~ ~ ~ ~ replace

### Kill the Entity if Duper Barrel is destroyed
execute as @e[type=minecraft:armor_stand,tag=ccTra_LDuper] at @s unless block ~ ~ ~ minecraft:barrel run kill @s
