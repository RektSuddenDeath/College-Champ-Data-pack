

function parkourtag:general/death
function parkourtag:kill/1

# Search for ALIVE Runners
execute unless score redremain pkt_game matches -1 run scoreboard players set redremain pkt_game 0
execute unless score blueremain pkt_game matches -1 run scoreboard players set blueremain pkt_game 0
execute unless score greenremain pkt_game matches -1 run scoreboard players set greenremain pkt_game 0
execute unless score yellowremain pkt_game matches -1 run scoreboard players set yellowremain pkt_game 0
execute unless score cyanremain pkt_game matches -1 run scoreboard players set cyanremain pkt_game 0
execute unless score orangeremain pkt_game matches -1 run scoreboard players set orangeremain pkt_game 0
execute unless score pinkremain pkt_game matches -1 run scoreboard players set pinkremain pkt_game 0
execute unless score purpleremain pkt_game matches -1 run scoreboard players set purpleremain pkt_game 0

execute as @a[team=red,tag=runner] run scoreboard players add redremain pkt_game 1
execute as @a[team=blue,tag=runner] run scoreboard players add blueremain pkt_game 1
execute as @a[team=green,tag=runner] run scoreboard players add greenremain pkt_game 1
execute as @a[team=yellow,tag=runner] run scoreboard players add yellowremain pkt_game 1
execute as @a[team=cyan,tag=runner] run scoreboard players add cyanremain pkt_game 1
execute as @a[team=pink,tag=runner] run scoreboard players add pinkremain pkt_game 1
execute as @a[team=orange,tag=runner] run scoreboard players add orangeremain pkt_game 1
execute as @a[team=purple,tag=runner] run scoreboard players add purpleremain pkt_game 1
# Decides Win Condition
execute if score redremain pkt_game matches 0 if score greenremain pkt_game matches 1.. run function parkourtag:general/lose/red
execute if score redremain pkt_game matches 0 if score greenremain pkt_game matches 1.. run function parkourtag:general/win/green

execute if score greenremain pkt_game matches 0 if score redremain pkt_game matches 1.. run function parkourtag:general/lose/green
execute if score greenremain pkt_game matches 0 if score redremain pkt_game matches 1.. run function parkourtag:general/win/red

execute if score blueremain pkt_game matches 0 if score yellowremain pkt_game matches 1.. run function parkourtag:general/lose/blue
execute if score blueremain pkt_game matches 0 if score yellowremain pkt_game matches 1.. run function parkourtag:general/win/yellow

execute if score yellowremain pkt_game matches 0 if score blueremain pkt_game matches 1.. run function parkourtag:general/lose/yellow
execute if score yellowremain pkt_game matches 0 if score blueremain pkt_game matches 1.. run function parkourtag:general/win/blue

execute if score cyanremain pkt_game matches 0 if score orangeremain pkt_game matches 1.. run function parkourtag:general/lose/cyan
execute if score cyanremain pkt_game matches 0 if score orangeremain pkt_game matches 1.. run function parkourtag:general/win/orange

execute if score orangeremain pkt_game matches 0 if score cyanremain pkt_game matches 1.. run function parkourtag:general/lose/orange
execute if score orangeremain pkt_game matches 0 if score cyanremain pkt_game matches 1.. run function parkourtag:general/win/cyan

execute if score pinkremain pkt_game matches 0 if score purpleremain pkt_game matches 1.. run function parkourtag:general/lose/pink
execute if score pinkremain pkt_game matches 0 if score purpleremain pkt_game matches 1.. run function parkourtag:general/win/purple

execute if score purpleremain pkt_game matches 0 if score pinkremain pkt_game matches 1.. run function parkourtag:general/lose/purple
execute if score purpleremain pkt_game matches 0 if score pinkremain pkt_game matches 1.. run function parkourtag:general/win/pink

# Gives notice to Runners and Hunters, if enemy/team has been all eliminated

