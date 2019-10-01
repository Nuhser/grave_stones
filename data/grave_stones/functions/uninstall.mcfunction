#> Removes all scoreboards from grave_stones.
# Called By: player <PLAYER>

#remove scoreboards
tellraw @a ["",{"text":"Removing all scoreboards for Grave Stones...","color":"yellow"}]

scoreboard objectives remove gs_deaths
scoreboard objectives remove gs_itemAge
scoreboard objectives remove gs_id
scoreboard objectives remove gs_xPos
scoreboard objectives remove gs_yPos
scoreboard objectives remove gs_zPos

tellraw @a ["",{"text":"Grave Stones successful uninstalled!","color":"green"}]

#disabele grave_stones
datapack disable "file/grave_stones"
