
$execute as @e[type=marker,tag=swiss_sort,tag=!$(team_name)] if score @s swiss_match_result matches $(match_id) run tag @s add done_$(team_name)