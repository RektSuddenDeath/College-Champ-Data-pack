
tellraw @a ["§b[§r褿§b] ",{"translate":"team.orange"},"§b已通过存档点","§f#3","§b!"]
tellraw @a[team=orange] ["§6[§r獍§6] 一辆轨道修复矿车已从该存档点起始点发出，将对该存档点的轨道进行加固。"]
execute as @a[team=orange] at @s run playsound sound.majoracquire record @s
scoreboard players set orange rrr_checkpoint_reached 3

function railroadrush:checkpoint/3/orange/summon_railfixer
function railroadrush:checkpoint/4/orange/setup