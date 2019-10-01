#> Runs ones per tick.
# Called By: #nuhser_core:tick <SERVER>

#disable all old storage minecarts
execute as @e[tag=gs_graveMarker,tag=gs_graveStorage,nbt={Age:10}] at @s as @e[type=hopper_minecart,tag=gs_graveStorage,distance=..1] run data merge entity @s {Enabled:0b}

#save all items age
execute as @e[type=item] store result score @s gs_itemAge run data get entity @s Age 1.0

#summon grave marker
execute as @a[scores={gs_deaths=1..}] at @s if entity @e[type=item,distance=..5,scores={gs_itemAge=0..1}] align y run function grave_stones:find_pos

#save the dropped items
execute as @a[scores={gs_deaths=1..}] at @s if entity @e[type=item,distance=..5,scores={gs_itemAge=0..1}] run function grave_stones:save_items

#reset all death counts
scoreboard players set @a[scores={gs_deaths=1..}] gs_deaths 0
