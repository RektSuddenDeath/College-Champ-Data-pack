


execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a "  当然你也可以使用沙子换取金币"
tellraw @a "  如果队友§c死亡，§r你需要使用一个沙子来买活他"
tellraw @a " "
tellraw @a ""
tellraw @a [{"text": "  若沙子流失殆尽，末影金库和出口都将被关闭。","color":"red"}]
tellraw @a ""
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]