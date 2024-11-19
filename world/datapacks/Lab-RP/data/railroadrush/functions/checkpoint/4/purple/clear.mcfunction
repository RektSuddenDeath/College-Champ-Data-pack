
tellraw @a ["§b[§r褿§b] ",{"translate":"team.purple"},"§b已通过存档点","§f#4","§b!"]
tellraw @a[team=purple] ["§6[§r獍§6] 一辆轨道修复矿车已从该存档点起始点发出，将对该存档点的轨道进行加固。"]
execute as @a[team=purple] at @s run playsound sound.majoracquire record @s
scoreboard players set purple rrr_checkpoint_reached 4

function railroadrush:checkpoint/4/purple/summon_railfixer
function railroadrush:checkpoint/5/purple/setup