execute if score redremain pkt_game matches 0 run title @a[team=red,tag=!hunter] title [{"text": "本队已被全部抓获！","color":"yellow"}]
execute if score redremain pkt_game matches 0 run title @a[team=green,tag=hunter] subtitle [{"text": "你已捕获全部对方逃脱者！","color":"green"}]
execute if score redremain pkt_game matches 0 run title @a[team=green,tag=hunter] title [{"text": "全部抓获！","color":"green"}]
execute if score redremain pkt_game matches 0 run tellraw @a[team=red] ["§c[§r鄵§c] ",{"text": "本队已被全部抓获！","bold": true,"color":"red"}]

execute if score blueremain pkt_game matches 0 run title @a[team=blue,tag=!hunter] title [{"text": "本队已被全部抓获！","color":"yellow"}]
execute if score blueremain pkt_game matches 0 run title @a[team=yellow,tag=hunter] subtitle [{"text": "你已捕获全部对方逃脱者！","color":"green"}]
execute if score blueremain pkt_game matches 0 run title @a[team=yellow,tag=hunter] title [{"text": "全部抓获！","color":"green"}]
execute if score blueremain pkt_game matches 0 run tellraw @a[team=blue] ["§c[§r鄵§c] ",{"text": "本队已被全部抓获！","bold": true,"color":"red"}]

execute if score greenremain pkt_game matches 0 run title @a[team=green,tag=!hunter] title [{"text": "本队已被全部抓获！","color":"yellow"}]
execute if score greenremain pkt_game matches 0 run title @a[team=red,tag=hunter] subtitle [{"text": "你已捕获全部对方逃脱者！","color":"green"}]
execute if score greenremain pkt_game matches 0 run title @a[team=red,tag=hunter] title [{"text": "全部抓获！","color":"green"}]
execute if score greenremain pkt_game matches 0 run tellraw @a[team=green] ["§c[§r鄵§c] ",{"text": "本队已被全部抓获！","bold": true,"color":"red"}]

execute if score yellowremain pkt_game matches 0 run title @a[team=yellow,tag=!hunter] title [{"text": "本队已被全部抓获！","color":"yellow"}]
execute if score yellowremain pkt_game matches 0 run title @a[team=blue,tag=hunter] subtitle [{"text": "你已捕获全部对方逃脱者！","color":"green"}]
execute if score yellowremain pkt_game matches 0 run title @a[team=blue,tag=hunter] title [{"text": "全部抓获！","color":"green"}]
execute if score yellowremain pkt_game matches 0 run tellraw @a[team=yellow] ["§c[§r鄵§c] ",{"text": "本队已被全部抓获！","bold": true,"color":"red"}]

execute if score cyanremain pkt_game matches 0 run title @a[team=cyan,tag=!hunter] title [{"text": "本队已被全部抓获！","color":"yellow"}]
execute if score cyanremain pkt_game matches 0 run title @a[team=orange,tag=hunter] subtitle [{"text": "你已捕获全部对方逃脱者！","color":"green"}]
execute if score cyanremain pkt_game matches 0 run title @a[team=orange,tag=hunter] title [{"text": "全部抓获！","color":"green"}]
execute if score cyanremain pkt_game matches 0 run tellraw @a[team=cyan] ["§c[§r鄵§c] ",{"text": "本队已被全部抓获！","bold": true,"color":"red"}]

execute if score pinkremain pkt_game matches 0 run title @a[team=pink,tag=!hunter] title [{"text": "本队已被全部抓获！","color":"yellow"}]
execute if score pinkremain pkt_game matches 0 run title @a[team=purple,tag=hunter] subtitle [{"text": "你已捕获全部对方逃脱者！","color":"green"}]
execute if score pinkremain pkt_game matches 0 run title @a[team=purple,tag=hunter] title [{"text": "全部抓获！","color":"green"}]
execute if score pinkremain pkt_game matches 0 run tellraw @a[team=pink] ["§c[§r鄵§c] ",{"text": "本队已被全部抓获！","bold": true,"color":"red"}]

