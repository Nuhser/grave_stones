#> Building the grave.
# Called By: grave_stones:_tick <PLAYER>

# generate grave dirt

scoreboard players set $max nc_rng 6
function nuhser_core:_next_random

execute if score $next nc_rng matches 0 align xz run summon minecraft:armor_stand ~0.37 ~-1.77 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:podzol",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBlock"]}
execute if score $next nc_rng matches 1 align xz run summon minecraft:armor_stand ~0.37 ~-1.77 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:mycelium",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBlock"]}
execute if score $next nc_rng matches 2 align xz run summon minecraft:armor_stand ~0.37 ~-1.77 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:gravel",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBlock"]}
execute if score $next nc_rng matches 3 align xz run summon minecraft:armor_stand ~0.37 ~-1.77 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:coarse_dirt",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBlock"]}
execute if score $next nc_rng matches 4 align xz run summon minecraft:armor_stand ~0.37 ~-1.75 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:grass_path",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBlock"]}
execute if score $next nc_rng matches 5 align xz run summon minecraft:armor_stand ~0.37 ~-1.75 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:farmland",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBlock"]}

# generate grave stone

scoreboard players set $max nc_rng 11
function nuhser_core:_next_random

execute if score $next nc_rng matches 0 align xz run summon minecraft:armor_stand ~0.8 ~-1.4 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:cobblestone_wall",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBack"]}
execute if score $next nc_rng matches 1 align xz run summon minecraft:armor_stand ~0.8 ~-1.4 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:mossy_cobblestone_wall",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBack"]}
execute if score $next nc_rng matches 2 align xz run summon minecraft:armor_stand ~0.8 ~-1.4 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:brick_wall",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBack"]}
execute if score $next nc_rng matches 3 align xz run summon minecraft:armor_stand ~0.8 ~-1.4 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:diorite_wall",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBack"]}
execute if score $next nc_rng matches 4 align xz run summon minecraft:armor_stand ~0.8 ~-1.4 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:andesite_wall",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBack"]}
execute if score $next nc_rng matches 5 align xz run summon minecraft:armor_stand ~0.8 ~-1.4 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:granite_wall",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBack"]}
execute if score $next nc_rng matches 6 align xz run summon minecraft:armor_stand ~0.8 ~-1.4 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:stone_brick_wall",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBack"]}
execute if score $next nc_rng matches 7 align xz run summon minecraft:armor_stand ~0.8 ~-1.4 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:mossy_stone_brick_wall",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBack"]}
execute if score $next nc_rng matches 8 align xz run summon minecraft:armor_stand ~0.8 ~-1.4 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:sandstone_wall",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBack"]}
execute if score $next nc_rng matches 9 align xz run summon minecraft:armor_stand ~0.8 ~-1.4 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:nether_brick_wall",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBack"]}
execute if score $next nc_rng matches 10 align xz run summon minecraft:armor_stand ~0.8 ~-1.4 ~0.5 {DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:end_stone_brick_wall",Count:1b}],Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelBack"]}

# generate grave flower

scoreboard players set $max nc_rng 13
function nuhser_core:_next_random

execute if score $next nc_rng matches 0 align xz run summon minecraft:armor_stand ~0.57 ~-1.7 ~0.7 {DisabledSlots:2039583,ShowArms:1b,HandItems:[{id:"minecraft:poppy",Count:1b},{}],Pose:{RightArm:[180f,45f,0f]},Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelFlower"]}
execute if score $next nc_rng matches 1 align xz run summon minecraft:armor_stand ~0.57 ~-1.7 ~0.7 {DisabledSlots:2039583,ShowArms:1b,HandItems:[{id:"minecraft:dandelion",Count:1b},{}],Pose:{RightArm:[180f,45f,0f]},Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelFlower"]}
execute if score $next nc_rng matches 2 align xz run summon minecraft:armor_stand ~0.48 ~-1.7 ~0.7 {DisabledSlots:2039583,ShowArms:1b,HandItems:[{id:"minecraft:oxeye_daisy",Count:1b},{}],Pose:{RightArm:[180f,45f,0f]},Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelFlower"]}
execute if score $next nc_rng matches 3 align xz run summon minecraft:armor_stand ~0.48 ~-1.7 ~0.7 {DisabledSlots:2039583,ShowArms:1b,HandItems:[{id:"minecraft:allium",Count:1b},{}],Pose:{RightArm:[180f,45f,0f]},Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelFlower"]}
execute if score $next nc_rng matches 4 align xz run summon minecraft:armor_stand ~0.51 ~-1.7 ~0.7 {DisabledSlots:2039583,ShowArms:1b,HandItems:[{id:"minecraft:red_tulip",Count:1b},{}],Pose:{RightArm:[180f,45f,0f]},Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelFlower"]}
execute if score $next nc_rng matches 5 align xz run summon minecraft:armor_stand ~0.51 ~-1.7 ~0.7 {DisabledSlots:2039583,ShowArms:1b,HandItems:[{id:"minecraft:orange_tulip",Count:1b},{}],Pose:{RightArm:[180f,45f,0f]},Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelFlower"]}
execute if score $next nc_rng matches 6 align xz run summon minecraft:armor_stand ~0.51 ~-1.7 ~0.7 {DisabledSlots:2039583,ShowArms:1b,HandItems:[{id:"minecraft:white_tulip",Count:1b},{}],Pose:{RightArm:[180f,45f,0f]},Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelFlower"]}
execute if score $next nc_rng matches 7 align xz run summon minecraft:armor_stand ~0.51 ~-1.7 ~0.7 {DisabledSlots:2039583,ShowArms:1b,HandItems:[{id:"minecraft:pink_tulip",Count:1b},{}],Pose:{RightArm:[180f,45f,0f]},Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelFlower"]}
execute if score $next nc_rng matches 8 align xz run summon minecraft:armor_stand ~0.51 ~-1.7 ~0.76 {DisabledSlots:2039583,ShowArms:1b,HandItems:[{id:"minecraft:blue_orchid",Count:1b},{}],Pose:{RightArm:[180f,45f,0f]},Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelFlower"]}
execute if score $next nc_rng matches 9 align xz run summon minecraft:armor_stand ~0.53 ~-1.7 ~0.7 {DisabledSlots:2039583,ShowArms:1b,HandItems:[{id:"minecraft:wither_rose",Count:1b},{}],Pose:{RightArm:[180f,45f,0f]},Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelFlower"]}
execute if score $next nc_rng matches 10 align xz run summon minecraft:armor_stand ~0.51 ~-1.7 ~0.76 {DisabledSlots:2039583,ShowArms:1b,HandItems:[{id:"minecraft:lily_of_the_valley",Count:1b},{}],Pose:{RightArm:[180f,45f,0f]},Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelFlower"]}
execute if score $next nc_rng matches 11 align xz run summon minecraft:armor_stand ~0.51 ~-1.7 ~0.76 {DisabledSlots:2039583,ShowArms:1b,HandItems:[{id:"minecraft:cornflower",Count:1b},{}],Pose:{RightArm:[180f,45f,0f]},Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelFlower"]}
execute if score $next nc_rng matches 12 align xz run summon minecraft:armor_stand ~0.75 ~-1.7 ~0.83 {DisabledSlots:2039583,ShowArms:1b,HandItems:[{id:"minecraft:cod",Count:1b},{}],Pose:{RightArm:[180f,0f,0f]},Invisible:1b,NoGravity:1b,Tags:["gs_grave","gs_graveModel","gs_graveModelFlower"]}
