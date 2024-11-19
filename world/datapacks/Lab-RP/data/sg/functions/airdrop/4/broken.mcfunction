
execute as @e[type=marker,tag=airdrop_selected] at @s run setblock ~ ~-2 ~ red_stained_glass
execute as @e[type=marker,tag=airdrop_selected] at @s run tag @s add airdrop_broken
execute as @e[type=marker,tag=airdrop_selected] at @s run kill @e[type=text_display,distance=0..4,tag=airdrop_hologram]
execute as @e[type=marker,tag=airdrop_selected] at @s run tag @s remove airdrop_selected
schedule function sg:airdrop/4/reset 10s

tellraw @a ["","§b[§r浟§b] ","§d§l空投§e§l#",{"score":{"name": "airdropNo","objective": "sg_game"},"color": "yellow","bold": true},"§d§l被",{"selector":"@s"},"§d§l破坏了！"]

execute if entity @s[team=red] run tellraw @a[team=red] ["[§6+",{"score":{"name": "airdropValue","objective": "sg_game"},"color": "gold"},"§6分","] ","§d破坏空投奖励！"]
execute if entity @s[team=red] run execute as @a[team=red] run scoreboard players operation @s sg_indvscore += airdropValue sg_game
execute if entity @s[team=red] run execute as @a[team=red] at @s run playsound sound.acquire record @s

execute if entity @s[team=blue] run tellraw @a[team=blue] ["[§6+",{"score":{"name": "airdropValue","objective": "sg_game"},"color": "gold"},"§6分","] ","§d破坏空投奖励！"]
execute if entity @s[team=blue] run execute as @a[team=blue] run scoreboard players operation @s sg_indvscore += airdropValue sg_game
execute if entity @s[team=blue] run execute as @a[team=blue] at @s run playsound sound.acquire record @s

execute if entity @s[team=green] run tellraw @a[team=green] ["[§6+",{"score":{"name": "airdropValue","objective": "sg_game"},"color": "gold"},"§6分","] ","§d破坏空投奖励！"]
execute if entity @s[team=green] run execute as @a[team=green] run scoreboard players operation @s sg_indvscore += airdropValue sg_game
execute if entity @s[team=green] run execute as @a[team=green] at @s run playsound sound.acquire record @s

execute if entity @s[team=yellow] run tellraw @a[team=yellow] ["[§6+",{"score":{"name": "airdropValue","objective": "sg_game"},"color": "gold"},"§6分","] ","§d破坏空投奖励！"]
execute if entity @s[team=yellow] run execute as @a[team=yellow] run scoreboard players operation @s sg_indvscore += airdropValue sg_game
execute if entity @s[team=yellow] run execute as @a[team=yellow] at @s run playsound sound.acquire record @s

execute if entity @s[team=cyan] run tellraw @a[team=cyan] ["[§6+",{"score":{"name": "airdropValue","objective": "sg_game"},"color": "gold"},"§6分","] ","§d破坏空投奖励！"]
execute if entity @s[team=cyan] run execute as @a[team=cyan] run scoreboard players operation @s sg_indvscore += airdropValue sg_game
execute if entity @s[team=cyan] run execute as @a[team=cyan] at @s run playsound sound.acquire record @s

execute if entity @s[team=pink] run tellraw @a[team=pink] ["[§6+",{"score":{"name": "airdropValue","objective": "sg_game"},"color": "gold"},"§6分","] ","§d破坏空投奖励！"]
execute if entity @s[team=pink] run execute as @a[team=pink] run scoreboard players operation @s sg_indvscore += airdropValue sg_game
execute if entity @s[team=pink] run execute as @a[team=pink] at @s run playsound sound.acquire record @s

execute if entity @s[team=orange] run tellraw @a[team=orange] ["[§6+",{"score":{"name": "airdropValue","objective": "sg_game"},"color": "gold"},"§6分","] ","§d破坏空投奖励！"]
execute if entity @s[team=orange] run execute as @a[team=orange] run scoreboard players operation @s sg_indvscore += airdropValue sg_game
execute if entity @s[team=orange] run execute as @a[team=orange] at @s run playsound sound.acquire record @s

execute if entity @s[team=purple] run tellraw @a[team=purple] ["[§6+",{"score":{"name": "airdropValue","objective": "sg_game"},"color": "gold"},"§6分","] ","§d破坏空投奖励！"]
execute if entity @s[team=purple] run execute as @a[team=purple] run scoreboard players operation @s sg_indvscore += airdropValue sg_game
execute if entity @s[team=purple] run execute as @a[team=purple] at @s run playsound sound.acquire record @s