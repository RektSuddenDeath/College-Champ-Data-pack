
schedule clear acerace:intro/hold
kill @e[type=armor_stand,name="Intro"]

spreadplayers -1000 -998 0 1 true @a[team=!spec]
gamemode adventure @a[team=!spec]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
effect give @a[team=!spec] weakness 15 5 true

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a [{"text":"  Standby for the game to begin...","color":"red"}]
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]