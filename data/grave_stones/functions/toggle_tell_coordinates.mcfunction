#> Toggles the printing of the coordinates on/off.
# Called By: player <PLAYER>

# change score from 0 to 1 or from 1 to 0
scoreboard players operation $tell_coordinates gs_deaths -= $1 nc_constants
scoreboard players operation $tell_coordinates gs_deaths *= $-1 nc_constants

# give chat feedback
execute if score $tell_coordinates gs_deaths matches ..0 run tellraw @a ["",{"text":"Printing of death coordinates is toggled off.","color":"green"}]
execute if score $tell_coordinates gs_deaths matches 1.. run tellraw @a ["",{"text":"Printing of death coordinates is toggled on.","color":"green"}]
