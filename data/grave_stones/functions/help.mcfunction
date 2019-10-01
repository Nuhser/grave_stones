#
# Desc.: Help messages for Grave Stones
# Called By: #nuhser_core:help
# @s: <SERVER>
#

#item for list of installed mods
tellraw @a[scores={help=1}] [{"text":">  "},{"text":"[Grave Stones]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger help set 12"}}]

#explanation of nuhser mod
tellraw @a[scores={help=12}] [{"text":"\nGrave Stones","underlined":true,"color":"dark_aqua"},{"text":" (v1.2.3)\n","underlined":false}]
tellraw @a[scores={help=12}] [{"text":"Dieses Datapack platziert, wenn du stirbst, ein Grab am Ort deines Unglücks und rettet deine Items. Wenn du dann später zurückkehrst, kannst du dich auf das Grab stellen und sneaken, um deine Items wiederzubekommen. Aber Vorsicht! Wenn nicht alles in dein Inventar passt, könnten Items runterfallen und zerstört werden. Also gut aufpassen.\nAußerdem siehst du nach deinem Tod im Chat die Koordinaten deines Grabs. Diese Nachricht kann mit \""},{"text":"/function grave_stones:toggle_tell_coordinates","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function grave_stones:toggle_tell_coordinates"},"hoverEvent":{"action":"show_text","value":"Toggle Chat Message"}},{"text":"\" ein- bzw. ausgeschaltet werden.","color":"reset"},{"text":"\nWenn du mal ein Grab haben solltest, das stört und niemanden, dem es gehört oder der es claimen kann, kannst du es entfernen, indem du dich über es stellst und \""},{"text":"/function grave_stones:remove_graves","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function grave_stones:remove_graves"},"hoverEvent":{"action":"show_text","value":"Claim any grave you're standing on"}},{"text":"\" benutzt.","color":"reset"}]
