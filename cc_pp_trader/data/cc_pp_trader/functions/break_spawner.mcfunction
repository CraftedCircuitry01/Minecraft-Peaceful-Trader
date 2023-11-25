###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - breakSpawner Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
#### Check for Sneaking on Mob Spawner while holding a Diamond or better Pickaxe
execute if entity @s[scores={ccTra_sneakCheck=1..},nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] at @s if block ~ ~-1 ~ spawner run scoreboard players set @s ccTra_breakSpawn 1
#execute if entity @s[scores={ccTra_sneakCheck=1..},nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] at @s if block ~ ~-1 ~ spawner run scoreboard players set @s ccTra_breakSpawn 1 # for netherite pickaxe

#### Break Spawner
execute if entity @s[scores={ccTra_breakSpawn=1..}] at @s run setblock ~ ~-1 ~ air
execute if entity @s[scores={ccTra_breakSpawn=1..}] at @s run give @s spawner{display:{Name:"\"§r§e§nBroken Spawner\"",Lore:["\"§r§cA broken spawner from the world\"","","\"§r§eThis came from CraftedCircuitry's Peaceful Trader\""]}} 1
execute if entity @s[scores={ccTra_breakSpawn=1..}] at @s run xp add @s 5 points

## Reset
scoreboard players set @a[scores={ccTra_sneakCheck=1..}] ccTra_sneakCheck 0
scoreboard players set @a[scores={ccTra_breakSpawn=1..}] ccTra_breakSpawn 0