execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"color":"yellow","text":"  游戏提示","bold":true}]
tellraw @a " "
tellraw @a [{"text":"  1.你不会受到摔落伤害！\n  2.场地内部分布有十分有用的道具，先到先得！\n  3.你需要先破坏原有的白色羊毛才可以放置自己的羊毛！\n  4.只需要替换全部羊毛即可获胜，但是击杀敌人可以获得更多分数！","color":"white"}]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

summon minecraft:armor_stand ~ ~ ~ {Passengers:[{id:minecart,Invulnerable:1b}]}