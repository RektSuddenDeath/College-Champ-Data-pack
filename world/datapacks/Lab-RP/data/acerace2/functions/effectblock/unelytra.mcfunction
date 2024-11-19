
# execute as @a[team=!spec,x=3984,y=99,z=3901,dx=37,dy=20,dz=7] run item replace entity @s armor.chest with air
execute as @a[team=!spec,x=3854,y=118,z=3875,dx=13,dy=18,dz=35] run item replace entity @s armor.chest with air
execute as @a[team=!spec,x=4031,y=37,z=4111,dx=7,dy=7,dz=3] run item replace entity @s armor.chest with air
execute as @a[team=!spec,x=4031,y=37,z=4111,dx=7,dy=7,dz=3] run clear @s firework_rocket
execute as @a[team=!spec,nbt={OnGround:1b}] run item replace entity @s armor.chest with air
execute if score gameflag ar_game matches 1 run schedule function acerace2:effectblock/unelytra 2t