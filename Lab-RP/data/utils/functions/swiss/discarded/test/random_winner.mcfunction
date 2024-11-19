

execute as @e[type=marker,tag=swiss_sort,scores={swiss_match_result=1},sort=random,limit=1] run tag @s add swiss_test_win
execute as @e[type=marker,tag=swiss_sort,scores={swiss_match_result=2},sort=random,limit=1] run tag @s add swiss_test_win
execute as @e[type=marker,tag=swiss_sort,scores={swiss_match_result=3},sort=random,limit=1] run tag @s add swiss_test_win
execute as @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},sort=random,limit=1] run tag @s add swiss_test_win

execute as @e[type=marker,tag=swiss_sort,tag=swiss_test_win,tag=red] run scoreboard players add red swiss_test_wins 1
execute as @e[type=marker,tag=swiss_sort,tag=swiss_test_win,tag=blue] run scoreboard players add blue swiss_test_wins 1
execute as @e[type=marker,tag=swiss_sort,tag=swiss_test_win,tag=green] run scoreboard players add green swiss_test_wins 1
execute as @e[type=marker,tag=swiss_sort,tag=swiss_test_win,tag=yellow] run scoreboard players add yellow swiss_test_wins 1
execute as @e[type=marker,tag=swiss_sort,tag=swiss_test_win,tag=cyan] run scoreboard players add cyan swiss_test_wins 1
execute as @e[type=marker,tag=swiss_sort,tag=swiss_test_win,tag=pink] run scoreboard players add pink swiss_test_wins 1
execute as @e[type=marker,tag=swiss_sort,tag=swiss_test_win,tag=orange] run scoreboard players add orange swiss_test_wins 1
execute as @e[type=marker,tag=swiss_sort,tag=swiss_test_win,tag=purple] run scoreboard players add purple swiss_test_wins 1


tag @e[type=marker,tag=swiss_sort,tag=swiss_test_win] remove swiss_test_win