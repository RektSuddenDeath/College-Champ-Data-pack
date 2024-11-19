
scoreboard objectives add megabolt_bp_music dummy
scoreboard players set tick megabolt_bp_music 0

execute as @a at @s run playsound music.bw_bridges_prelude voice @s

tellraw @a[team=spec] ["§b[§r坕§b] Now playing: ",{"text": "Bridges - Prelude | Block Wars (Series 2) [Continued]"}]

function dodgebolt:megabolt_bp/music/loop