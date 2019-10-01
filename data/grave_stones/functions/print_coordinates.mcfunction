#> Tells the player the coordinates of his grave.
# Called By: grave_stones:make_grave <@e[tag=gs_graveMarker,tag=gs_deathPoint,nbt={Age:0}]>

#save graves coordinates in scoreboards
execute store result score @s gs_xPos run data get entity @s Pos[0] 1
execute store result score @s gs_yPos run data get entity @s Pos[1] 1
execute store result score @s gs_zPos run data get entity @s Pos[2] 1

#print message
execute if entity @s[nbt={Dimension:0}] run tellraw @p[scores={gs_deaths=1}] [{"text":"You died at X:","color":"yellow"},{"score":{"name":"@s","objective":"gs_xPos"},"color":"yellow"},{"text":" Y:","color":"yellow"},{"score":{"name":"@s","objective":"gs_yPos"},"color":"yellow"},{"text":" Z:","color":"yellow"},{"score":{"name":"@s","objective":"gs_zPos"},"color":"yellow"},{"text":"\nIn the Overworld","color":"yellow"}]
execute if entity @s[nbt={Dimension:-1}] run tellraw @p[scores={gs_deaths=1}] [{"text":"You died at X:","color":"yellow"},{"score":{"name":"@s","objective":"gs_xPos"},"color":"yellow"},{"text":" Y:","color":"yellow"},{"score":{"name":"@s","objective":"gs_yPos"},"color":"yellow"},{"text":" Z:","color":"yellow"},{"score":{"name":"@s","objective":"gs_zPos"},"color":"yellow"},{"text":"\nIn the Nether","color":"yellow"}]
execute if entity @s[nbt={Dimension:1}] run tellraw @p[scores={gs_deaths=1}] [{"text":"You died at X:","color":"yellow"},{"score":{"name":"@s","objective":"gs_xPos"},"color":"yellow"},{"text":" Y:","color":"yellow"},{"score":{"name":"@s","objective":"gs_yPos"},"color":"yellow"},{"text":" Z:","color":"yellow"},{"score":{"name":"@s","objective":"gs_zPos"},"color":"yellow"},{"text":"\nIn the End","color":"yellow"}]
