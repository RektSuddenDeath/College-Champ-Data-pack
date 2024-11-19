
execute if score red meltdown_team_placement matches 0 run execute as @a[team=red,gamemode=spectator] at @s run spectate
execute if score red meltdown_team_placement matches 0 run execute as @a[team=red,gamemode=spectator] at @s run spectate @a[team=red,gamemode=adventure,limit=1,sort=nearest] @s
execute if score blue meltdown_team_placement matches 0 run execute as @a[team=blue,gamemode=spectator] at @s run spectate
execute if score blue meltdown_team_placement matches 0 run execute as @a[team=blue,gamemode=spectator] at @s run spectate @a[team=blue,gamemode=adventure,limit=1,sort=nearest] @s
execute if score green meltdown_team_placement matches 0 run execute as @a[team=green,gamemode=spectator] at @s run spectate
execute if score green meltdown_team_placement matches 0 run execute as @a[team=green,gamemode=spectator] at @s run spectate @a[team=green,gamemode=adventure,limit=1,sort=nearest] @s
execute if score yellow meltdown_team_placement matches 0 run execute as @a[team=yellow,gamemode=spectator] at @s run spectate
execute if score yellow meltdown_team_placement matches 0 run execute as @a[team=yellow,gamemode=spectator] at @s run spectate @a[team=yellow,gamemode=adventure,limit=1,sort=nearest] @s
execute if score cyan meltdown_team_placement matches 0 run execute as @a[team=cyan,gamemode=spectator] at @s run spectate
execute if score cyan meltdown_team_placement matches 0 run execute as @a[team=cyan,gamemode=spectator] at @s run spectate @a[team=cyan,gamemode=adventure,limit=1,sort=nearest] @s
execute if score pink meltdown_team_placement matches 0 run execute as @a[team=pink,gamemode=spectator] at @s run spectate
execute if score pink meltdown_team_placement matches 0 run execute as @a[team=pink,gamemode=spectator] at @s run spectate @a[team=pink,gamemode=adventure,limit=1,sort=nearest] @s
execute if score orange meltdown_team_placement matches 0 run execute as @a[team=orange,gamemode=spectator] at @s run spectate
execute if score orange meltdown_team_placement matches 0 run execute as @a[team=orange,gamemode=spectator] at @s run spectate @a[team=orange,gamemode=adventure,limit=1,sort=nearest] @s
execute if score purple meltdown_team_placement matches 0 run execute as @a[team=purple,gamemode=spectator] at @s run spectate
execute if score purple meltdown_team_placement matches 0 run execute as @a[team=purple,gamemode=spectator] at @s run spectate @a[team=purple,gamemode=adventure,limit=1,sort=nearest] @s
execute if score gameflag meltdown_game matches 1 run schedule function meltdown:lockspec 2t