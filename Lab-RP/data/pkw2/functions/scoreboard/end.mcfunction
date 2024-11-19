
schedule clear pkw2:scoreboard/refresh
schedule clear pkw2:scoreboard/refresh/global
schedule clear pkw2:scoreboard/refresh/red
schedule clear pkw2:scoreboard/refresh/blue
schedule clear pkw2:scoreboard/refresh/green
schedule clear pkw2:scoreboard/refresh/yellow
schedule clear pkw2:scoreboard/refresh/cyan
schedule clear pkw2:scoreboard/refresh/orange
schedule clear pkw2:scoreboard/refresh/pink
schedule clear pkw2:scoreboard/refresh/purple
scoreboard players set @a pkw2_indvscore 0
team modify placeholder_5 suffix "§b§l本游戏积分:"
team modify placeholder_5 prefix ""
function pkw2:scoreboard/refreshend