#
# Desc.: Looks for a solid block to build the grave on.
# Called By: grave_stones:make_grave
# @s: player[scores={gs_deaths=1}]
#

#make grave if position is right
execute if block ~ ~ ~ #minecraft:air unless block ~ ~-1 ~ #minecraft:air unless block ~ ~-1 ~ minecraft:water unless block ~ ~-1 ~ minecraft:bubble_column run function grave_stones:make_grave
execute if block ~ ~ ~ minecraft:water unless block ~ ~-1 ~ #minecraft:air unless block ~ ~-1 ~ minecraft:water unless block ~ ~-1 ~ minecraft:bubble_column run function grave_stones:make_grave
execute if block ~ ~ ~ minecraft:bubble_column unless block ~ ~-1 ~ #minecraft:air unless block ~ ~-1 ~ minecraft:water unless block ~ ~-1 ~ minecraft:bubble_column run function grave_stones:make_grave

#reposition the grave pointer
execute if block ~ ~-1 ~ #minecraft:air positioned ~ ~-1 ~ run function grave_stones:find_pos
execute if block ~ ~-1 ~ minecraft:water positioned ~ ~-1 ~ run function grave_stones:find_pos
execute if block ~ ~-1 ~ minecraft:bubble_column positioned ~ ~-1 ~ run function grave_stones:find_pos
execute unless block ~ ~ ~ #minecraft:air unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:bubble_column positioned ~ ~1 ~ run function grave_stones:find_pos
