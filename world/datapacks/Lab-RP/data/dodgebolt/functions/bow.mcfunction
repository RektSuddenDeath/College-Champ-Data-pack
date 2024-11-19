




execute as @a[x=10015,y=186,z=9971,dx=0,dy=10,dz=14,tag=db_teamone,tag=!nobow] run clear @s bow
execute as @a[x=10015,y=186,z=9971,dx=0,dy=10,dz=14,tag=db_teamone,tag=!nobow] run tellraw @s [{"text":"你已出界！回到本方区域以取回弓。","color":"red","bold":true}]
execute as @a[x=10015,y=186,z=9971,dx=0,dy=10,dz=14,tag=db_teamone,tag=!nobow] run tag @s add nobow

execute as @a[x=9997,y=185,z=9963,dx=17,dy=10,dz=30,tag=db_teamone,tag=!nobow] run clear @s bow
execute as @a[x=9997,y=185,z=9963,dx=17,dy=10,dz=30,tag=db_teamone,tag=!nobow] run tellraw @s [{"text":"你已出界！回到本方区域以取回弓。","color":"red","bold":true}]
execute as @a[x=9997,y=185,z=9963,dx=17,dy=10,dz=30,tag=db_teamone,tag=!nobow] run tag @s add nobow

execute as @a[x=10011,y=186,z=9971,dx=0,dy=10,dz=14,tag=db_teamtwo,tag=!nobow] run clear @s bow
execute as @a[x=10011,y=186,z=9971,dx=0,dy=10,dz=14,tag=db_teamtwo,tag=!nobow] run tellraw @s [{"text":"你已出界！回到本方区域以取回弓。","color":"red","bold":true}]
execute as @a[x=10011,y=186,z=9971,dx=0,dy=10,dz=14,tag=db_teamtwo,tag=!nobow] run tag @s add nobow

execute as @a[x=10012,y=185,z=9963,dx=17,dy=10,dz=30,tag=db_teamtwo,tag=!nobow] run clear @s bow
execute as @a[x=10012,y=185,z=9963,dx=17,dy=10,dz=30,tag=db_teamtwo,tag=!nobow] run tellraw @s [{"text":"你已出界！回到本方区域以取回弓。","color":"red","bold":true}]
execute as @a[x=10012,y=185,z=9963,dx=17,dy=10,dz=30,tag=db_teamtwo,tag=!nobow] run tag @s add nobow

execute as @a[x=10017,y=185,z=9963,dx=12,dy=10,dz=30,tag=db_teamone,tag=nobow] run give @s bow{Unbreakable:1,HideFlags:5} 1
execute as @a[x=10017,y=185,z=9963,dx=12,dy=10,dz=30,tag=db_teamone,tag=nobow] run tellraw @s [{"text":"你已获得弓。","color":"green","bold":true}]
execute as @a[x=10017,y=185,z=9963,dx=12,dy=10,dz=30,tag=db_teamone,tag=nobow] run tag @s remove nobow

execute as @a[x=9997,y=185,z=9963,dx=12,dy=10,dz=30,tag=db_teamtwo,tag=nobow] run give @s bow{Unbreakable:1,HideFlags:5} 1
execute as @a[x=9997,y=185,z=9963,dx=12,dy=10,dz=30,tag=db_teamtwo,tag=nobow] run tellraw @s [{"text":"你已获得弓。","color":"green","bold":true}]
execute as @a[x=9997,y=185,z=9963,dx=12,dy=10,dz=30,tag=db_teamtwo,tag=nobow] run tag @s remove nobow

execute if score gameflag db_game matches 1 run schedule function dodgebolt:bow 1t