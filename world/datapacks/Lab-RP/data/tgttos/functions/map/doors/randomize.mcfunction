# Technical details:
# for each stage (4 total), there will be one less door open. For the first stage, all doors will be available.
# In short, there are 5-3-2-2 active doors each stage.

# Startup
kill @e[type=area_effect_cloud,tag=tgttos,tag=doors]
scoreboard objectives remove doors_rand
scoreboard objectives add doors_rand dummy


summon area_effect_cloud -7500 100 -6000 {Duration:999999,Tags:["tgttos","doors"]}
scoreboard players add @e[type=area_effect_cloud,tag=tgttos,tag=doors] doors_rand 1
summon area_effect_cloud -7500 100 -6000 {Duration:999999,Tags:["tgttos","doors"]}
scoreboard players add @e[type=area_effect_cloud,tag=tgttos,tag=doors] doors_rand 1
summon area_effect_cloud -7500 100 -6000 {Duration:999999,Tags:["tgttos","doors"]}
scoreboard players add @e[type=area_effect_cloud,tag=tgttos,tag=doors] doors_rand 1
summon area_effect_cloud -7500 100 -6000 {Duration:999999,Tags:["tgttos","doors"]}
scoreboard players add @e[type=area_effect_cloud,tag=tgttos,tag=doors] doors_rand 1
summon area_effect_cloud -7500 100 -6000 {Duration:999999,Tags:["tgttos","doors"]}
scoreboard players add @e[type=area_effect_cloud,tag=tgttos,tag=doors] doors_rand 1

# There's no need to randomize the first stage
# Second stage

# Clear out prev redstone
setblock -7462 100 -6026 air
setblock -7462 100 -6025 air
setblock -7462 100 -6012 air
setblock -7462 100 -6011 air
setblock -7462 100 -5998 air
setblock -7462 100 -5997 air
setblock -7462 100 -5984 air
setblock -7462 100 -5983 air
setblock -7462 100 -5970 air
setblock -7462 100 -5969 air


tag @e[type=area_effect_cloud,tag=tgttos,tag=doors,limit=3,sort=random] add stage2

execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage2,scores={doors_rand=1}] run setblock -7462 100 -6026 redstone_wire
execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage2,scores={doors_rand=1}] run setblock -7462 100 -6025 redstone_wire

execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage2,scores={doors_rand=2}] run setblock -7462 100 -6012 redstone_wire
execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage2,scores={doors_rand=2}] run setblock -7462 100 -6011 redstone_wire

execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage2,scores={doors_rand=3}] run setblock -7462 100 -5998 redstone_wire
execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage2,scores={doors_rand=3}] run setblock -7462 100 -5997 redstone_wire

execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage2,scores={doors_rand=4}] run setblock -7462 100 -5984 redstone_wire
execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage2,scores={doors_rand=4}] run setblock -7462 100 -5983 redstone_wire

execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage2,scores={doors_rand=5}] run setblock -7462 100 -5970 redstone_wire
execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage2,scores={doors_rand=5}] run setblock -7462 100 -5969 redstone_wire

# Third Stage
setblock -7424 100 -6026 air
setblock -7424 100 -6025 air
setblock -7424 100 -6012 air
setblock -7424 100 -6011 air
setblock -7424 100 -5998 air
setblock -7424 100 -5997 air
setblock -7424 100 -5984 air
setblock -7424 100 -5983 air
setblock -7424 100 -5970 air
setblock -7424 100 -5969 air


tag @e[type=area_effect_cloud,tag=tgttos,tag=doors,limit=2,sort=random] add stage3

execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage3,scores={doors_rand=1}] run setblock -7424 100 -6026 redstone_wire
execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage3,scores={doors_rand=1}] run setblock -7424 100 -6025 redstone_wire

execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage3,scores={doors_rand=2}] run setblock -7424 100 -6012 redstone_wire
execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage3,scores={doors_rand=2}] run setblock -7424 100 -6011 redstone_wire

execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage3,scores={doors_rand=3}] run setblock -7424 100 -5998 redstone_wire
execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage3,scores={doors_rand=3}] run setblock -7424 100 -5997 redstone_wire

execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage3,scores={doors_rand=4}] run setblock -7424 100 -5984 redstone_wire
execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage3,scores={doors_rand=4}] run setblock -7424 100 -5983 redstone_wire

execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage3,scores={doors_rand=5}] run setblock -7424 100 -5970 redstone_wire
execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage3,scores={doors_rand=5}] run setblock -7424 100 -5969 redstone_wire

# Fourth Stage
setblock -7386 100 -6026 air
setblock -7386 100 -6025 air
setblock -7386 100 -6012 air
setblock -7386 100 -6011 air
setblock -7386 100 -5998 air
setblock -7386 100 -5997 air
setblock -7386 100 -5984 air
setblock -7386 100 -5983 air
setblock -7386 100 -5970 air
setblock -7386 100 -5969 air


tag @e[type=area_effect_cloud,tag=tgttos,tag=doors,limit=2,sort=random] add stage4

execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage4,scores={doors_rand=1}] run setblock -7386 100 -6026 redstone_wire
execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage4,scores={doors_rand=1}] run setblock -7386 100 -6025 redstone_wire

execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage4,scores={doors_rand=2}] run setblock -7386 100 -6012 redstone_wire
execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage4,scores={doors_rand=2}] run setblock -7386 100 -6011 redstone_wire

execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage4,scores={doors_rand=3}] run setblock -7386 100 -5998 redstone_wire
execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage4,scores={doors_rand=3}] run setblock -7386 100 -5997 redstone_wire

execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage4,scores={doors_rand=4}] run setblock -7386 100 -5984 redstone_wire
execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage4,scores={doors_rand=4}] run setblock -7386 100 -5983 redstone_wire

execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage4,scores={doors_rand=5}] run setblock -7386 100 -5970 redstone_wire
execute if entity @e[type=area_effect_cloud,tag=tgttos,tag=doors,tag=stage4,scores={doors_rand=5}] run setblock -7386 100 -5969 redstone_wire

# Finished.

kill @e[type=area_effect_cloud,tag=tgttos,tag=doors]
scoreboard objectives remove doors_rand
forceload remove -7500 -6050 -7350 -5950