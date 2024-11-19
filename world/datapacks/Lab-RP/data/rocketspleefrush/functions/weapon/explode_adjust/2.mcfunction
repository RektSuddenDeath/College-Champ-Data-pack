
# 校验函数，检查这个位置是否在方块内部或者触碰到玩家

$execute positioned ~$(x) ~$(y) ~$(z) unless block ~ ~ ~ air run return 1
$execute positioned ~$(x) ~$(y) ~$(z) if entity @a[gamemode=!spectator,distance=..0.8] run return 1
$execute positioned ~$(x) ~$(y) ~$(z) if entity @e[type=marker,tag=rsr_player_position_record,distance=..0.8] run return 1
return 0