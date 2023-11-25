###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - Main Help Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

## Once called,
tellraw @a[scores={ccPTHelp=1..}] {"text":"[*] CraftedCircuitry's Peaceful Player Trading - All Commands","color":"yellow"}
tellraw @a[scores={ccPTHelp=1..}] {"text":" -- For the list of Tradable Items, type ","color":"gray","extra":[{"text":"/trigger tradeHelp","color":"gold","clickEvent":{"action":"run_command","value":"/trigger tradeHelp"}}]}
tellraw @a[scores={ccPTHelp=1..}] {"text":" -- For help on various farming methods in this Datapack, type ","color":"gray","extra":[{"text":"/trigger farmHelp","color":"gold","clickEvent":{"action":"run_command","value":"/trigger farmHelp"}}]}
tellraw @a[scores={ccPTHelp=1..}] {"text":" -- To set a Home or overwrite your Home, type ","color":"gray","extra":[{"text":"/trigger setHome","color":"gold","clickEvent":{"action":"run_command","value":"/trigger setHome"}}]}
tellraw @a[scores={ccPTHelp=1..}] {"text":" -- To go to your Home, type ","color":"gray","extra":[{"text":"/trigger goHome","color":"gold","clickEvent":{"action":"run_command","value":"/trigger goHome"}}]}
tellraw @a[scores={ccPTHelp=1..}] {"text":" -- To clear your chat, type ","color":"gray","extra":[{"text":"/trigger clearChat","color":"gold","clickEvent":{"action":"run_command","value":"/trigger clearChat"}}]}
## Reset
scoreboard players set @a[scores={ccPTHelp=1..}] ccPTHelp 0