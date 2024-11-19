
scoreboard objectives add sg_resp_pleft dummy
scoreboard objectives add sg_respawns_left dummy
scoreboard objectives add sg_star_used dropped:minecraft.nether_star
scoreboard objectives add sg_dmg_dealt_r custom:damage_dealt

scoreboard players set @a sg_star_used 0

scoreboard players set red sg_resp_pleft 0
scoreboard players set blue sg_resp_pleft 0
scoreboard players set green sg_resp_pleft 0
scoreboard players set yellow sg_resp_pleft 0
scoreboard players set cyan sg_resp_pleft 0
scoreboard players set pink sg_resp_pleft 0
scoreboard players set orange sg_resp_pleft 0
scoreboard players set purple sg_resp_pleft 0

scoreboard players set red sg_respawns_left 0
scoreboard players set blue sg_respawns_left 0
scoreboard players set green sg_respawns_left 0
scoreboard players set yellow sg_respawns_left 0
scoreboard players set cyan sg_respawns_left 0
scoreboard players set pink sg_respawns_left 0
scoreboard players set orange sg_respawns_left 0
scoreboard players set purple sg_respawns_left 0

scoreboard players set total sg_respawns_left 3

scoreboard players set revivalActive sg_game 1

execute as @a[team=red,gamemode=adventure] run scoreboard players add red sg_resp_pleft 1
execute as @a[team=blue,gamemode=adventure] run scoreboard players add blue sg_resp_pleft 1
execute as @a[team=green,gamemode=adventure] run scoreboard players add green sg_resp_pleft 1
execute as @a[team=yellow,gamemode=adventure] run scoreboard players add yellow sg_resp_pleft 1
execute as @a[team=cyan,gamemode=adventure] run scoreboard players add cyan sg_resp_pleft 1
execute as @a[team=pink,gamemode=adventure] run scoreboard players add pink sg_resp_pleft 1
execute as @a[team=orange,gamemode=adventure] run scoreboard players add orange sg_resp_pleft 1
execute as @a[team=purple,gamemode=adventure] run scoreboard players add purple sg_resp_pleft 1

tellraw @a ["","§b[§r坕§b] ","§a§l复活任务已开始！"]
execute as @a at @s run playsound sound.mapupdate record @s

execute if score red sg_resp_pleft matches 1 run execute as @p[team=red,gamemode=adventure] at @s run function sg:respawn/summon_three
execute if score red sg_resp_pleft matches 1 run scoreboard players set red sg_respawns_left 2

execute if score red sg_resp_pleft matches 2 run execute as @a[team=red,gamemode=adventure] at @s run function sg:respawn/summon_one
execute if score red sg_resp_pleft matches 2 run scoreboard players set red sg_respawns_left 1

execute if score blue sg_resp_pleft matches 1 run execute as @p[team=blue,gamemode=adventure] at @s run function sg:respawn/summon_three
execute if score blue sg_resp_pleft matches 1 run scoreboard players set blue sg_respawns_left 2

execute if score blue sg_resp_pleft matches 2 run execute as @a[team=blue,gamemode=adventure] at @s run function sg:respawn/summon_one
execute if score blue sg_resp_pleft matches 2 run scoreboard players set blue sg_respawns_left 1

execute if score green sg_resp_pleft matches 1 run execute as @p[team=green,gamemode=adventure] at @s run function sg:respawn/summon_three
execute if score green sg_resp_pleft matches 1 run scoreboard players set green sg_respawns_left 2

execute if score green sg_resp_pleft matches 2 run execute as @a[team=green,gamemode=adventure] at @s run function sg:respawn/summon_one
execute if score green sg_resp_pleft matches 2 run scoreboard players set green sg_respawns_left 1

execute if score yellow sg_resp_pleft matches 1 run execute as @p[team=yellow,gamemode=adventure] at @s run function sg:respawn/summon_three
execute if score yellow sg_resp_pleft matches 1 run scoreboard players set yellow sg_respawns_left 2

execute if score yellow sg_resp_pleft matches 2 run execute as @a[team=yellow,gamemode=adventure] at @s run function sg:respawn/summon_one
execute if score yellow sg_resp_pleft matches 2 run scoreboard players set yellow sg_respawns_left 1

execute if score cyan sg_resp_pleft matches 1 run execute as @p[team=cyan,gamemode=adventure] at @s run function sg:respawn/summon_three
execute if score cyan sg_resp_pleft matches 1 run scoreboard players set cyan sg_respawns_left 2

execute if score cyan sg_resp_pleft matches 2 run execute as @a[team=cyan,gamemode=adventure] at @s run function sg:respawn/summon_one
execute if score cyan sg_resp_pleft matches 2 run scoreboard players set cyan sg_respawns_left 1

execute if score pink sg_resp_pleft matches 1 run execute as @p[team=pink,gamemode=adventure] at @s run function sg:respawn/summon_three
execute if score pink sg_resp_pleft matches 1 run scoreboard players set pink sg_respawns_left 2

execute if score pink sg_resp_pleft matches 2 run execute as @a[team=pink,gamemode=adventure] at @s run function sg:respawn/summon_one
execute if score pink sg_resp_pleft matches 2 run scoreboard players set pink sg_respawns_left 1

execute if score orange sg_resp_pleft matches 1 run execute as @p[team=orange,gamemode=adventure] at @s run function sg:respawn/summon_three
execute if score orange sg_resp_pleft matches 1 run scoreboard players set orange sg_respawns_left 2

execute if score orange sg_resp_pleft matches 2 run execute as @a[team=orange,gamemode=adventure] at @s run function sg:respawn/summon_one
execute if score orange sg_resp_pleft matches 2 run scoreboard players set orange sg_respawns_left 1

execute if score purple sg_resp_pleft matches 1 run execute as @p[team=purple,gamemode=adventure] at @s run function sg:respawn/summon_three
execute if score purple sg_resp_pleft matches 1 run scoreboard players set purple sg_respawns_left 2

execute if score purple sg_resp_pleft matches 2 run execute as @a[team=purple,gamemode=adventure] at @s run function sg:respawn/summon_one
execute if score purple sg_resp_pleft matches 2 run scoreboard players set purple sg_respawns_left 1

function sg:respawn/detect