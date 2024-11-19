
execute as @a[x=-1065,y=137,z=-998,dx=3,dy=10,dz=10] run item replace entity @s armor.chest with elytra{Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]} 1
execute as @a[x=-1065,y=137,z=-998,dx=3,dy=10,dz=10] run title @s times 0 20 5
execute as @a[x=-1065,y=137,z=-998,dx=3,dy=10,dz=10] run title @s subtitle [{"text":"已装备 - 鞘翅","color":"green"}]
execute as @a[x=-1065,y=137,z=-998,dx=3,dy=10,dz=10] run title @s title " "


execute as @a[x=-993,y=119,z=-1107,dx=3,dy=10,dz=7] run item replace entity @s armor.chest with elytra{Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]} 1
execute as @a[x=-993,y=119,z=-1107,dx=3,dy=10,dz=7] run title @s times 0 20 5
execute as @a[x=-993,y=119,z=-1107,dx=3,dy=10,dz=7] run title @s subtitle [{"text":"已装备 - 鞘翅","color":"green"}]
execute as @a[x=-993,y=119,z=-1107,dx=3,dy=10,dz=7] run title @s title " "

execute if score gameflag ar_game matches 1 run schedule function acerace:effectblock/elytra 2t