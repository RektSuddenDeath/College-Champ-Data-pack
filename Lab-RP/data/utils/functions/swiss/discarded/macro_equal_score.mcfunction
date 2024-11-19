
$execute as @e[type=marker,tag=swiss_sort,tag=!$(team_name)] if score @s swiss_match_result matches $(match_id) run scoreboard players set @s swiss_opponent_result $(team_id)