
$tp @s $(x) $(y) $(z) 90 0

execute at @s unless block ~ ~ ~ air if block ~ ~1 ~ air run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ air unless block ~ ~1 ~ air run tp @s ~ ~2 ~