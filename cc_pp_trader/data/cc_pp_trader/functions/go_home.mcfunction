###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - Go Home Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

# Recording XYZ to Armor Stands
execute store result entity @s Pos[0] double 1 run scoreboard players get @p[tag=ccTra_homeSet,tag=ccTra_HomeReady] ccTra_homeX
execute store result entity @s Pos[1] double 1 run scoreboard players get @p[tag=ccTra_homeSet,tag=ccTra_HomeReady] ccTra_homeY
execute store result entity @s Pos[2] double 1 run scoreboard players get @p[tag=ccTra_homeSet,tag=ccTra_HomeReady] ccTra_homeZ
# Teleport Player to position of Armor Stand
tp @a[scores={goHome=1..},tag=ccTra_homeSet,tag=ccTra_HomeReady] @s
# Reset
kill @s
tag @a[scores={goHome=1..}] remove ccTra_HomeReady
scoreboard players set @a[scores={goHome=1..}] goHome 0


