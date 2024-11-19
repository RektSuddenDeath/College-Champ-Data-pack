
scoreboard players set TotalTeams meltdown_team_placement 0

execute if entity @p[team=red] run scoreboard players add TotalTeams meltdown_team_placement 1
execute if entity @p[team=blue] run scoreboard players add TotalTeams meltdown_team_placement 1
execute if entity @p[team=green] run scoreboard players add TotalTeams meltdown_team_placement 1
execute if entity @p[team=yellow] run scoreboard players add TotalTeams meltdown_team_placement 1
execute if entity @p[team=cyan] run scoreboard players add TotalTeams meltdown_team_placement 1
execute if entity @p[team=pink] run scoreboard players add TotalTeams meltdown_team_placement 1
execute if entity @p[team=orange] run scoreboard players add TotalTeams meltdown_team_placement 1
execute if entity @p[team=purple] run scoreboard players add TotalTeams meltdown_team_placement 1

scoreboard players operation RemainingTeams meltdown_team_placement = TotalTeams meltdown_team_placement

execute if entity @p[team=red] run scoreboard players set red meltdown_team_placement 0
execute unless entity @p[team=red] run scoreboard players set red meltdown_team_placement -1

execute if entity @p[team=blue] run scoreboard players set blue meltdown_team_placement 0
execute unless entity @p[team=blue] run scoreboard players set blue meltdown_team_placement -1

execute if entity @p[team=green] run scoreboard players set green meltdown_team_placement 0
execute unless entity @p[team=green] run scoreboard players set green meltdown_team_placement -1

execute if entity @p[team=yellow] run scoreboard players set yellow meltdown_team_placement 0
execute unless entity @p[team=yellow] run scoreboard players set yellow meltdown_team_placement -1

execute if entity @p[team=cyan] run scoreboard players set cyan meltdown_team_placement 0
execute unless entity @p[team=cyan] run scoreboard players set cyan meltdown_team_placement -1

execute if entity @p[team=pink] run scoreboard players set pink meltdown_team_placement 0
execute unless entity @p[team=pink] run scoreboard players set pink meltdown_team_placement -1

execute if entity @p[team=orange] run scoreboard players set orange meltdown_team_placement 0
execute unless entity @p[team=orange] run scoreboard players set orange meltdown_team_placement -1

execute if entity @p[team=purple] run scoreboard players set purple meltdown_team_placement 0
execute unless entity @p[team=purple] run scoreboard players set purple meltdown_team_placement -1