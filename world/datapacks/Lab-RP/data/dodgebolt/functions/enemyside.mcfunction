execute if score gameflag db_game matches 1 run schedule function dodgebolt:enemyside 20t

execute as @a[x=10014,y=185,z=9963,dx=15,dy=10,dz=30,tag=db_teamtwo] run effect give @s instant_damage 1 1 true
execute as @a[x=10014,y=185,z=9963,dx=15,dy=10,dz=30,tag=db_teamtwo] run tellraw @s [{"text":"[","color":"white"},{"text":"WARNING","color":"dark_red","bold":true},{"text":"]","color":"white"},{"text":" 你已越界太多！请立刻返回本方区域！","color":"red","bold":true}]

execute as @a[x=9997,y=185,z=9963,dx=15,dy=10,dz=30,tag=db_teamone] run effect give @s instant_damage 1 1 true
execute as @a[x=9997,y=185,z=9963,dx=15,dy=10,dz=30,tag=db_teamone] run tellraw @s [{"text":"[","color":"white"},{"text":"WARNING","color":"dark_red","bold":true},{"text":"]","color":"white"},{"text":" 你已越界太多！请立刻返回本方区域！","color":"red","bold":true}]