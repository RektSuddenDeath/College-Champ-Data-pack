#schedule function utils:text/hitw_diff 65t
tellraw @a ["","§c[§r鼱§c]"," §c墙的难度提升！"]
function hitw:wall/up_difficulty

# Also Shrinks platform if not already
execute if score shrink2 hitw_game matches 0 if score shrink hitw_game matches 10.. if score minute master.timer matches ..1 run function hitw:shrink/master2
execute if score shrink hitw_game matches 0 run function hitw:shrink/master