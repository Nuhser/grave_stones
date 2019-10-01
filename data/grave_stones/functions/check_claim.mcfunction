#> Checks ones per second if player wants to claim a grave.
# Called By: #nuhser_core:second <SERVER>

execute as @a[scores={nc_sneak=1..}] run say test

#check for claimed graves
execute as @e[tag=gs_graveMarker,tag=gs_deathPoint] at @s if score @p[distance=..1,scores={nc_sneak=1..}] nuhser_id = @s gs_id run function grave_stones:claim_grave
execute as @e[tag=gs_graveMarker,tag=gs_deathPoint] at @s unless score @p[distance=..1,scores={nc_sneak=1..}] nuhser_id = @s gs_id run tellraw @p[distance=..1,scores={nc_sneak=1..}] [{"text":"This is not your grave!","color":"red"}]
