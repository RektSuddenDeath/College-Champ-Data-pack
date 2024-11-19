
scoreboard players set map sba_game 1
tellraw @s "正在配置 SKY BATTLE:CLASSIC. 此操作需要一分钟。"

function skybattle:structure/zone1/classic/place
schedule function skybattle:structure/zone2/classic/place 20s
schedule function skybattle:structure/zone3/classic/place 40s