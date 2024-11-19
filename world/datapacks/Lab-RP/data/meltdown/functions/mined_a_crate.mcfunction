
execute as @s[team=red] run execute as @a[team=red] at @s run playsound sound.coinspickup record @s
execute as @s[team=blue] run execute as @a[team=blue] at @s run playsound sound.coinspickup record @s
execute as @s[team=green] run execute as @a[team=green] at @s run playsound sound.coinspickup record @s
execute as @s[team=yellow] run execute as @a[team=yellow] at @s run playsound sound.coinspickup record @s
execute as @s[team=cyan] run execute as @a[team=cyan] at @s run playsound sound.coinspickup record @s
execute as @s[team=pink] run execute as @a[team=pink] at @s run playsound sound.coinspickup record @s
execute as @s[team=orange] run execute as @a[team=orange] at @s run playsound sound.coinspickup record @s
execute as @s[team=purple] run execute as @a[team=purple] at @s run playsound sound.coinspickup record @s

execute as @s[team=red] run execute as @a[team=red] run scoreboard players operation @s meltdown_roundscore += per_crate_split meltdown_stats
execute as @s[team=blue] run execute as @a[team=blue] run scoreboard players operation @s meltdown_roundscore += per_crate_split meltdown_stats
execute as @s[team=green] run execute as @a[team=green] run scoreboard players operation @s meltdown_roundscore += per_crate_split meltdown_stats
execute as @s[team=yellow] run execute as @a[team=yellow] run scoreboard players operation @s meltdown_roundscore += per_crate_split meltdown_stats
execute as @s[team=cyan] run execute as @a[team=cyan] run scoreboard players operation @s meltdown_roundscore += per_crate_split meltdown_stats
execute as @s[team=pink] run execute as @a[team=pink] run scoreboard players operation @s meltdown_roundscore += per_crate_split meltdown_stats
execute as @s[team=orange] run execute as @a[team=orange] run scoreboard players operation @s meltdown_roundscore += per_crate_split meltdown_stats
execute as @s[team=purple] run execute as @a[team=purple] run scoreboard players operation @s meltdown_roundscore += per_crate_split meltdown_stats

scoreboard players add @s meltdown_recap_crates_gathered 1