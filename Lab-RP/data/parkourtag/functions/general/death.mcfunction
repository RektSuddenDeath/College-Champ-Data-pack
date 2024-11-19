
clear @a[scores={pkt_death=1}]
tag @a[scores={pkt_death=1}] remove runner
tellraw @a[scores={pkt_death=1}] ["§c[§r楒§c] ","§c你躲避了抓捕者",{"score":{"name": "round_time","objective": "pkt_game"},"color": "#EBA901"},"§c秒。"]
execute as @a[scores={pkt_death=1}] run attribute @s generic.attack_damage base set -10
# scoreboard players set @a pkt_death 0