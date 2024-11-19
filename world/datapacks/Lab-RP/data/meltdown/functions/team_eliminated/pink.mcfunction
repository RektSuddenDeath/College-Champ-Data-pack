
tellraw @a ["[§c☠☠☠§f] ",{"translate":"team.pink"},"已被团灭！"]
execute as @a at @s run playsound sound.team_eliminated record @s
execute as @a[team=pink] run spectate
scoreboard players operation pink meltdown_team_placement = RemainingTeams meltdown_team_placement
scoreboard players remove RemainingTeams meltdown_team_placement 1