
scoreboard objectives add mg_df_game dummy
scoreboard players set round mg_df_game 0
scoreboard players set platform mg_df_game 0
scoreboard players set gameflag mg_df_game 0
scoreboard players set floorstate mg_df_game 1
scoreboard players set floorstate_prev mg_df_game 1

tellraw @a[tag=admin] ["[§6DEBUG§f] Initiated MG_DISCO_FEVER"]

# Default bossbar and time
bossbar add mg_df_timer "§c§l时间"
bossbar set mg_df_timer name "§c§l时间"
bossbar set mg_df_timer players @a
bossbar set mg_df_timer color red
bossbar set mg_df_timer max 120
bossbar set mg_df_timer value 120

scoreboard players set timer_max mg_df_game 120
scoreboard players set timer_value mg_df_game 120

# Starting Platform
forceload add -40000 -40000
function mg:disco_fever/cleanup
fill -40011 99 -39994 -40007 104 -40006 black_stained_glass hollow
fill -40011 99 -39994 -40007 99 -40006 blackstone

# Clear
clear @a
gamemode adventure @a[team=!spec]

# Default SCB
function mg:disco_fever/scoreboard/init

# Starting Tp
execute in minecraft:overworld run tp @a -40009.55 100.00 -39999.52 270 0