
scoreboard players set intro_active tourney_stats 1
scoreboard objectives remove temp_rot
scoreboard objectives add temp_rot dummy



summon marker -10000 124 -10000 {Tags:["team_intro","phase_1"],Rotation:[0f,6f]}
summon armor_stand -10000 126 -10024 {Tags:["Intro"],NoGravity:1b,Invisible:1b}
gamemode spectator @a
function decisiondome:team_intro/phase_loop/1