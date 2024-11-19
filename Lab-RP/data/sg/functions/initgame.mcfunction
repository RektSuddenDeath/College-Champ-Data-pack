
# Components
scoreboard objectives remove sg_airdropBreak

scoreboard objectives add sg_game dummy
scoreboard objectives add sg_indvscore dummy
scoreboard objectives add sg_roundscore dummy
scoreboard objectives add sg_subtimer dummy
scoreboard objectives add sg_roundkills dummy
scoreboard objectives add sg_stats dummy "PT Stats"
scoreboard objectives add sg_death deathCount
scoreboard objectives add sg_logout minecraft.custom:leave_game
scoreboard objectives add sg_chestid dummy
scoreboard objectives add sg_airdropBreak minecraft.mined:minecraft.purpur_pillar
scoreboard objectives add sg_adfirework dummy
scoreboard objectives add sg_adlife dummy
scoreboard objectives add sg_dmg_dealt_r dummy

scoreboard players set RoundActive tourney_stats 0
scoreboard players set gameactive sg_game 1
scoreboard players set gameflag sg_game 0
scoreboard players set @a sg_indvscore 0
scoreboard players set @a sg_roundscore 0
scoreboard players set minute sg_subtimer 0
scoreboard players set second sg_subtimer 0
scoreboard players set gamephase sg_game 0
scoreboard players set @a sg_roundkills 0
scoreboard players set @a sg_death 0
scoreboard players add gameid sg_game 1
scoreboard players set @a sg_airdropBreak 0
scoreboard players set airdropNo sg_game 0
scoreboard players set @a sg_dmg_dealt_r 0
scoreboard players set revivalActive sg_game 0

scoreboard players set killDecay1 sg_game 0
scoreboard players set killDecay2 sg_game 0
scoreboard players set killDecay3 sg_game 0

## function sg:setscore
scoreboard players operation kill sg_stats = defaultKill sg_stats

# Scoreboard
function sg:scoreboard/pregame
# Intro
function sg:intro/1
schedule function sg:intro/2 2s
schedule function sg:intro/3 4s
schedule function sg:intro/4 14s
schedule function sg:intro/5 24s
schedule function sg:intro/6 34s
schedule function sg:intro/7 44s
schedule function sg:intro/8 54s
schedule function sg:intro/9 64s
schedule function sg:afterintro_tp 64s
# Begin Listener
function sg:beginlistener
# Score Settings
function sg:setscore
# Give everyone lots of xp
xp set @a 99 levels
