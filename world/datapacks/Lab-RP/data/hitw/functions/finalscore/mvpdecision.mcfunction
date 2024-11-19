
scoreboard players set NextRank mvp 0
scoreboard players add @a[team=!spec] mvp 5
execute store success score NextRank mvp run execute as @a[team=!spec,scores={mvp=900..904}] run scoreboard players operation @s mvprank = CurrentRank mvp
execute if score NextRank mvp matches 1 run scoreboard players add CurrentRank mvp 1

execute unless score PlayerCount mvp < CurrentRank mvp run schedule function hitw:finalscore/mvpdecision 1t