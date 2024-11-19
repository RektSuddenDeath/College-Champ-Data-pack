
scoreboard players set bellbonus sba_game 1
tellraw @a ["",{"selector":"@s","bold": true},{"text": "率先敲响了","bold": true,"color": "aqua"},{"text": "Technobell","bold": true,"color": "light_purple"},{"text": "，获得了额外加分！","bold": true,"color": "aqua"}]

execute if entity @s[team=red] run scoreboard players add @a[team=red] sba_indvscore 25
execute if entity @s[team=red] run scoreboard players add @a[team=red] sba_roundscore 25
execute if entity @s[team=red] run execute as @a[team=red] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1
execute if entity @s[team=red] run tellraw @a[team=red] ["","[§6+25分","§r] ",{"selector":"@s"},{"text": "获得了首先敲响钟奖励！","color": "aqua"}]

execute if entity @s[team=blue] run scoreboard players add @a[team=blue] sba_indvscore 25
execute if entity @s[team=blue] run scoreboard players add @a[team=blue] sba_roundscore 25
execute if entity @s[team=blue] run execute as @a[team=blue] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1
execute if entity @s[team=blue] run tellraw @a[team=blue] ["","[§6+25分","§r] ",{"selector":"@s"},{"text": "获得了首先敲响钟奖励！","color": "aqua"}]

execute if entity @s[team=green] run scoreboard players add @a[team=green] sba_indvscore 25
execute if entity @s[team=green] run scoreboard players add @a[team=green] sba_roundscore 25
execute if entity @s[team=green] run execute as @a[team=green] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1
execute if entity @s[team=green] run tellraw @a[team=green] ["","[§6+25分","§r] ",{"selector":"@s"},{"text": "获得了首先敲响钟奖励！","color": "aqua"}]

execute if entity @s[team=yellow] run scoreboard players add @a[team=yellow] sba_indvscore 25
execute if entity @s[team=yellow] run scoreboard players add @a[team=yellow] sba_roundscore 25
execute if entity @s[team=yellow] run execute as @a[team=yellow] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1
execute if entity @s[team=yellow] run tellraw @a[team=yellow] ["","[§6+25分","§r] ",{"selector":"@s"},{"text": "获得了首先敲响钟奖励！","color": "aqua"}]

execute if entity @s[team=orange] run scoreboard players add @a[team=orange] sba_indvscore 25
execute if entity @s[team=orange] run scoreboard players add @a[team=orange] sba_roundscore 25
execute if entity @s[team=orange] run execute as @a[team=orange] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1
execute if entity @s[team=orange] run tellraw @a[team=orange] ["","[§6+25分","§r] ",{"selector":"@s"},{"text": "获得了首先敲响钟奖励！","color": "aqua"}]

execute if entity @s[team=cyan] run scoreboard players add @a[team=cyan] sba_indvscore 25
execute if entity @s[team=cyan] run scoreboard players add @a[team=cyan] sba_roundscore 25
execute if entity @s[team=cyan] run execute as @a[team=cyan] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1
execute if entity @s[team=cyan] run tellraw @a[team=cyan] ["","[§6+25分","§r] ",{"selector":"@s"},{"text": "获得了首先敲响钟奖励！","color": "aqua"}]

execute if entity @s[team=purple] run scoreboard players add @a[team=purple] sba_indvscore 25
execute if entity @s[team=purple] run scoreboard players add @a[team=purple] sba_roundscore 25
execute if entity @s[team=purple] run execute as @a[team=purple] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1
execute if entity @s[team=purple] run tellraw @a[team=purple] ["","[§6+25分","§r] ",{"selector":"@s"},{"text": "获得了首先敲响钟奖励！","color": "aqua"}]

execute if entity @s[team=pink] run scoreboard players add @a[team=pink] sba_indvscore 25
execute if entity @s[team=pink] run scoreboard players add @a[team=pink] sba_roundscore 25
execute if entity @s[team=pink] run execute as @a[team=pink] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1
execute if entity @s[team=pink] run tellraw @a[team=pink] ["","[§6+25分","§r] ",{"selector":"@s"},{"text": "获得了首先敲响钟奖励！","color": "aqua"}]