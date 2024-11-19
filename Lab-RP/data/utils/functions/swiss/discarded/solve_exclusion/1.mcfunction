
tellraw @a "§3Triggered Exclusion 1"

tag @e[type=marker,tag=swiss_sort] remove done_red
tag @e[type=marker,tag=swiss_sort] remove done_blue
tag @e[type=marker,tag=swiss_sort] remove done_green
tag @e[type=marker,tag=swiss_sort] remove done_yellow
tag @e[type=marker,tag=swiss_sort] remove done_cyan
tag @e[type=marker,tag=swiss_sort] remove done_pink
tag @e[type=marker,tag=swiss_sort] remove done_orange
tag @e[type=marker,tag=swiss_sort] remove done_purple

execute as @e[type=marker,tag=swiss_sort,tag=red] run function utils:swiss/done_match_tag/red
execute as @e[type=marker,tag=swiss_sort,tag=blue] run function utils:swiss/done_match_tag/blue
execute as @e[type=marker,tag=swiss_sort,tag=green] run function utils:swiss/done_match_tag/green
execute as @e[type=marker,tag=swiss_sort,tag=yellow] run function utils:swiss/done_match_tag/yellow
execute as @e[type=marker,tag=swiss_sort,tag=cyan] run function utils:swiss/done_match_tag/cyan
execute as @e[type=marker,tag=swiss_sort,tag=pink] run function utils:swiss/done_match_tag/pink
execute as @e[type=marker,tag=swiss_sort,tag=orange] run function utils:swiss/done_match_tag/orange
execute as @e[type=marker,tag=swiss_sort,tag=purple] run function utils:swiss/done_match_tag/purple

execute as @e[type=marker,tag=swiss_sort] run scoreboard players reset @s swiss_match_result
execute as @e[type=marker,tag=swiss_sort] run scoreboard players operation @s swiss_match_result = @s swiss_swap_preanswer

execute as @e[type=marker,tag=swiss_sort,tag=red,scores={swiss_match_result=1}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=1}] add done_red
execute as @e[type=marker,tag=swiss_sort,tag=blue,scores={swiss_match_result=1}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=1}] add done_blue
execute as @e[type=marker,tag=swiss_sort,tag=green,scores={swiss_match_result=1}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=1}] add done_green
execute as @e[type=marker,tag=swiss_sort,tag=yellow,scores={swiss_match_result=1}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=1}] add done_yellow
execute as @e[type=marker,tag=swiss_sort,tag=cyan,scores={swiss_match_result=1}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=1}] add done_cyan
execute as @e[type=marker,tag=swiss_sort,tag=pink,scores={swiss_match_result=1}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=1}] add done_pink
execute as @e[type=marker,tag=swiss_sort,tag=orange,scores={swiss_match_result=1}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=1}] add done_orange
execute as @e[type=marker,tag=swiss_sort,tag=purple,scores={swiss_match_result=1}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=1}] add done_purple

execute as @e[type=marker,tag=swiss_sort,tag=red,scores={swiss_match_result=2}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=2}] add done_red
execute as @e[type=marker,tag=swiss_sort,tag=blue,scores={swiss_match_result=2}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=2}] add done_blue
execute as @e[type=marker,tag=swiss_sort,tag=green,scores={swiss_match_result=2}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=2}] add done_green
execute as @e[type=marker,tag=swiss_sort,tag=yellow,scores={swiss_match_result=2}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=2}] add done_yellow
execute as @e[type=marker,tag=swiss_sort,tag=cyan,scores={swiss_match_result=2}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=2}] add done_cyan
execute as @e[type=marker,tag=swiss_sort,tag=pink,scores={swiss_match_result=2}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=2}] add done_pink
execute as @e[type=marker,tag=swiss_sort,tag=orange,scores={swiss_match_result=2}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=2}] add done_orange
execute as @e[type=marker,tag=swiss_sort,tag=purple,scores={swiss_match_result=2}] run tag @e[type=marker,tag=swiss_sort,scores={swiss_match_result=2}] add done_purple

