#> Initializes the scoreboards for grave_stones.
# Called By: #nuhser_core:init <SERVER>

tellraw @a ["",{"text":"----------------------------------------"}]
tellraw @a ["",{"text":"grave_stones: Loading Grave Stones...","color":"dark_purple"}]

tellraw @a ["",{"text":"grave_stones: Creating scoreboard...","color":"yellow"}]

#create scoreboards
scoreboard objectives add gs_deaths deathCount
scoreboard objectives add gs_itemAge dummy
scoreboard objectives add gs_id dummy
scoreboard objectives add gs_xPos dummy
scoreboard objectives add gs_yPos dummy
scoreboard objectives add gs_zPos dummy

execute unless score $tell_coordinates gs_deaths matches 0..1 run scoreboard players set $tell_coordinates gs_deaths 1

tellraw @a ["",{"text":"grave_stones: Loading successful!","color":"green"}]
tellraw @a ["",{"text":"----------------------------------------"}]
