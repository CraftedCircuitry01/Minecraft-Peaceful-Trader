###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - Initializing Function
#
###############################################################################
# Called by: cc_pp_trader/minecraft/tags/function/load.json

# Scoreboard Objectives
scoreboard objectives add ccTra_gametime dummy
scoreboard objectives add ccTra_IGTimer dummy

## Debug Scoreboard
scoreboard objectives add ccTra_IGTimerSB dummy

## Home Coordinates Scoreboards
scoreboard objectives add ccTra_homeX dummy
scoreboard objectives add ccTra_homeY dummy
scoreboard objectives add ccTra_homeZ dummy
scoreboard objectives add ccTra_homeDim dummy

## Scoreboard Objectives for Spawner Breaking
scoreboard objectives add ccTra_sneakCheck minecraft.custom:minecraft.sneak_time
scoreboard objectives add ccTra_breakSpawn dummy

## Scoreboard Trigger for Help Commands
scoreboard objectives add ccPTHelp trigger
scoreboard objectives add farmHelp trigger
scoreboard objectives add tradeHelp trigger
scoreboard objectives add clearChat trigger

## Scoreboard Trigger for Homes
scoreboard objectives add goHome trigger
scoreboard objectives add setHome trigger

## Scoreboard Trigger for Trading
scoreboard objectives add tradeBeacon trigger
scoreboard objectives add tradeXP trigger
scoreboard objectives add tradeBox trigger
scoreboard objectives add tradeTools trigger
scoreboard objectives add tradeArmor trigger
scoreboard objectives add tradeBrewing trigger
scoreboard objectives add tradeEnder trigger
scoreboard objectives add tradeBone trigger
scoreboard objectives add tradePowder trigger
scoreboard objectives add tradeTrident trigger
scoreboard objectives add tradeActivator trigger
scoreboard objectives add tradeSlime trigger
scoreboard objectives add tradeIronSpawner trigger
scoreboard objectives add tradeBambooFarm trigger
scoreboard objectives add tradeGhastTear trigger

# Teams

# Scoreboard Set Certain Values
scoreboard players set #ccTra_gametime ccTra_gametime 0
scoreboard players set #ccTra_IGTimer ccTra_IGTimer 0

# Tellraw for Player
tellraw @a {"text":"[*] CraftedCircuitry's Peaceful Player Trading - Status : Loaded!","color":"yellow"}
tellraw @a {"text":" -- For help on this datapack's commands, type ","color":"gray","extra":[{"text":"/trigger ccPTHelp","color":"gold","clickEvent":{"action":"run_command","value":"/trigger ccPTHelp"}}]}
