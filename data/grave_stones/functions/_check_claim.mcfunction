#> Checks ones per second if player wants to claim a grave.
# Called By: #nuhser_core:second <SERVER>

# check for claimed graves
execute as @e[tag=gs_graveMarker,tag=gs_deathPoint] at @s if score @p[distance=..1,scores={nc_sneak_second=1..}] nc_id = @s gs_id run function grave_stones:_claim_grave
execute as @e[tag=gs_graveMarker,tag=gs_deathPoint] at @s unless score @p[distance=..1,scores={nc_sneak_second=1..}] nc_id = @s gs_id run tellraw @p[distance=..1,scores={nc_sneak_second=1..}] [{"text":"This is not your grave!","color":"red"}]
