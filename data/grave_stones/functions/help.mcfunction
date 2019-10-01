#> Help messages for Grave Stones
# Called By: #nuhser_core:help <SERVER>

#item for list of installed mods
tellraw @a[scores={help=1}] [{"text":">  "},{"text":"[Grave Stones]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger help set 12"}}]

#explanation of nuhser mod
tellraw @a[scores={help=12}] [{"text":"\nGrave Stones","underlined":true,"color":"dark_aqua"},{"text":" (v2.0.0)\n","underlined":false}]
tellraw @a[scores={help=12}] [{"text":"When you die, this datapack places a grave at the location of your misfortune and saves your items. If you return later, you can stand on the grave and sneak to retrieve your items. But beware! If everything does not fit into your inventory, items could fall off and be destroyed. So be careful.\nNext you will see the coordinates of your grave after you die in the chat. This function can be turned of by using \""},{"text":"/function grave_stones:toggle_tell_coordinates","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function grave_stones:toggle_tell_coordinates"},"hoverEvent":{"action":"show_text","value":"Toggle Chat Message"}},{"text":"\" .","color":"reset"},{"text":"\nIf you ever have a grave that bothers you and nobody who owns it or who can claim it, you can remove it by putting yourself over it and using \""},{"text":"/function grave_stones:remove_graves","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function grave_stones:remove_graves"},"hoverEvent":{"action":"show_text","value":"Claim any grave you're standing on"}},{"text":"\".","color":"reset"}]