execute if score orangeremain pkt_game matches 0 run title @a[team=orange,tag=!hunter] title [{"text": "本队已被全部抓获！","color":"yellow"}]
execute if score orangeremain pkt_game matches 0 run title @a[team=cyan,tag=hunter] subtitle [{"text": "你已捕获全部对方逃脱者！","color":"green"}]
execute if score orangeremain pkt_game matches 0 run title @a[team=cyan,tag=hunter] title [{"text": "全部抓获！","color":"green"}]
execute if score orangeremain pkt_game matches 0 run tellraw @a[team=orange] ["§c[§r鄵§c] ",{"text": "本队已被全部抓获！","bold": true,"color":"red"}]

execute if score purpleremain pkt_game matches 0 run title @a[team=purple,tag=!hunter] title [{"text": "本队已被全部抓获！","color":"yellow"}]
execute if score purpleremain pkt_game matches 0 run title @a[team=pink,tag=hunter] subtitle [{"text": "你已捕获全部对方逃脱者！","color":"green"}]
execute if score purpleremain pkt_game matches 0 run title @a[team=pink,tag=hunter] title [{"text": "全部抓获！","color":"green"}]
execute if score purpleremain pkt_game matches 0 run tellraw @a[team=purple] ["§c[§r鄵§c] ",{"text": "本队已被全部抓获！","bold": true,"color":"red"}]

# All hunt coins bonus
execute if score redremain pkt_game matches 0 run tellraw @a[team=green,tag=hunter] ["","[§6+",{"score":{"name": "currenthunt","objective": "pkt_stats"},"color":"gold"},"§6分§r]"," §a[§r彀§a] ","§a你已抓获对方全部逃脱者！",{"text":" (","color":"#E3E3E3"},{"score":{"name":"round_time","objective":"pkt_game"},"color":"#E3E3E3"},{"text":"秒)","color":"#E3E3E3"}]
execute if score blueremain pkt_game matches 0 run tellraw @a[team=yellow,tag=hunter] ["","[§6+",{"score":{"name": "currenthunt","objective": "pkt_stats"},"color":"gold"},"§6分§r]"," §a[§r彀§a] ","§a你已抓获对方全部逃脱者！",{"text":" (","color":"#E3E3E3"},{"score":{"name":"round_time","objective":"pkt_game"},"color":"#E3E3E3"},{"text":"秒)","color":"#E3E3E3"}]
execute if score greenremain pkt_game matches 0 run tellraw @a[team=red,tag=hunter] ["","[§6+",{"score":{"name": "currenthunt","objective": "pkt_stats"},"color":"gold"},"§6分§r]"," §a[§r彀§a] ","§a你已抓获对方全部逃脱者！",{"text":" (","color":"#E3E3E3"},{"score":{"name":"round_time","objective":"pkt_game"},"color":"#E3E3E3"},{"text":"秒)","color":"#E3E3E3"}]
execute if score yellowremain pkt_game matches 0 run tellraw @a[team=blue,tag=hunter] ["","[§6+",{"score":{"name": "currenthunt","objective": "pkt_stats"},"color":"gold"},"§6分§r]"," §a[§r彀§a] ","§a你已抓获对方全部逃脱者！",{"text":" (","color":"#E3E3E3"},{"score":{"name":"round_time","objective":"pkt_game"},"color":"#E3E3E3"},{"text":"秒)","color":"#E3E3E3"}]
execute if score cyanremain pkt_game matches 0 run tellraw @a[team=orange,tag=hunter] ["","[§6+",{"score":{"name": "currenthunt","objective": "pkt_stats"},"color":"gold"},"§6分§r]"," §a[§r彀§a] ","§a你已抓获对方全部逃脱者！",{"text":" (","color":"#E3E3E3"},{"score":{"name":"round_time","objective":"pkt_game"},"color":"#E3E3E3"},{"text":"秒)","color":"#E3E3E3"}]
execute if score pinkremain pkt_game matches 0 run tellraw @a[team=purple,tag=hunter] ["","[§6+",{"score":{"name": "currenthunt","objective": "pkt_stats"},"color":"gold"},"§6分§r]"," §a[§r彀§a] ","§a你已抓获对方全部逃脱者！",{"text":" (","color":"#E3E3E3"},{"score":{"name":"round_time","objective":"pkt_game"},"color":"#E3E3E3"},{"text":"秒)","color":"#E3E3E3"}]
execute if score orangeremain pkt_game matches 0 run tellraw @a[team=cyan,tag=hunter] ["","[§6+",{"score":{"name": "currenthunt","objective": "pkt_stats"},"color":"gold"},"§6分§r]"," §a[§r彀§a] ","§a你已抓获对方全部逃脱者！",{"text":" (","color":"#E3E3E3"},{"score":{"name":"round_time","objective":"pkt_game"},"color":"#E3E3E3"},{"text":"秒)","color":"#E3E3E3"}]
execute if score purpleremain pkt_game matches 0 run tellraw @a[team=pink,tag=hunter] ["","[§6+",{"score":{"name": "currenthunt","objective": "pkt_stats"},"color":"gold"},"§6分§r]"," §a[§r彀§a] ","§a你已抓获对方全部逃脱者！",{"text":" (","color":"#E3E3E3"},{"score":{"name":"round_time","objective":"pkt_game"},"color":"#E3E3E3"},{"text":"秒)","color":"#E3E3E3"}]

