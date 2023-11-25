###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - Main Function
#
###############################################################################
# Called by: cc_pp_trader/minecraft/tags/function/tick.json

# Commands via Tick - Second - Minute
## Per Tick
### Function Calling
scoreboard players add #ccTra_gametime ccTra_gametime 1
scoreboard players add #ccTra_IGTimer ccTra_IGTimer 1
# Remove # from command below to debug the Datapack if it and the Iron Golem Spawning is working or not
#execute store result score @a ccTra_IGTimerSB run scoreboard players get #ccTra_IGTimer ccTra_IGTimer

### Trigger Enabling
scoreboard players enable @a ccPTHelp
scoreboard players enable @a farmHelp
scoreboard players enable @a clearChat
scoreboard players enable @a goHome
scoreboard players enable @a setHome
scoreboard players enable @a tradeHelp
scoreboard players enable @a tradeXP
scoreboard players enable @a tradeBeacon
scoreboard players enable @a tradeBox
scoreboard players enable @a tradeTools
scoreboard players enable @a tradeArmor
scoreboard players enable @a tradeBrewing
scoreboard players enable @a tradeEnder
scoreboard players enable @a tradeBone
scoreboard players enable @a tradePowder
scoreboard players enable @a tradeTrident
scoreboard players enable @a tradeActivator
scoreboard players enable @a tradeSlime
scoreboard players enable @a tradeIronSpawner
scoreboard players enable @a tradeBambooFarm
scoreboard players enable @a tradeGhastTear

### Special Use for Spawners - Give Player Gold when near them // Added 3-15-2020
execute if score #ccTra_IGTimer ccTra_IGTimer matches 601.. as @a at @s if entity @s if block ~ ~-1 ~ spawner run give @s gold_ingot

### Spawning of Bamboo per 30 seconds // Added 3-16-2020
execute if score #ccTra_gametime ccTra_gametime matches 61.. as @e[type=armor_stand,tag=ccTra_BFSpawn] at @s run summon minecraft:item ~ ~-1 ~ {Item:{Count:64b,id:"minecraft:bamboo"}}

### Breaking Spawners // Added 5-2-2020
execute as @a run function cc_pp_trader:break_spawner

### Iron Golem Spawning
#### Spawning of Iron Golems per 30 seconds
execute if score #ccTra_IGTimer ccTra_IGTimer matches 601.. as @e[type=armor_stand,tag=ccTra_IGSpawn] at @s run summon minecraft:iron_golem ~ ~-4 ~
execute if score #ccTra_IGTimer ccTra_IGTimer matches 601.. as @e[type=armor_stand,tag=ccTra_IGSpawn] at @s run particle minecraft:flame ~ ~ ~ 1 1 1 0.0001 50 force
execute if score #ccTra_IGTimer ccTra_IGTimer matches 601.. run scoreboard players set #ccTra_IGTimer ccTra_IGTimer 0

### Home Functions
#### Setting Home Coordinates on Player
execute as @a[scores={setHome=1..}] if entity @s run function cc_pp_trader:set_home
#### Going to Set Home Coordinates
execute as @a[scores={goHome=1..,ccTra_homeDim=1},tag=ccTra_homeSet] at @s if entity @s in minecraft:the_end run tp @s ~ ~ ~
execute as @a[scores={goHome=1..,ccTra_homeDim=0},tag=ccTra_homeSet] at @s if entity @s in minecraft:overworld run tp @s ~ ~ ~
execute as @a[scores={goHome=1..,ccTra_homeDim=-1},tag=ccTra_homeSet] at @s if entity @s in minecraft:the_nether run tp @s ~ ~ ~
execute as @a[scores={goHome=1..},tag=ccTra_homeSet] if entity @s run tag @s add ccTra_HomeReady
execute as @a[scores={goHome=1..},tag=ccTra_homeSet] at @s if entity @s run summon armor_stand ~ ~ ~ {Tags:[ccTra_HomeTP],NoGravity:1b,Small:1b,Invisible:1b,Invulnerable:1b}
execute if entity @a[scores={goHome=1..},tag=ccTra_homeSet,tag=ccTra_HomeReady] as @e[tag=ccTra_HomeTP,type=armor_stand] if entity @s run function cc_pp_trader:go_home
#### Tellraw
tellraw @a[scores={goHome=1..},tag=ccTra_homeSet,tag=ccTra_HomeReady] {"text":"Successfully teleported to your home!","color":"green"}



