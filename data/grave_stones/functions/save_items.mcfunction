#
# Desc.: Teleports all dropped items one block over the grave storage.
# Called By: grave_stones:make_grave
# @s: player[scores={gs_deaths=1}]
#

#tag all dropped items
tag @e[type=item,distance=..6,scores={gs_itemAge=0..1}] add gs_graveItem

#stop movement of all grave items and teleport them to the storage
execute as @e[tag=gs_graveItem] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
tp @e[tag=gs_graveItem,distance=..5] ~ -2 ~
