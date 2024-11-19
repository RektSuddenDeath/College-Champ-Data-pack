
function railroadrush:cam/stop
scoreboard players set gameflag rrr_game 0

tellraw @a "\n§6即将进行积分结算……\n"

schedule function railroadrush:scoring/init 4s