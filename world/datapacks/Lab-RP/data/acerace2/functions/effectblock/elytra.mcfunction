
execute as @a[team=!spec,x=3987,y=134,z=4003,dx=27,dy=7,dz=0] run item replace entity @s armor.chest with elytra{Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]} 1
# execute as @a[team=!spec,x=3983,y=132,z=3832,dx=0,dy=6,dz=8] run item replace entity @s armor.chest with elytra{Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]} 1
execute as @a[team=!spec,x=3957,y=122,z=4150,dx=0,dy=6,dz=10] run item replace entity @s armor.chest with elytra{Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]} 1

execute as @a[team=!spec,x=3989,y=39,z=4153,dx=1,dy=8,dz=8] run item replace entity @s hotbar.2 with firework_rocket
execute if score gameflag ar_game matches 1 run schedule function acerace2:effectblock/elytra 2t