schedule clear utils:text/hitw_spdinc/0
schedule clear utils:text/hitw_spdinc/1
schedule clear utils:text/hitw_spdinc/2
schedule clear utils:text/hitw_spdinc/3
schedule clear utils:text/fadeout
schedule clear utils:text/hitw_diff/0
schedule clear utils:text/hitw_diff/1
schedule clear utils:text/hitw_diff/2
schedule clear utils:text/hitw_diff/3
schedule clear utils:text/univ_fadeout/0
schedule clear utils:text/univ_fadeout/1
schedule clear utils:text/univ_fadeout/2
schedule clear utils:text/univ_fadeout/3
schedule clear utils:text/univ_fadeout/4

bossbar add warning_bossbar ""
bossbar set warning_bossbar players @a
bossbar set warning_bossbar color pink

function utils:text/hitw_shrink/0
schedule function utils:text/hitw_shrink/1 2t append
schedule function utils:text/hitw_shrink/2 4t append
schedule function utils:text/hitw_shrink/3 14t append
schedule function utils:text/hitw_shrink/2 24t append
schedule function utils:text/hitw_shrink/3 34t append
schedule function utils:text/hitw_shrink/2 44t append
schedule function utils:text/hitw_shrink/3 54t append
schedule function utils:text/fadeout 104t append