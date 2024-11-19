
# Intro

tp @a -5000 125 -4985

summon armor_stand -4999 114 -5000 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["Intro"],Rotation:[180f,10f]}
gamemode spectator @a
execute as @a run spectate @e[type=armor_stand,tag=Intro,limit=1] @s

function hitw:scoreboard/pregame
function hitw:intro/1
function hitw:intro/hold
schedule function hitw:intro/2 2s
schedule function hitw:intro/3 4s
schedule function hitw:intro/4 12s
schedule function hitw:intro/5 20s
schedule function hitw:intro/6 28s
schedule function hitw:intro/7 36s
schedule function hitw:intro/8 44s

function hitw:beginlistener
# Reset Arena
fill -4992 112 -4980 -5007 118 -5019 air
fill -5019 118 -5007 -4980 112 -4992 air

kill @e[type=marker,tag=wall_mover]
# Barrier, prevent falling

execute if score platform_shape hitw_game matches 1 run schedule function hitw:platform_shape/1/init_notp 2t
execute if score platform_shape hitw_game matches 2 run schedule function hitw:platform_shape/2/init_notp 2t
execute if score platform_shape hitw_game matches 3 run schedule function hitw:platform_shape/3/init_notp 2t
execute if score platform_shape hitw_game matches 4 run schedule function hitw:platform_shape/4/init_notp 2t
execute if score platform_shape hitw_game matches 5 run schedule function hitw:platform_shape/5/init_notp 2t
execute if score platform_shape hitw_game matches 6 run schedule function hitw:platform_shape/6/init_notp 2t

# Reset Time
scoreboard players set maxtick hitw_time 9
scoreboard players set tick hitw_time 9
scoreboard players set wallcount hitw_wall 0
scoreboard players set movementreq hitw_wall 999
scoreboard players set round hitw_game 1
scoreboard players set currentwallmoves hitw_wall 0

# Scores
scoreboard players set score_timeout hitw_game 50
# Reset score and stuff
scoreboard objectives remove hitw_roundscore
scoreboard objectives add hitw_roundscore dummy

scoreboard objectives remove hitw_indvscore
scoreboard objectives add hitw_indvscore dummy

scoreboard objectives remove hitw_teamscore
scoreboard objectives add hitw_teamscore dummy

scoreboard objectives add hitw_round_dodged dummy
scoreboard objectives add hitw_game_dodged dummy

scoreboard players set @a hitw_round_dodged 0
scoreboard players set @a hitw_game_dodged 0

scoreboard objectives add hitw_psych dummy
scoreboard players set east hitw_psych 0
scoreboard players set west hitw_psych 0
scoreboard players set north hitw_psych 0
scoreboard players set south hitw_psych 0

# Recap
scoreboard objectives add hitw_recap_r1 dummy
scoreboard objectives add hitw_recap_r2 dummy
scoreboard objectives add hitw_recap_r3 dummy
scoreboard objectives add hitw_recap_total_survived dummy

scoreboard players set @a hitw_recap_r1 0
scoreboard players set @a hitw_recap_r2 0
scoreboard players set @a hitw_recap_r3 0
scoreboard players set @a hitw_recap_total_survived 0

scoreboard objectives add hitw_recap_played dummy
scoreboard players set @a hitw_recap_played 0
# Spawn Points
spawnpoint @a -4978 121 -4998 90

tellraw @a[tag=_transcript] ["  §bTranscript >> §f§6Active Game: §fHOLE_IN_THE_WALL"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]