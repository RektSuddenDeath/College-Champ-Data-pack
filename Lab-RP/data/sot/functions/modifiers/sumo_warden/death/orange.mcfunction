# Drop Gold
function sot:death/dropgold
tellraw @a[team=orange] ["",{"selector":"@s"},{"text": "死了！其身上的金币已掉落在原地。","color":"red"}]

# FX
execute as @a[team=orange,scores={SotDeath=0}] at @s run playsound sound.team_eliminated record @s

# Player State
advancement revoke @s only sot:in_warden_fight
tag @s remove sumo_warden
gamemode spectator @s
tag @s remove sot_escaped