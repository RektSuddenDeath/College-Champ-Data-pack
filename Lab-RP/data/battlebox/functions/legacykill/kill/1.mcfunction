
# On the killer's perspective, broadcasting kills to Own Team and Victim Team.
execute as @a[team=red] if score @s bb_kills matches 1.. run function battlebox:kill/kill/red
execute as @a[team=red] if score @s blueKills matches 1.. run function battlebox:kill/victim/blue
execute as @a[team=red] if score @s greenKills matches 1.. run function battlebox:kill/victim/green
execute as @a[team=red] if score @s yellowKills matches 1.. run function battlebox:kill/victim/yellow
execute as @a[team=red] if score @s pinkKills matches 1.. run function battlebox:kill/victim/pink
execute as @a[team=red] if score @s purpleKills matches 1.. run function battlebox:kill/victim/purple
execute as @a[team=red] if score @s cyanKills matches 1.. run function battlebox:kill/victim/cyan
execute as @a[team=red] if score @s orangeKills matches 1.. run function battlebox:kill/victim/orange

execute as @a[team=blue] if score @s bb_kills matches 1.. run function battlebox:kill/kill/blue
execute as @a[team=blue] if score @s redKills matches 1.. run function battlebox:kill/victim/red
execute as @a[team=blue] if score @s greenKills matches 1.. run function battlebox:kill/victim/green
execute as @a[team=blue] if score @s yellowKills matches 1.. run function battlebox:kill/victim/yellow
execute as @a[team=blue] if score @s pinkKills matches 1.. run function battlebox:kill/victim/pink
execute as @a[team=blue] if score @s purpleKills matches 1.. run function battlebox:kill/victim/purple
execute as @a[team=blue] if score @s cyanKills matches 1.. run function battlebox:kill/victim/cyan
execute as @a[team=blue] if score @s orangeKills matches 1.. run function battlebox:kill/victim/orange

execute as @a[team=green] if score @s bb_kills matches 1.. run function battlebox:kill/kill/green
execute as @a[team=green] if score @s blueKills matches 1.. run function battlebox:kill/victim/blue
execute as @a[team=green] if score @s redKills matches 1.. run function battlebox:kill/victim/red
execute as @a[team=green] if score @s yellowKills matches 1.. run function battlebox:kill/victim/yellow
execute as @a[team=green] if score @s pinkKills matches 1.. run function battlebox:kill/victim/pink
execute as @a[team=green] if score @s purpleKills matches 1.. run function battlebox:kill/victim/purple
execute as @a[team=green] if score @s cyanKills matches 1.. run function battlebox:kill/victim/cyan
execute as @a[team=green] if score @s orangeKills matches 1.. run function battlebox:kill/victim/orange

execute as @a[team=yellow] if score @s bb_kills matches 1.. run function battlebox:kill/kill/yellow
execute as @a[team=yellow] if score @s blueKills matches 1.. run function battlebox:kill/victim/blue
execute as @a[team=yellow] if score @s greenKills matches 1.. run function battlebox:kill/victim/green
execute as @a[team=yellow] if score @s redKills matches 1.. run function battlebox:kill/victim/red
execute as @a[team=yellow] if score @s pinkKills matches 1.. run function battlebox:kill/victim/pink
execute as @a[team=yellow] if score @s purpleKills matches 1.. run function battlebox:kill/victim/purple
execute as @a[team=yellow] if score @s cyanKills matches 1.. run function battlebox:kill/victim/cyan
execute as @a[team=yellow] if score @s orangeKills matches 1.. run function battlebox:kill/victim/orange

execute as @a[team=pink] if score @s bb_kills matches 1.. run function battlebox:kill/kill/pink
execute as @a[team=pink] if score @s blueKills matches 1.. run function battlebox:kill/victim/blue
execute as @a[team=pink] if score @s greenKills matches 1.. run function battlebox:kill/victim/green
execute as @a[team=pink] if score @s yellowKills matches 1.. run function battlebox:kill/victim/yellow
execute as @a[team=pink] if score @s redKills matches 1.. run function battlebox:kill/victim/red
execute as @a[team=pink] if score @s purpleKills matches 1.. run function battlebox:kill/victim/purple
execute as @a[team=pink] if score @s cyanKills matches 1.. run function battlebox:kill/victim/cyan
execute as @a[team=pink] if score @s orangeKills matches 1.. run function battlebox:kill/victim/orange

execute as @a[team=purple] if score @s bb_kills matches 1.. run function battlebox:kill/kill/purple
execute as @a[team=purple] if score @s blueKills matches 1.. run function battlebox:kill/victim/blue
execute as @a[team=purple] if score @s greenKills matches 1.. run function battlebox:kill/victim/green
execute as @a[team=purple] if score @s yellowKills matches 1.. run function battlebox:kill/victim/yellow
execute as @a[team=purple] if score @s pinkKills matches 1.. run function battlebox:kill/victim/pink
execute as @a[team=purple] if score @s redKills matches 1.. run function battlebox:kill/victim/red
execute as @a[team=purple] if score @s cyanKills matches 1.. run function battlebox:kill/victim/cyan
execute as @a[team=purple] if score @s orangeKills matches 1.. run function battlebox:kill/victim/orange

execute as @a[team=cyan] if score @s bb_kills matches 1.. run function battlebox:kill/kill/cyan
execute as @a[team=cyan] if score @s blueKills matches 1.. run function battlebox:kill/victim/blue
execute as @a[team=cyan] if score @s greenKills matches 1.. run function battlebox:kill/victim/green
execute as @a[team=cyan] if score @s yellowKills matches 1.. run function battlebox:kill/victim/yellow
execute as @a[team=cyan] if score @s pinkKills matches 1.. run function battlebox:kill/victim/pink
execute as @a[team=cyan] if score @s purpleKills matches 1.. run function battlebox:kill/victim/purple
execute as @a[team=cyan] if score @s redKills matches 1.. run function battlebox:kill/victim/red
execute as @a[team=cyan] if score @s orangeKills matches 1.. run function battlebox:kill/victim/orange

execute as @a[team=orange] if score @s bb_kills matches 1.. run function battlebox:kill/kill/orange
execute as @a[team=orange] if score @s blueKills matches 1.. run function battlebox:kill/victim/blue
execute as @a[team=orange] if score @s greenKills matches 1.. run function battlebox:kill/victim/green
execute as @a[team=orange] if score @s yellowKills matches 1.. run function battlebox:kill/victim/yellow
execute as @a[team=orange] if score @s pinkKills matches 1.. run function battlebox:kill/victim/pink
execute as @a[team=orange] if score @s purpleKills matches 1.. run function battlebox:kill/victim/purple
execute as @a[team=orange] if score @s cyanKills matches 1.. run function battlebox:kill/victim/cyan
execute as @a[team=orange] if score @s redKills matches 1.. run function battlebox:kill/victim/red

# Cleanup
scoreboard players set @a bb_kills 0
scoreboard players set @a bb_death 0

scoreboard players set @a redKills 0
scoreboard players set @a blueKills 0
scoreboard players set @a greenKills 0
scoreboard players set @a yellowKills 0
scoreboard players set @a pinkKills 0
scoreboard players set @a purpleKills 0
scoreboard players set @a cyanKills 0
scoreboard players set @a orangeKills 0

scoreboard players set @a killedByRed 0
scoreboard players set @a killedByBlue 0
scoreboard players set @a killedByGreen 0
scoreboard players set @a killedByYellow 0
scoreboard players set @a killedByPink 0
scoreboard players set @a killedByPurple 0
scoreboard players set @a killedByCyan 0
scoreboard players set @a killedByOrange 0