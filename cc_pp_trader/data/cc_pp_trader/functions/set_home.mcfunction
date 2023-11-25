###############################################################################
#
# CraftedCircuitry's Peaceful Player Trading - Set Home Function
#
###############################################################################
# Called by: cc_pp_trader/gameloop.json

# Recording Coordinates to homeX, homeY, homeZ Scoreboards
execute store result score @s ccTra_homeX run data get entity @s Pos[0] 1
execute store result score @s ccTra_homeY run data get entity @s Pos[1] 1
execute store result score @s ccTra_homeZ run data get entity @s Pos[2] 1
execute store result score @s ccTra_homeDim run data get entity @s Dimension
tag @s add ccTra_homeSet
tellraw @s {"text":"Successfully set your home at your current position!","color":"green"}

# Reset
scoreboard players set @s setHome 0

