
scoreboard players add laststandTicks sg_game 1
execute if score laststandTicks sg_game matches 60 run scoreboard players add laststandAmount sg_game 1
execute if score laststandTicks sg_game matches 60 if score CurrentMaxHealth sg_game matches 1.. run scoreboard players remove currentMaxHealth sg_game 1
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 1 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-0 "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 2 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-1 "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 3 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-2 "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 4 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-3 "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 5 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-4 "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 6 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-5 "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 7 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-6 "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 8 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-7 "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 9 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-8 "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 10 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-9 "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 11 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-a "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 12 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-b "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 13 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-c "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 14 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-d "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 15 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-e "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 16 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-f "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 17 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-a1 "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 18 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-a2 "max_health_1" -1 add
execute if score laststandTicks sg_game matches 60 if score laststandAmount sg_game matches 19 run execute as @a[gamemode=!spectator] run attribute @s generic.max_health modifier add a-b-c-d-a3 "max_health_1" -1 add

# Fixes max HP
execute as @a[gamemode=!spectator] if score @s health > currentMaxHealth sg_game run effect give @s instant_health 1 0 true

execute if score laststandTicks sg_game matches 60 run scoreboard players set laststandTicks sg_game 0
execute if score gameflag sg_game matches 1 run schedule function sg:last_stand/loop 1t
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-0
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-1
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-2
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-3
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-4
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-5
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-6
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-7
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-8
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-9
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-a
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-b
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-c
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-d
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-e
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-f
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-a1
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-a2
execute if score gameflag sg_game matches 0 run execute as @a run attribute @s generic.max_health modifier remove a-b-c-d-a3