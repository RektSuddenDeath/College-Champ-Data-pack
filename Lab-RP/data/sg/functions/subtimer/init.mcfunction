scoreboard players set :§ sg_sb 13
scoreboard players set :§ sg_sb_red 13
scoreboard players set :§ sg_sb_blue 13
scoreboard players set :§ sg_sb_green 13
scoreboard players set :§ sg_sb_yellow 13
scoreboard players set :§ sg_sb_orange 13
scoreboard players set :§ sg_sb_pink 13
scoreboard players set :§ sg_sb_purple 13
scoreboard players set :§ sg_sb_cyan 13

team add sg_subtimer
team join sg_subtimer :§

scoreboard players set minute sg_subtimer 0
scoreboard players set second sg_subtimer 31

function sg:subtimer/loop