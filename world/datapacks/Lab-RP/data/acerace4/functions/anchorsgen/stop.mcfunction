
schedule clear acerace4:anchorsgen/loop
tag @s remove gen
tellraw @s "§cAnchors generation stopped."
tellraw @s ["","§aGenerated ",{"score":{"name": "currentNo","objective": "anchorNo"}},"§a anchors."]
tellraw @s "Use §a/function acerace4:anchorsgen/viewanchor§r to view generated anchors."
tellraw @s "Run the tool again if the result is not satisfactory."