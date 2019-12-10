#> Let you remove all graves within a 1 block radius.
# Called By: player <PLAYER>

execute as @e[tag=gs_graveMarker,tag=gs_deathPoint,distance=..1] at @s run function grave_stones:_claim_grave
