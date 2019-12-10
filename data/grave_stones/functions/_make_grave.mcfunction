#> Makes the grave.
# Called By: grave_stones:_tick <PLAYER [scores={gs_deaths=1}]>

# replace lava if under the grave
execute if block ~ ~-1 ~ minecraft:lava run setblock ~ ~-1 ~ minecraft:dirt

# spawn grave marker and give it the right UNID
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["gs_grave","gs_graveMarker","gs_deathPoint"],Duration:2147483647,Particle:"flame",Radius:0.1}
scoreboard players operation @e[type=area_effect_cloud,tag=gs_graveMarker,distance=..1,limit=1,sort=nearest,nbt={Age:0}] gs_id = @s nc_id

# spawn grave storage marker and give it the right UNID
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ -3 ~ {Tags:["gs_grave","gs_graveMarker","gs_graveStorage"],Duration:2147483647,Radius:1}
execute positioned ~ -3 ~ run scoreboard players operation @e[type=area_effect_cloud,tag=gs_graveMarker,distance=..1,limit=1,sort=nearest,nbt={Age:0}] gs_id = @s nc_id

# spawn 9 hopper minecarts to hold the dropped items
execute as @e[tag=gs_graveMarker,tag=gs_graveStorage,nbt={Age:0}] at @s run summon minecraft:hopper_minecart ~ ~ ~ {Tags:["gs_grave","gs_graveStorage"],NoGravity:1b}
execute as @e[tag=gs_graveMarker,tag=gs_graveStorage,nbt={Age:0}] at @s run summon minecraft:hopper_minecart ~ ~ ~ {Tags:["gs_grave","gs_graveStorage"],NoGravity:1b}
execute as @e[tag=gs_graveMarker,tag=gs_graveStorage,nbt={Age:0}] at @s run summon minecraft:hopper_minecart ~ ~ ~ {Tags:["gs_grave","gs_graveStorage"],NoGravity:1b}
execute as @e[tag=gs_graveMarker,tag=gs_graveStorage,nbt={Age:0}] at @s run summon minecraft:hopper_minecart ~ ~ ~ {Tags:["gs_grave","gs_graveStorage"],NoGravity:1b}
execute as @e[tag=gs_graveMarker,tag=gs_graveStorage,nbt={Age:0}] at @s run summon minecraft:hopper_minecart ~ ~ ~ {Tags:["gs_grave","gs_graveStorage"],NoGravity:1b}
execute as @e[tag=gs_graveMarker,tag=gs_graveStorage,nbt={Age:0}] at @s run summon minecraft:hopper_minecart ~ ~ ~ {Tags:["gs_grave","gs_graveStorage"],NoGravity:1b}
execute as @e[tag=gs_graveMarker,tag=gs_graveStorage,nbt={Age:0}] at @s run summon minecraft:hopper_minecart ~ ~ ~ {Tags:["gs_grave","gs_graveStorage"],NoGravity:1b}
execute as @e[tag=gs_graveMarker,tag=gs_graveStorage,nbt={Age:0}] at @s run summon minecraft:hopper_minecart ~ ~ ~ {Tags:["gs_grave","gs_graveStorage"],NoGravity:1b}
execute as @e[tag=gs_graveMarker,tag=gs_graveStorage,nbt={Age:0}] at @s run summon minecraft:hopper_minecart ~ ~ ~ {Tags:["gs_grave","gs_graveStorage"],NoGravity:1b}

# give the storage carts their UNID
execute as @e[tag=gs_graveMarker,tag=gs_graveStorage,nbt={Age:0}] at @s run scoreboard players operation @e[type=hopper_minecart,tag=gs_graveStorage,nbt={Enabled:1b}] gs_id = @s gs_id

# build the grave stone
execute as @e[tag=gs_graveMarker,tag=gs_deathPoint,nbt={Age:0}] at @s run function grave_stones:_build_grave_stone

# write coordinates in chat
execute as @e[tag=gs_graveMarker,tag=gs_deathPoint,nbt={Age:0}] at @s if score $tell_coordinates gs_deaths matches 1 run function grave_stones:_print_coordinates
