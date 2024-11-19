
# 这个是测试函数。将每tick模拟一个对战情况，并尝试进行下一轮的matchmaking.每一次循环为8 TICKS （0.4秒）。模拟300次比赛。
scoreboard objectives add swiss_test dummy
scoreboard players set cycles swiss_test 0
scoreboard players set step swiss_test 0
scoreboard players set fails swiss_test 0

scoreboard objectives add swiss_test_wins dummy
scoreboard players set red swiss_test_wins 0
scoreboard players set blue swiss_test_wins 0
scoreboard players set green swiss_test_wins 0
scoreboard players set yellow swiss_test_wins 0
scoreboard players set cyan swiss_test_wins 0
scoreboard players set pink swiss_test_wins 0
scoreboard players set orange swiss_test_wins 0
scoreboard players set purple swiss_test_wins 0

function utils:swiss/init_match
function utils:swiss/test/loop