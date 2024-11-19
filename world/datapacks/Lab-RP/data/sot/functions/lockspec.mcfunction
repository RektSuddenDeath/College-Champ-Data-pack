execute if score YellowPlaying SotGame matches 1 run execute as @a[team=yellow,gamemode=spectator] at @s run spectate
execute if score YellowPlaying SotGame matches 1 run execute as @a[team=yellow,gamemode=spectator] at @s run spectate @a[team=yellow,gamemode=adventure,limit=1,sort=nearest] @s
execute if score RedPlaying SotGame matches 1 run execute as @a[team=red,gamemode=spectator] at @s run spectate
execute if score RedPlaying SotGame matches 1 run execute as @a[team=red,gamemode=spectator] at @s run spectate @a[team=red,gamemode=adventure,limit=1,sort=nearest] @s
execute if score PurplePlaying SotGame matches 1 run execute as @a[team=purple,gamemode=spectator] at @s run spectate
execute if score PurplePlaying SotGame matches 1 run execute as @a[team=purple,gamemode=spectator] at @s run spectate @a[team=purple,gamemode=adventure,limit=1,sort=nearest] @s
execute if score PinkPlaying SotGame matches 1 run execute as @a[team=pink,gamemode=spectator] at @s run spectate
execute if score PinkPlaying SotGame matches 1 run execute as @a[team=pink,gamemode=spectator] at @s run spectate @a[team=pink,gamemode=adventure,limit=1,sort=nearest] @s
execute if score OrangePlaying SotGame matches 1 run execute as @a[team=orange,gamemode=spectator] at @s run spectate
execute if score OrangePlaying SotGame matches 1 run execute as @a[team=orange,gamemode=spectator] at @s run spectate @a[team=orange,gamemode=adventure,limit=1,sort=nearest] @s
execute if score GreenPlaying SotGame matches 1 run execute as @a[team=green,gamemode=spectator] at @s run spectate
execute if score GreenPlaying SotGame matches 1 run execute as @a[team=green,gamemode=spectator] at @s run spectate @a[team=green,gamemode=adventure,limit=1,sort=nearest] @s
execute if score BluePlaying SotGame matches 1 run execute as @a[team=blue,gamemode=spectator] at @s run spectate
execute if score BluePlaying SotGame matches 1 run execute as @a[team=blue,gamemode=spectator] at @s run spectate @a[team=blue,gamemode=adventure,limit=1,sort=nearest] @s
execute if score CyanPlaying SotGame matches 1 run execute as @a[team=cyan,gamemode=spectator] at @s run spectate
execute if score CyanPlaying SotGame matches 1 run execute as @a[team=cyan,gamemode=spectator] at @s run spectate @a[team=cyan,gamemode=adventure,limit=1,sort=nearest] @s

execute if score gameflag SotGame matches 1 run schedule function sot:lockspec 2t