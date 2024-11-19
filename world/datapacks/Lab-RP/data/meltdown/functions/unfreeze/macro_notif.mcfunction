
$tellraw @a[team=$(victim_team),tag=!temp_self] ["","§f[§c🔥§f] ",{"selector":"@s"},"§b脱离了冻结状态。"]
$tellraw @a[team=$(killer_team)] ["","§f[§c🔥§f] ",{"selector":"@s"},"§c脱离了冻结状态。"]
tellraw @a[team=spec] ["","§f[§c🔥§f] ",{"selector":"@s"},"§c脱离了冻结状态。"]

# Notif for killer
$tellraw @a[scores={univ_pid=$(attacker_pid)}] ["","[§c-",{"score":{"name":"unfreeze","objective":"meltdown_stats"},"color":"red"},"§c分§f] ","",{"selector":"@s"},"§c脱离了冻结状态。"]

# score
$execute as @a[scores={univ_pid=$(attacker_pid)}] run scoreboard players operation @s meltdown_roundscore -= unfreeze meltdown_stats
$execute as @a[scores={univ_pid=$(attacker_pid)}] run scoreboard players remove @s meltdown_roundKills 1