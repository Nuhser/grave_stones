#> Destroys the grave and gives the player his items.
# Called By: grave_stones:_check_claim / grave_stones:remove_graves <@e[tag=gs_graveMarker,tag=gs_deathPoint]>

# reduce all grave entities UNID to check for the right on. then restore them
execute positioned ~ -3 ~ run scoreboard players operation @e[tag=gs_graveStorage,distance=..0.5] gs_id -= @s gs_id
execute positioned ~ -3 ~ run tag @e[tag=gs_graveStorage,distance=..1,scores={gs_id=0}] add gs_claimed
execute positioned ~ -3 ~ run scoreboard players operation @e[tag=gs_graveStorage,distance=..0.5] gs_id += @s gs_id

# destroy storage minecarts
kill @e[type=hopper_minecart,tag=gs_graveStorage,tag=gs_claimed]

# stop item and teleport them up
execute as @e[tag=gs_graveStorage,tag=gs_claimed] at @s run tag @e[type=item,distance=..2] add gs_graveItem
execute as @e[tag=gs_graveItem] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
execute positioned ~ -3 ~ run tp @e[tag=gs_graveItem,distance=..2] @s

# kill all components of the grave
kill @e[tag=gs_graveMarker,tag=gs_claimed]
kill @e[tag=gs_graveModelBlock,limit=1,sort=nearest]
kill @e[tag=gs_graveModelBack,limit=1,sort=nearest]
kill @e[tag=gs_graveModelFlower,limit=1,sort=nearest]
kill @s

# play happy claim-sound
playsound minecraft:entity.experience_orb.pickup master @p[distance=..1,scores={nc_sneak=1..}]

# print claim message
tellraw @p[distance=..1,scores={nc_sneak=1..}] [{"text":"Grave successful claimed.","color":"green"}]
