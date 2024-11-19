
#Tps player to the preparation area
tp @a[gamemode=adventure,tag=bb_arena_1,tag=!bb_arena_secondary] @e[type=marker,tag=spawn1a,tag=battleboxanchor,limit=1]
tp @a[gamemode=adventure,tag=bb_arena_1,tag=bb_arena_secondary] @e[type=marker,tag=spawn1b,tag=battleboxanchor,limit=1]
tp @a[gamemode=adventure,tag=bb_arena_2,tag=!bb_arena_secondary] @e[type=marker,tag=spawn2a,tag=battleboxanchor,limit=1]
tp @a[gamemode=adventure,tag=bb_arena_2,tag=bb_arena_secondary] @e[type=marker,tag=spawn2b,tag=battleboxanchor,limit=1]
tp @a[gamemode=adventure,tag=bb_arena_3,tag=!bb_arena_secondary] @e[type=marker,tag=spawn3a,tag=battleboxanchor,limit=1]
tp @a[gamemode=adventure,tag=bb_arena_3,tag=bb_arena_secondary] @e[type=marker,tag=spawn3b,tag=battleboxanchor,limit=1]
tp @a[gamemode=adventure,tag=bb_arena_4,tag=!bb_arena_secondary] @e[type=marker,tag=spawn4a,tag=battleboxanchor,limit=1]
tp @a[gamemode=adventure,tag=bb_arena_4,tag=bb_arena_secondary] @e[type=marker,tag=spawn4b,tag=battleboxanchor,limit=1]

#Announce Times
function battlebox:disablekits
function battlebox:timeannounce/5
schedule function battlebox:timeannounce/4 1s
schedule function battlebox:timeannounce/3 2s
schedule function battlebox:timeannounce/2 3s
schedule function battlebox:timeannounce/1 4s
schedule function battlebox:game_new/round_start 5s
function master:timer/starting/5s

# Remix Compo
execute if score remix bb_game matches 1 run function battlebox:remix/shop/game_init

# Player Tags
tag @a[team=!spec] remove bb_round_eliminated
tag @a[team=!spec] add healthbar_included

# Bossbar
function battlebox:health_bar_handling/init
