
scoreboard players operation currenthunt pkt_stats -= allhuntdecay pkt_stats
execute as @a[tag=runner] as @s run scoreboard players operation @s pkt_indvscore += survive pkt_stats
tellraw @a[tag=runner] ["§6[+",{"score":{"name": "survive","objective": "pkt_stats"},"color": "gold"},"§6分] ","§b[§r鄵§b] ","§b已存活",{"score":{"name": "round_time","objective": "pkt_game"},"color": "#E3E3E3"},"§b秒。"]