## Per Second
### Clear Chat // Added 7-4-2020
#### Clear Chat of Player
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={clearChat=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nYour chat has been cleared!","color":"gray"}
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={clearChat=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nYour chat has been cleared!","color":"gray"}
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={clearChat=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nYour chat has been cleared!","color":"gray"}
### Main Help
execute if score #ccTra_gametime ccTra_gametime matches 10.. if entity @a[scores={ccPTHelp=1..}] run function cc_pp_trader:main_help
execute if score #ccTra_gametime ccTra_gametime matches 30.. if entity @a[scores={ccPTHelp=1..}] run function cc_pp_trader:main_help
execute if score #ccTra_gametime ccTra_gametime matches 50.. if entity @a[scores={ccPTHelp=1..}] run function cc_pp_trader:main_help
### Main Help
execute if score #ccTra_gametime ccTra_gametime matches 10.. if entity @a[scores={farmHelp=1..}] run function cc_pp_trader:farm_help
execute if score #ccTra_gametime ccTra_gametime matches 30.. if entity @a[scores={farmHelp=1..}] run function cc_pp_trader:farm_help
execute if score #ccTra_gametime ccTra_gametime matches 50.. if entity @a[scores={farmHelp=1..}] run function cc_pp_trader:farm_help
### Lumberjack Duping
execute if score #ccTra_gametime ccTra_gametime matches 10.. run function cc_pp_trader:lumberjack_duper
execute if score #ccTra_gametime ccTra_gametime matches 30.. run function cc_pp_trader:lumberjack_duper
execute if score #ccTra_gametime ccTra_gametime matches 50.. run function cc_pp_trader:lumberjack_duper
### Iron Golem Spawner
execute if score #ccTra_gametime ccTra_gametime matches 10.. run function cc_pp_trader:irongolem_spawner
execute if score #ccTra_gametime ccTra_gametime matches 30.. run function cc_pp_trader:irongolem_spawner
execute if score #ccTra_gametime ccTra_gametime matches 50.. run function cc_pp_trader:irongolem_spawner
### Trade Help
execute if score #ccTra_gametime ccTra_gametime matches 10.. if entity @a[scores={tradeHelp=1..}] run function cc_pp_trader:trade_help
execute if score #ccTra_gametime ccTra_gametime matches 30.. if entity @a[scores={tradeHelp=1..}] run function cc_pp_trader:trade_help
execute if score #ccTra_gametime ccTra_gametime matches 50.. if entity @a[scores={tradeHelp=1..}] run function cc_pp_trader:trade_help
### Trade XP
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={tradeXP=1..}] run function cc_pp_trader:trade_xp
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={tradeXP=1..}] run function cc_pp_trader:trade_xp
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={tradeXP=1..}] run function cc_pp_trader:trade_xp
### Trade Brewing
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={tradeBrewing=1..}] run function cc_pp_trader:trade_brewing
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={tradeBrewing=1..}] run function cc_pp_trader:trade_brewing
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={tradeBrewing=1..}] run function cc_pp_trader:trade_brewing
### Trade Shulker Box
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={tradeBox=1..}] run function cc_pp_trader:trade_box
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={tradeBox=1..}] run function cc_pp_trader:trade_box
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={tradeBox=1..}] run function cc_pp_trader:trade_box
### Trade Beacon
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={tradeBeacon=1..}] run function cc_pp_trader:trade_beacon
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={tradeBeacon=1..}] run function cc_pp_trader:trade_beacon
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={tradeBeacon=1..}] run function cc_pp_trader:trade_beacon
### Trade Ender Pearl
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={tradeEnder=1..}] run function cc_pp_trader:trade_ender
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={tradeEnder=1..}] run function cc_pp_trader:trade_ender
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={tradeEnder=1..}] run function cc_pp_trader:trade_ender
### Trade Tools
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={tradeTools=1..}] run function cc_pp_trader:trade_tools
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={tradeTools=1..}] run function cc_pp_trader:trade_tools
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={tradeTools=1..}] run function cc_pp_trader:trade_tools
### Trade Armor
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={tradeArmor=1..}] run function cc_pp_trader:trade_armor
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={tradeArmor=1..}] run function cc_pp_trader:trade_armor
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={tradeArmor=1..}] run function cc_pp_trader:trade_armor
### Trade Bones
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={tradeBone=1..}] run function cc_pp_trader:trade_bone
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={tradeBone=1..}] run function cc_pp_trader:trade_bone
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={tradeBone=1..}] run function cc_pp_trader:trade_bone
### Trade Gunpowder
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={tradePowder=1..}] run function cc_pp_trader:trade_gunpowder
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={tradePowder=1..}] run function cc_pp_trader:trade_gunpowder
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={tradePowder=1..}] run function cc_pp_trader:trade_gunpowder
### Trade Trident
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={tradeTrident=1..}] run function cc_pp_trader:trade_trident
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={tradeTrident=1..}] run function cc_pp_trader:trade_trident
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={tradeTrident=1..}] run function cc_pp_trader:trade_trident
### Trade Activator
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={tradeActivator=1..}] run function cc_pp_trader:trade_activator
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={tradeActivator=1..}] run function cc_pp_trader:trade_activator
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={tradeActivator=1..}] run function cc_pp_trader:trade_activator
### Trade Slime
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={tradeSlime=1..}] run function cc_pp_trader:trade_slimeball
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={tradeSlime=1..}] run function cc_pp_trader:trade_slimeball
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={tradeSlime=1..}] run function cc_pp_trader:trade_slimeball
### Trade Iron Spawner
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={tradeIronSpawner=1..}] run function cc_pp_trader:trade_iron_spawner
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={tradeIronSpawner=1..}] run function cc_pp_trader:trade_iron_spawner
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={tradeIronSpawner=1..}] run function cc_pp_trader:trade_iron_spawner
### Trade Bamboo Spawner
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={tradeBambooFarm=1..}] run function cc_pp_trader:trade_bamboo_spawner
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={tradeBambooFarm=1..}] run function cc_pp_trader:trade_bamboo_spawner
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={tradeBambooFarm=1..}] run function cc_pp_trader:trade_bamboo_spawner
### Bamboo Farm Handler
execute if score #ccTra_gametime ccTra_gametime matches 10.. run function cc_pp_trader:bamboo_spawner
execute if score #ccTra_gametime ccTra_gametime matches 30.. run function cc_pp_trader:bamboo_spawner
execute if score #ccTra_gametime ccTra_gametime matches 50.. run function cc_pp_trader:bamboo_spawner
### Trade Ghast Tears
execute if score #ccTra_gametime ccTra_gametime matches 10.. as @a[scores={tradeGhastTear=1..}] run function cc_pp_trader:trade_ghast_tear
execute if score #ccTra_gametime ccTra_gametime matches 30.. as @a[scores={tradeGhastTear=1..}] run function cc_pp_trader:trade_ghast_tear
execute if score #ccTra_gametime ccTra_gametime matches 50.. as @a[scores={tradeGhastTear=1..}] run function cc_pp_trader:trade_ghast_tear

## Per Second Resetting
scoreboard players set @a[scores={clearChat=1..}] clearChat 0

## Per Tick Resetting
execute if score #ccTra_gametime ccTra_gametime matches 61.. run scoreboard players set #ccTra_gametime ccTra_gametime 0