execute if score redremain pkt_game matches 0 run execute as @a[team=green,tag=hunter] run scoreboard players operation @s pkt_indvscore += currenthunt pkt_stats
execute if score blueremain pkt_game matches 0 run execute as @a[team=yellow,tag=hunter] run scoreboard players operation @s pkt_indvscore += currenthunt pkt_stats
execute if score greenremain pkt_game matches 0 run execute as @a[team=red,tag=hunter] run scoreboard players operation @s pkt_indvscore += currenthunt pkt_stats
execute if score yellowremain pkt_game matches 0 run execute as @a[team=blue,tag=hunter] run scoreboard players operation @s pkt_indvscore += currenthunt pkt_stats
execute if score cyanremain pkt_game matches 0 run execute as @a[team=orange,tag=hunter] run scoreboard players operation @s pkt_indvscore += currenthunt pkt_stats
execute if score pinkremain pkt_game matches 0 run execute as @a[team=purple,tag=hunter] run scoreboard players operation @s pkt_indvscore += currenthunt pkt_stats
execute if score orangeremain pkt_game matches 0 run execute as @a[team=cyan,tag=hunter] run scoreboard players operation @s pkt_indvscore += currenthunt pkt_stats
execute if score purpleremain pkt_game matches 0 run execute as @a[team=pink,tag=hunter] run scoreboard players operation @s pkt_indvscore += currenthunt pkt_stats

# Avoids double judgement
execute if score redremain pkt_game matches 0 run scoreboard players set redremain pkt_game -1
execute if score blueremain pkt_game matches 0 run scoreboard players set blueremain pkt_game -1
execute if score greenremain pkt_game matches 0 run scoreboard players set greenremain pkt_game -1
execute if score yellowremain pkt_game matches 0 run scoreboard players set yellowremain pkt_game -1
execute if score cyanremain pkt_game matches 0 run scoreboard players set cyanremain pkt_game -1
execute if score pinkremain pkt_game matches 0 run scoreboard players set pinkremain pkt_game -1
execute if score orangeremain pkt_game matches 0 run scoreboard players set orangeremain pkt_game -1
execute if score purpleremain pkt_game matches 0 run scoreboard players set purpleremain pkt_game -1

execute if score redremain pkt_game matches -1 if score blueremain pkt_game matches -1 if score greenremain pkt_game matches -1 if score yellowremain pkt_game matches -1 if score cyanremain pkt_game matches -1 if score pinkremain pkt_game matches -1 if score orangeremain pkt_game matches -1 if score purpleremain pkt_game matches -1 run scoreboard players set completed pkt_game 4
execute if score minute master.timer matches 0 if score second master.timer matches 0 run scoreboard players set completed pkt_game 4
execute if score completed pkt_game matches 4 run function parkourtag:game/2/end
execute if score gameflag pkt_game matches 1 run schedule function parkourtag:game/2/detection 1t