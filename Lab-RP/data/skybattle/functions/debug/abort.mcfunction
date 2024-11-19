
scoreboard players set gameflag sba_game 0
gamemode spectator @a
scoreboard players set @a sba_death 0
execute as @a at @s run tp @s ~ 64 ~
effect give @a instant_health 1 19 true
function master:timer/pause
schedule clear skybattle:round/inittime
tellraw @s ["[§6DEBUG§r] Attempted to stop the current game."]