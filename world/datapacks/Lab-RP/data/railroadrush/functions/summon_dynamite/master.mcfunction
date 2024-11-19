
scoreboard players remove red rrr_minecart_cd 1
scoreboard players remove blue rrr_minecart_cd 1
scoreboard players remove green rrr_minecart_cd 1
scoreboard players remove yellow rrr_minecart_cd 1
scoreboard players remove cyan rrr_minecart_cd 1
scoreboard players remove pink rrr_minecart_cd 1
scoreboard players remove orange rrr_minecart_cd 1
scoreboard players remove purple rrr_minecart_cd 1

execute if score red rrr_minecart_cd matches -1000000..-1 unless entity @e[type=minecart,tag=rrr_minecart,tag=dynamite,tag=team_red] run scoreboard players set red rrr_minecart_cd 100
execute if score blue rrr_minecart_cd matches -1000000..-1 unless entity @e[type=minecart,tag=rrr_minecart,tag=dynamite,tag=team_blue] run scoreboard players set blue rrr_minecart_cd 100
execute if score green rrr_minecart_cd matches -1000000..-1 unless entity @e[type=minecart,tag=rrr_minecart,tag=dynamite,tag=team_green] run scoreboard players set green rrr_minecart_cd 100
execute if score yellow rrr_minecart_cd matches -1000000..-1 unless entity @e[type=minecart,tag=rrr_minecart,tag=dynamite,tag=team_yellow] run scoreboard players set yellow rrr_minecart_cd 100
execute if score cyan rrr_minecart_cd matches -1000000..-1 unless entity @e[type=minecart,tag=rrr_minecart,tag=dynamite,tag=team_cyan] run scoreboard players set cyan rrr_minecart_cd 100
execute if score pink rrr_minecart_cd matches -1000000..-1 unless entity @e[type=minecart,tag=rrr_minecart,tag=dynamite,tag=team_pink] run scoreboard players set pink rrr_minecart_cd 100
execute if score orange rrr_minecart_cd matches -1000000..-1 unless entity @e[type=minecart,tag=rrr_minecart,tag=dynamite,tag=team_orange] run scoreboard players set orange rrr_minecart_cd 100
execute if score purple rrr_minecart_cd matches -1000000..-1 unless entity @e[type=minecart,tag=rrr_minecart,tag=dynamite,tag=team_purple] run scoreboard players set purple rrr_minecart_cd 100


execute if score red rrr_minecart_cd matches 0 run function railroadrush:summon_dynamite/team/red
execute if score blue rrr_minecart_cd matches 0 run function railroadrush:summon_dynamite/team/blue
execute if score green rrr_minecart_cd matches 0 run function railroadrush:summon_dynamite/team/green
execute if score yellow rrr_minecart_cd matches 0 run function railroadrush:summon_dynamite/team/yellow
execute if score cyan rrr_minecart_cd matches 0 run function railroadrush:summon_dynamite/team/cyan
execute if score pink rrr_minecart_cd matches 0 run function railroadrush:summon_dynamite/team/pink
execute if score orange rrr_minecart_cd matches 0 run function railroadrush:summon_dynamite/team/orange
execute if score purple rrr_minecart_cd matches 0 run function railroadrush:summon_dynamite/team/purple

execute if score gameflag rrr_game matches 1 run schedule function railroadrush:summon_dynamite/master 1t