
#Tps player to the preparation area
tp @a[gamemode=adventure,team=red] @e[type=marker,tag=spawn1a,tag=battleboxanchor,limit=1]
tp @a[gamemode=adventure,team=blue] @e[type=marker,tag=spawn1b,tag=battleboxanchor,limit=1]
tp @a[gamemode=adventure,team=green] @e[type=marker,tag=spawn2a,tag=battleboxanchor,limit=1]
tp @a[gamemode=adventure,team=yellow] @e[type=marker,tag=spawn2b,tag=battleboxanchor,limit=1]
tp @a[gamemode=adventure,team=cyan] @e[type=marker,tag=spawn3a,tag=battleboxanchor,limit=1]
tp @a[gamemode=adventure,team=pink] @e[type=marker,tag=spawn3b,tag=battleboxanchor,limit=1]
tp @a[gamemode=adventure,team=orange] @e[type=marker,tag=spawn4a,tag=battleboxanchor,limit=1]
tp @a[gamemode=adventure,team=purple] @e[type=marker,tag=spawn4b,tag=battleboxanchor,limit=1]
#Announce Times
function battlebox:disablekits
function battlebox:timeannounce/5
schedule function battlebox:timeannounce/4 1s
schedule function battlebox:timeannounce/3 2s
schedule function battlebox:timeannounce/2 3s
schedule function battlebox:timeannounce/1 4s
schedule function battlebox:game/1/start 5s
function master:timer/starting/5s

# Remix Compo
execute if score remix bb_game matches 1 run function battlebox:remix/shop/game_init