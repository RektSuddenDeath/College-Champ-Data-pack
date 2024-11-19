
execute as @a[team=red,scores={rrr_emerald_personal=1..}] run execute as @a[team=red] at @s run playsound sound.coinsminor record @s
execute as @a[team=red,scores={rrr_emerald_personal=1..}] run scoreboard players add red rrr_emerald_team 1

execute as @a[team=blue,scores={rrr_emerald_personal=1..}] run execute as @a[team=blue] at @s run playsound sound.coinsminor record @s
execute as @a[team=blue,scores={rrr_emerald_personal=1..}] run scoreboard players add blue rrr_emerald_team 1

execute as @a[team=green,scores={rrr_emerald_personal=1..}] run execute as @a[team=green] at @s run playsound sound.coinsminor record @s
execute as @a[team=green,scores={rrr_emerald_personal=1..}] run scoreboard players add green rrr_emerald_team 1

execute as @a[team=yellow,scores={rrr_emerald_personal=1..}] run execute as @a[team=yellow] at @s run playsound sound.coinsminor record @s
execute as @a[team=yellow,scores={rrr_emerald_personal=1..}] run scoreboard players add yellow rrr_emerald_team 1

execute as @a[team=cyan,scores={rrr_emerald_personal=1..}] run execute as @a[team=cyan] at @s run playsound sound.coinsminor record @s
execute as @a[team=cyan,scores={rrr_emerald_personal=1..}] run scoreboard players add cyan rrr_emerald_team 1

execute as @a[team=pink,scores={rrr_emerald_personal=1..}] run execute as @a[team=pink] at @s run playsound sound.coinsminor record @s
execute as @a[team=pink,scores={rrr_emerald_personal=1..}] run scoreboard players add pink rrr_emerald_team 1

execute as @a[team=orange,scores={rrr_emerald_personal=1..}] run execute as @a[team=orange] at @s run playsound sound.coinsminor record @s
execute as @a[team=orange,scores={rrr_emerald_personal=1..}] run scoreboard players add orange rrr_emerald_team 1

execute as @a[team=purple,scores={rrr_emerald_personal=1..}] run execute as @a[team=purple] at @s run playsound sound.coinsminor record @s
execute as @a[team=purple,scores={rrr_emerald_personal=1..}] run scoreboard players add purple rrr_emerald_team 1

scoreboard players set @a rrr_emerald_personal 0
execute if score gameflag rrr_game matches 1 run schedule function railroadrush:emerald 1t