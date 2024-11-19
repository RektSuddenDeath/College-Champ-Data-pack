

execute if score dm_seq rrr_game matches 0 as @a[scores={univ_death_2=1..}] run tellraw @a ["§7[§r楒§7] ","§7",{"selector":"@s"},"§7 将生命献给了铁路建设……"]
execute if score dm_seq rrr_game matches 1 as @a[scores={univ_death_2=1..}] run tellraw @a ["§7[§r楒§7] ","§7",{"selector":"@s"},"§7 应该把TNT的引线做长一点。"]
execute if score dm_seq rrr_game matches 2 as @a[scores={univ_death_2=1..}] run tellraw @a ["§7[§r楒§7] ","§7",{"selector":"@s"},"§7 用自身筑成了铁路的基石。"]
execute if score dm_seq rrr_game matches 3 as @a[scores={univ_death_2=1..}] run tellraw @a ["§7[§r楒§7] ","§7",{"selector":"@s"},"§7 爆金币了。"]
execute if score dm_seq rrr_game matches 4 as @a[scores={univ_death_2=1..}] run tellraw @a ["§7[§r楒§7] ","§7",{"selector":"@s"},"§7 下次应该戴个安全帽来下工地。"]
execute if score dm_seq rrr_game matches 5 as @a[scores={univ_death_2=1..}] run tellraw @a ["§7[§r楒§7] ","§7",{"selector":"@s"},"§7 深陷淘金热无法自拔。"]
execute if score dm_seq rrr_game matches 6 as @a[scores={univ_death_2=1..}] run tellraw @a ["§7[§r楒§7] ","§7",{"selector":"@s"},"§7 亲身尝试了炸药的威力。"]
execute if score dm_seq rrr_game matches 7 as @a[scores={univ_death_2=1..}] run tellraw @a ["§7[§r楒§7] ","§7",{"selector":"@s"},"§7 惨遭了铁路交通法的制裁。"]
execute if score dm_seq rrr_game matches 8 as @a[scores={univ_death_2=1..}] run tellraw @a ["§7[§r楒§7] ","§7",{"selector":"@s"},"§7 快速回城了。"]
execute if score dm_seq rrr_game matches 9 as @a[scores={univ_death_2=1..}] run tellraw @a ["§7[§r楒§7] ","§7",{"selector":"@s"},"§7 的道路无法继续延伸了……"]
execute if score dm_seq rrr_game matches 10 as @a[scores={univ_death_2=1..}] run tellraw @a ["§7[§r楒§7] ","§7",{"selector":"@s"},"§7 认为他们选错了游戏。"]
execute if score dm_seq rrr_game matches 11 as @a[scores={univ_death_2=1..}] run tellraw @a ["§7[§r楒§7] ","§7",{"selector":"@s"},"§7 痛饮了一大壶熔岩。"]
execute if score dm_seq rrr_game matches 12 as @a[scores={univ_death_2=1..}] run tellraw @a ["§7[§r楒§7] ","§7",{"selector":"@s"},"§7 的矿车不听使唤了。"]
execute if score dm_seq rrr_game matches 13 as @a[scores={univ_death_2=1..}] run tellraw @a ["§7[§r楒§7] ","§7",{"selector":"@s"},"§7 变成了铁路上徐徐升起的轻烟……"]
execute if score dm_seq rrr_game matches 14 as @a[scores={univ_death_2=1..}] run tellraw @a ["§7[§r楒§7] ","§7",{"selector":"@s"},"§7 发现了铁轨不能又拐弯又上坡。"]

scoreboard players add dm_seq rrr_game 1
execute if score dm_seq rrr_game matches 15.. run scoreboard players set dm_seq rrr_game 0

scoreboard players set @a univ_death_2 0
execute if score gameflag rrr_game matches 1 run schedule function railroadrush:death_msg 1t