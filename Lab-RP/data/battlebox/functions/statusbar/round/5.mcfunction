tag @a[team=red] add t.bb1
tag @a[team=blue] add t.bb2
tag @a[team=green] add t.bb3
tag @a[team=yellow] add t.bb4
tag @a[team=cyan] add t.bb2
tag @a[team=pink] add t.bb1
tag @a[team=orange] add t.bb4
tag @a[team=purple] add t.bb3

bossbar set bb_match1 players @a[tag=t.bb1]
bossbar set bb_match2 players @a[tag=t.bb2]
bossbar set bb_match3 players @a[tag=t.bb3]
bossbar set bb_match4 players @a[tag=t.bb4]

tag @a remove t.bb1
tag @a remove t.bb2
tag @a remove t.bb3
tag @a remove t.bb4

bossbar set bb_players_red players @a[team=pink]
bossbar set bb_players_blue players @a[team=cyan]
bossbar set bb_players_green players @a[team=purple]
bossbar set bb_players_yellow players @a[team=orange]
bossbar set bb_players_cyan players @a[team=blue]
bossbar set bb_players_pink players @a[team=red]
bossbar set bb_players_orange players @a[team=yellow]
bossbar set bb_players_purple players @a[team=green]

bossbar set bb_match1 name ["","§c红队","§7 vs."," §d粉队","§7 | ","§2第5/7轮"]
bossbar set bb_match2 name ["","§9蓝队","§7 vs."," §3青队","§7 | ","§2第5/7轮"]
bossbar set bb_match3 name ["","§a绿队","§7 vs."," §5紫队","§7 | ","§2第5/7轮"] 
bossbar set bb_match4 name ["","§e黄队","§7 vs."," §6橙队","§7 | ","§2第5/7轮"] 