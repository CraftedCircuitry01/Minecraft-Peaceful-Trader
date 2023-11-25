###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - Farm Help Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
tellraw @a[scores={farmHelp=1..}] {"text":"[*] CraftedCircuitry's Peaceful Player Trading - Farming Help","color":"yellow"}
tellraw @a[scores={farmHelp=1..}] {"text":" -- Iron Golem Farm","color":"gold","extra":[{"text":" - Upon dropping the Iron Golem Spawner Item on a Barrel, the Iron Golem Spawner will continually spawn Iron Golems every 30 seconds, akin to the Iron Golems popularly used today. They will spawn 4 blocks below so suitable space is needed below the barrel for use.","color":"gray"}]}
tellraw @a[scores={farmHelp=1..}] {"text":" -- Compact Bamboo Farm","color":"gold","extra":[{"text":" - Upon dropping the Compact Bamboo Farm Item on a Barrel, the Compact Bamboo Farm will continually spawn a stack of Bamboo every 30 seconds, akin to the popularly used Zero-tick Bamboo Farms. They will spawn 1 block below the barrel.","color":"gray"}]}
tellraw @a[scores={farmHelp=1..}] {"text":" -- Mining Spawners","color":"gold","extra":[{"text":" - This Datapack has a feature akin to Silk Spawners but uses a different way to remove Spawners from the world. To remove a Spawner, simply hold a Diamond Pickaxe, stand on the Spawner and press Shift to harvest the Spawner. You may then place it like any normal block. Note that this Spawner is no longer a Spawner of the type of Mob it is previously spawning, but it is a Pig Spawner.","color":"gray"}]}
tellraw @a[scores={farmHelp=1..}] {"text":" -- Gold Farming from Spawners","color":"gold","extra":[{"text":" - Without an efficient way to farm Gold other than mining and Spawners basically having no use, this Datapack adds a way to both utilize Spawners, as well as farm Gold. Standing directly on top of a Spawner of any type of Mob will grant 1 Gold Ingot every 30 seconds.","color":"gray"}]}
## Reset
scoreboard players set @a[scores={farmHelp=1..}] farmHelp 0