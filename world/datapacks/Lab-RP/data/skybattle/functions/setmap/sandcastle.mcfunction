
scoreboard players set map sba_game 2
tellraw @s "正在配置 SKY BATTLE:SANDCASTLE. 此操作需要一分钟。"

function skybattle:structure/zone1/sandcastle/place
schedule function skybattle:structure/zone2/sandcastle/place 20s
schedule function skybattle:structure/zone3/sandcastle/place 40s