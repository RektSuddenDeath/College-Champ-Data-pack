
execute as @a at @s if block ~ ~-1 ~ end_stone run item replace entity @s armor.chest with air
execute as @a at @s if block ~ ~-1 ~ end_stone run title @s times 0 20 5
execute as @a at @s if block ~ ~-1 ~ end_stone run title @s subtitle [{"text":"已解除 - 鞘翅","color":"red"}]
execute as @a at @s if block ~ ~-1 ~ end_stone run title @s title " "

execute as @a at @s if block ~ ~-2 ~ yellow_concrete run item replace entity @s armor.chest with air
execute as @a[x=-1091,y=101,z=-1109,dx=15,dy=20,dz=20] run item replace entity @s armor.chest with air

execute as @a[x=-977,y=83,z=-1074,dx=10,dy=8,dz=5] run item replace entity @s armor.chest with air
execute as @a[x=-977,y=83,z=-1074,dx=10,dy=8,dz=5] run title @s times 0 20 5
execute as @a[x=-977,y=83,z=-1074,dx=10,dy=8,dz=5] run title @s subtitle [{"text":"已解除 - 鞘翅","color":"red"}]
execute as @a[x=-977,y=83,z=-1074,dx=10,dy=8,dz=5] run title @s title " "

execute if score gameflag ar_game matches 1 run schedule function acerace:effectblock/unelytra 2t