


title @a title [{"text":" ","color":"green","bold":true}]
title @a subtitle " "

execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1
schedule clear buildmart:beginlistener
stopsound @a voice minecraft:music.gameintro
gamemode survival @a[team=!spec]
effect give @a jump_boost infinite 3 true


scoreboard players set gameflag bm_game 1
function buildmart:sfx/init
function buildmart:portal/open_portal

function master:timer/timeleft/12min
function buildmart:tick

scoreboard players set may_drop_items tourney_stats 1
