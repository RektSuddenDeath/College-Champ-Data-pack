
clear @a bow
clear @a arrow
kill @e[type=arrow]
kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
clone 9997 171 9993 10029 170 9963 9997 185 9963
schedule clear dodgebolt:enemyside

tellraw @s ["[§6DEBUG§r]"," Attempted to stop the game for continuing. Use §b/function dodgebolt:initiategame§r to start next round."]