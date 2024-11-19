
# Add 50ms to total timer and each player's current lap time.

## Total Time
scoreboard players add ms ar_totaltime 5
## Individual Laptime
scoreboard players add @a[scores={ar_laps=1..3}] ar_laptime 5

# Send Players back if they've fallen.
## Check 1
tp @a[gamemode=adventure,x=3980,y=54,z=3913,dx=37,dy=42,dz=88] 4001 135 4009 facing 4001 136 4006

## Check 2
tag @a[x=4000,y=121,z=3857,dx=6,dy=5,dz=5,team=!spec] add ar_cp1

tp @a[gamemode=adventure,x=3974,y=54,z=3818,dx=59,dz=80,dy=31,tag=!ar_cp1] 4003 104 3903 facing 4003 105 3901
tp @a[gamemode=adventure,x=3974,y=54,z=3818,dx=59,dz=80,dy=31,tag=ar_cp1] 4003.66 122.00 3866.98 -179.63 4.78

spawnpoint @a[gamemode=adventure,x=3985,y=132,z=3833,dx=11,dy=6,dz=7] 3990 134 3836

## Check 3
tp @a[gamemode=adventure,x=3826,y=55,z=3909,dx=105,dy=12,dz=113] 3863 119 3909 facing 3856 120 3915
execute as @a[gamemode=adventure,x=3875,y=70,z=4023,dx=16,dy=15,dz=31] run scoreboard players set @s ar_cp 1
spawnpoint @a[x=3875,y=71,z=4044,dx=16,dy=9,dz=8,gamemode=adventure] 3883 71 4048

## Check 4
tp @a[gamemode=adventure,x=3787,y=58,z=4053,dx=140,dy=8,dz=165] 3882 71 4051 facing 3882 72 4053

# Finish Line check
tag @a[team=!spec,scores={ar_laps=1..2,ar_cp=1},x=3989,y=134,z=4010,dx=23,dy=9,dz=3] add ar_finishlap
tag @a[team=!spec,scores={ar_laps=3,ar_cp=1},x=3989,y=134,z=4010,dx=23,dy=9,dz=3] add ar_finishcourse
execute as @a[tag=ar_finishlap] run function acerace2:finish/lap
execute as @a[tag=ar_finishcourse] run function acerace2:finish/course
# Incomplete Players are given a score, according to how many laps they've completed, and the timing point they've reached.
## Timing point
#scoreboard players set @a ar_timing -2147483648
## Fetch the timing point from the nearest generated anchor
execute as @a[team=!spec,scores={ar_laps=1..3}] at @s run scoreboard players operation @s ar_timing = @e[type=area_effect_cloud,tag=posAnchor,limit=1,sort=nearest] anchorNo

## Add 1m score for each lap complete
scoreboard players add @a[team=!spec,scores={ar_laps=1,ar_timing=0..9999}] ar_timing 1000000
scoreboard players add @a[team=!spec,scores={ar_laps=2,ar_timing=0..9999}] ar_timing 2000000
scoreboard players add @a[team=!spec,scores={ar_laps=3,ar_timing=0..9999}] ar_timing 3000000

# Calculates each player's current position
## Init Phase 1
scoreboard objectives add ar_temppos dummy
scoreboard players set $current ar_temppos 1
scoreboard players operation $current ar_temppos += completedplayers ar_game
scoreboard players set $total ar_temppos 0


#### 这块有问题
execute as @a[team=!spec,scores={ar_timing=1..}] run scoreboard players add $total ar_temppos 1
scoreboard players operation $total ar_temppos += completedplayers ar_game
#### 这块有问题

## Calculate phase
function acerace2:timing/rankcalc

# Tells player their position in actionbar
execute as @a[scores={mvprank=1..},team=!spec] run title @s actionbar ["",{"text": "你第"},{"score":{"name": "@s","objective": "mvprank"}},{"text": "个完成了比赛"}]
execute as @a[scores={mvprank=0,ar_temppos=1..},team=!spec] run title @s actionbar ["",{"text": "你是第"},{"score":{"name": "@s","objective": "ar_temppos"}},{"text": "名"}]
# Cleanup
scoreboard objectives remove ar_temppos
tag @a remove ar_finishlap
tag @a remove ar_finishcourse

# If the game should end, or loop
execute if score minute master.timer matches 0 if score second master.timer matches 0 if score gameflag ar_game matches 1 run function acerace2:end
execute if score liveplayers ar_game = completedplayers ar_game run function acerace2:end
execute if score gameflag ar_game matches 1 run schedule function acerace2:timing/master 1t