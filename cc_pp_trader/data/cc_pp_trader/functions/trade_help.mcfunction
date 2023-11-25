###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - tradeHelp Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
tellraw @a[scores={tradeHelp=1..}] {"text":"[*] CraftedCircuitry's Peaceful Player Trading - Trade In Command List","color":"yellow"}
tellraw @a[scores={tradeHelp=1..}] {"text":" For the Command List, type ","color":"gray","extra":[{"text":"/trigger tradeHelp","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeHelp"}}]}
tellraw @a[scores={tradeHelp=1..}] {"text":"[**] To start Trading In, you will need the Correct Amount of Diamonds and have it SELECTED in your Hotbar, example: if 5 is needed, you need 5 exactly in your Selected Hand, not 64 or any other number \n\n","color":"white"}
tellraw @a[scores={tradeHelp=1..}] {"text":" Trading in 5 Diamonds for 30 Levels of Experience ==","color":"gray","extra":[{"text":"/trigger tradeXP","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeXP"}}]}
tellraw @a[scores={tradeHelp=1..}] {"text":" Trading in 5 Diamonds for 64 Bones ==","color":"gray","extra":[{"text":"/trigger tradeBone","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeBone"}}]}
tellraw @a[scores={tradeHelp=1..}] {"text":" Trading in 5 Diamonds for 64 Slimeballs ==","color":"gray","extra":[{"text":"/trigger tradeSlime","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeSlime"}}]}
tellraw @a[scores={tradeHelp=1..}] {"text":" Trading in 10 Diamonds for 64 Gunpowder ==","color":"gray","extra":[{"text":"/trigger tradePowder","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradePowder"}}]}
tellraw @a[scores={tradeHelp=1..}] {"text":" Trading in 10 Diamonds for 64 Ghast Tears ==","color":"gray","extra":[{"text":"/trigger tradeGhastTear","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeGhastTear"}}]}
tellraw @a[scores={tradeHelp=1..}] {"text":" Trading in 10 Diamonds for 32 Blaze Rods ==","color":"gray","extra":[{"text":"/trigger tradeBrewing","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeBrewing"}}]}
tellraw @a[scores={tradeHelp=1..}] {"text":" Trading in 10 Diamonds for 16 Ender Pearls ==","color":"gray","extra":[{"text":"/trigger tradeEnder","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeEnder"}}]}
tellraw @a[scores={tradeHelp=1..}] {"text":" Trading in 32 Diamonds for a Shulker Box ==","color":"gray","extra":[{"text":"/trigger tradeBox","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeBox"}}]}
tellraw @a[scores={tradeHelp=1..}] {"text":" Trading in 64 Diamonds for a Beacon ==","color":"gray","extra":[{"text":"/trigger tradeBeacon","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeBeacon"}}]}
tellraw @a[scores={tradeHelp=1..}] {"text":" Trading in 64 Diamonds for a Trident ==","color":"gray","extra":[{"text":"/trigger tradeTrident","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeTrident"}}]}
tellraw @a[scores={tradeHelp=1..}] {"text":" Trading in 64 Diamonds for Unbreakable Tools ==","color":"gray","extra":[{"text":"/trigger tradeTools","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeTools"}}]}
tellraw @a[scores={tradeHelp=1..}] {"text":" Trading in 64 Diamonds for Unbreakable Armor ==","color":"gray","extra":[{"text":"/trigger tradeArmor","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeArmor"}}]}
tellraw @a[scores={tradeHelp=1..}] {"text":" Trading in 2 Diamond Blocks for a Compact Bamboo Farm ==","color":"gray","extra":[{"text":"/trigger tradeBambooFarm","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeBambooFarm"}}]}
tellraw @a[scores={tradeHelp=1..}] {"text":" Trading in 10 Diamond Blocks for an Iron Golem Spawner ==","color":"gray","extra":[{"text":"/trigger tradeIronSpawner","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeIronSpawner"}}]}
tellraw @a[scores={tradeHelp=1..}] {"text":" Trading in 64 Diamond Blocks for the Lumberjack's Secret ==","color":"gray","extra":[{"text":"/trigger tradeActivator","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeActivator"}}]}


## Reset
scoreboard players set @a[scores={tradeHelp=1..}] tradeHelp 0