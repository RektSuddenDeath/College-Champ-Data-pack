
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a "  §l只有在沙漏内沙子流失殆尽之前§c§l离开地牢"
tellraw @a "  §l你所获得的金子才视作有效。"
tellraw @a ""
tellraw @a "  你也可以使用对面的末影箱在不离开地牢的情况下储存金子"
tellraw @a [{"text": "  但代价是你会损失20%的金子","color":"red"}]
tellraw @a ""
tellraw @a "  "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]