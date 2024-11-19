
tag @a[x=4000,y=121,z=3857,dx=6,dy=5,dz=5,team=!spec] add ar_cp1

tp @a[gamemode=adventure,x=3974,y=54,z=3818,dx=59,dz=80,dy=31,tag=!ar_cp1] 4003 104 3903 facing 4003 105 3901
tp @a[gamemode=adventure,x=3974,y=54,z=3818,dx=59,dz=80,dy=31,tag=ar_cp1] 4003.66 122.00 3860.98 -179.63 4.78

spawnpoint @a[gamemode=adventure,x=3985,y=132,z=3833,dx=11,dy=6,dz=7] 3990 134 3836

execute if score gameflag ar_game matches 1 run schedule function acerace4:checkpoint/2 2t