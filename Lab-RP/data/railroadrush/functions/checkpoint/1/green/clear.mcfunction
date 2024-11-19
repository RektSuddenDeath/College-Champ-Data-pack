
tellraw @a ["§b[§r褿§b] ",{"translate":"team.green"},"§b已通过存档点","§f#1","§b!"]
tellraw @a[team=green] ["§6[§r獍§6] 一辆轨道修复矿车已从该存档点起始点发出，将对该存档点的轨道进行加固。"]
execute as @a[team=green] at @s run playsound sound.majoracquire record @s
scoreboard players set green rrr_checkpoint_reached 1

function railroadrush:checkpoint/1/green/summon_railfixer
function railroadrush:checkpoint/2/green/setup