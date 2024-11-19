
tp @a[gamemode=adventure,x=3826,y=55,z=3909,dx=105,dy=12,dz=113] 3863 119 3909 facing 3856 120 3915
execute as @a[gamemode=adventure,x=3875,y=70,z=4023,dx=16,dy=15,dz=31] run scoreboard players set @s ar_cp2 1
spawnpoint @a[x=3875,y=71,z=4044,dx=16,dy=9,dz=8,gamemode=adventure] 3883 71 4048
execute if score gameflag ar_game matches 1 run schedule function acerace2:checkpoint/3 2t