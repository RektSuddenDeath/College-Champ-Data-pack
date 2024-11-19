
scoreboard objectives add elevatorjoke dummy
scoreboard players set playercount elevatorjoke 0
execute as @a[gamemode=!spectator,x=-9971,y=115,z=-10002,dx=4,dy=1,dz=4] run scoreboard players add playercount elevatorjoke 1

execute if score playercount elevatorjoke > capacity elevatorjoke run function decisiondome:crashelevator