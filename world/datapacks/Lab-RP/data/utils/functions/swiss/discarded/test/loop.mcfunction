
scoreboard players add step swiss_test 1
execute if score step swiss_test matches 8 run scoreboard players add cycles swiss_test 1
execute if score step swiss_test matches 8 run tellraw @a ["Cycle ",{"score":{"name": "cycles","objective": "swiss_test"},"color":"green"}," Complete."," §f(",{"score":{"name": "fails","objective": "swiss_test"},"color":"red"},"§f)"]
#execute if score step swiss_test matches 8 run execute as @a run function utils:swiss/test/match_matrix
execute if score step swiss_test matches 8 run scoreboard players set step swiss_test 1
# 七轮完成，恢复到初始状态。
execute if score step swiss_test matches 1 run function utils:swiss/test/reset_state
# 如果不是第一轮，随机使得四个队伍获胜
execute if score step swiss_test matches 2..7 run function utils:swiss/test/random_winner

# 演算一轮。
scoreboard objectives add swiss_win_count dummy
scoreboard players operation round swiss_win_count = step swiss_test
scoreboard players operation red swiss_win_count = red swiss_test_wins
scoreboard players operation blue swiss_win_count = blue swiss_test_wins
scoreboard players operation green swiss_win_count = green swiss_test_wins
scoreboard players operation yellow swiss_win_count = yellow swiss_test_wins
scoreboard players operation cyan swiss_win_count = cyan swiss_test_wins
scoreboard players operation pink swiss_win_count = pink swiss_test_wins
scoreboard players operation orange swiss_win_count = orange swiss_test_wins
scoreboard players operation purple swiss_win_count = purple swiss_test_wins

# Determine Weight
function utils:swiss/main

execute if score cycles swiss_test matches ..300 run schedule function utils:swiss/test/loop 1t