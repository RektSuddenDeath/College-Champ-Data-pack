
kill @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}]

execute if entity @p[team=red,scores={sg_star_used=1..}] if score red sg_respawns_left matches 1.. run execute as @a[team=red,gamemode=spectator,sort=random,limit=1] run function sg:respawn/me
execute if entity @p[team=blue,scores={sg_star_used=1..}] if score blue sg_respawns_left matches 1.. run execute as @a[team=blue,gamemode=spectator,sort=random,limit=1] run function sg:respawn/me
execute if entity @p[team=green,scores={sg_star_used=1..}] if score green sg_respawns_left matches 1.. run execute as @a[team=green,gamemode=spectator,sort=random,limit=1] run function sg:respawn/me
execute if entity @p[team=yellow,scores={sg_star_used=1..}] if score yellow sg_respawns_left matches 1.. run execute as @a[team=yellow,gamemode=spectator,sort=random,limit=1] run function sg:respawn/me
execute if entity @p[team=cyan,scores={sg_star_used=1..}] if score cyan sg_respawns_left matches 1.. run execute as @a[team=cyan,gamemode=spectator,sort=random,limit=1] run function sg:respawn/me
execute if entity @p[team=pink,scores={sg_star_used=1..}] if score pink sg_respawns_left matches 1.. run execute as @a[team=pink,gamemode=spectator,sort=random,limit=1] run function sg:respawn/me
execute if entity @p[team=orange,scores={sg_star_used=1..}] if score orange sg_respawns_left matches 1.. run execute as @a[team=orange,gamemode=spectator,sort=random,limit=1] run function sg:respawn/me
execute if entity @p[team=purple,scores={sg_star_used=1..}] if score purple sg_respawns_left matches 1.. run execute as @a[team=purple,gamemode=spectator,sort=random,limit=1] run function sg:respawn/me


scoreboard players set @a sg_star_used 0
execute if score gameflag sg_game matches 1 run schedule function sg:respawn/detect 1t