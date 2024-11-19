tag @a[team=red] add t.pkt1
tag @a[team=blue] add t.pkt2
tag @a[team=green] add t.pkt1
tag @a[team=yellow] add t.pkt2
tag @a[team=cyan] add t.pkt3
tag @a[team=pink] add t.pkt4
tag @a[team=orange] add t.pkt3
tag @a[team=purple] add t.pkt4

bossbar set pkt_match1 players @a[tag=t.pkt1]
bossbar set pkt_match2 players @a[tag=t.pkt2]
bossbar set pkt_match3 players @a[tag=t.pkt3]
bossbar set pkt_match4 players @a[tag=t.pkt4]

tag @a remove t.pkt1
tag @a remove t.pkt2
tag @a remove t.pkt3
tag @a remove t.pkt4

bossbar set pkt_players_red players @a[team=green]
bossbar set pkt_players_blue players @a[team=yellow]
bossbar set pkt_players_green players @a[team=red]
bossbar set pkt_players_yellow players @a[team=blue]
bossbar set pkt_players_cyan players @a[team=orange]
bossbar set pkt_players_pink players @a[team=purple]
bossbar set pkt_players_orange players @a[team=cyan]
bossbar set pkt_players_purple players @a[team=pink]

bossbar set pkt_match1 name ["","§c红队","§7 vs."," §a绿队","§7 | ","§2第2/7轮"]
bossbar set pkt_match2 name ["","§e黄队","§7 vs."," §9蓝队","§7 | ","§2第2/7轮"]
bossbar set pkt_match3 name ["","§3青队","§7 vs."," §6橙队","§7 | ","§2第2/7轮"] 
bossbar set pkt_match4 name ["","§d粉队","§7 vs."," §5紫队","§7 | ","§2第2/7轮"] 