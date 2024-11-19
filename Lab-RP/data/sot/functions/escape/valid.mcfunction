
execute as @a[gamemode=adventure,tag=!sumo_warden] at @s if block ~ ~ ~ nether_portal run tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," §f成功逃出了地牢，存入",{"score":{"name": "@s","objective": "SotPersonal_multi"},"color": "gold"},"金币。"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]


# Excludes cases when in Warden Sumo Modifier
execute as @a[gamemode=adventure,team=blue,tag=!sumo_warden] at @s if block ~ ~ ~ nether_portal run function sot:escape/blue
execute as @a[gamemode=adventure,team=red,tag=!sumo_warden] at @s if block ~ ~ ~ nether_portal run function sot:escape/red
execute as @a[gamemode=adventure,team=green,tag=!sumo_warden] at @s if block ~ ~ ~ nether_portal run function sot:escape/green
execute as @a[gamemode=adventure,team=yellow,tag=!sumo_warden] at @s if block ~ ~ ~ nether_portal run function sot:escape/yellow
execute as @a[gamemode=adventure,team=orange,tag=!sumo_warden] at @s if block ~ ~ ~ nether_portal run function sot:escape/orange
execute as @a[gamemode=adventure,team=pink,tag=!sumo_warden] at @s if block ~ ~ ~ nether_portal run function sot:escape/pink
execute as @a[gamemode=adventure,team=purple,tag=!sumo_warden] at @s if block ~ ~ ~ nether_portal run function sot:escape/purple
execute as @a[gamemode=adventure,team=cyan,tag=!sumo_warden] at @s if block ~ ~ ~ nether_portal run function sot:escape/cyan



execute if score gameflag SotGame matches 1 run schedule function sot:escape/valid 2t