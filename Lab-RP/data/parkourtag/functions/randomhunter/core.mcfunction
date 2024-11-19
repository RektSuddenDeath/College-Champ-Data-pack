
execute unless entity @a[tag=hunter,team=red] run tag @r[team=red,scores={pkt_hunts=0..2}] add hunterrandom
execute unless entity @a[tag=hunter,team=blue] run tag @r[team=blue,scores={pkt_hunts=0..2}] add hunterrandom
execute unless entity @a[tag=hunter,team=green] run tag @r[team=green,scores={pkt_hunts=0..2}] add hunterrandom
execute unless entity @a[tag=hunter,team=yellow] run tag @r[team=yellow,scores={pkt_hunts=0..2}] add hunterrandom
execute unless entity @a[tag=hunter,team=cyan] run tag @r[team=cyan,scores={pkt_hunts=0..2}] add hunterrandom
execute unless entity @a[tag=hunter,team=pink] run tag @r[team=pink,scores={pkt_hunts=0..2}] add hunterrandom
execute unless entity @a[tag=hunter,team=orange] run tag @r[team=orange,scores={pkt_hunts=0..2}] add hunterrandom
execute unless entity @a[tag=hunter,team=purple] run tag @r[team=purple,scores={pkt_hunts=0..2}] add hunterrandom

tag @a[tag=hunterrandom] add hunter

scoreboard players add @a[tag=hunterrandom] pkt_hunts 1

execute if entity @p[team=red,tag=hunterrandom,scores={pkt_hunts=1}] run tellraw @a[team=red] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=red]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "2","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=red,tag=hunterrandom,scores={pkt_hunts=2}] run tellraw @a[team=red] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=red]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "1","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=red,tag=hunterrandom,scores={pkt_hunts=3}] run tellraw @a[team=red] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=red]"},{"text": "已被随机指定为抓捕者，他不能再成为抓捕者了。","color":"aqua"}]

execute if entity @p[team=blue,tag=hunterrandom,scores={pkt_hunts=1}] run tellraw @a[team=blue] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=blue]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "2","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=blue,tag=hunterrandom,scores={pkt_hunts=2}] run tellraw @a[team=blue] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=blue]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "1","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=blue,tag=hunterrandom,scores={pkt_hunts=3}] run tellraw @a[team=blue] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=blue]"},{"text": "已被随机指定为抓捕者，他不能再成为抓捕者了。","color":"aqua"}]

execute if entity @p[team=green,tag=hunterrandom,scores={pkt_hunts=1}] run tellraw @a[team=green] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=green]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "2","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=green,tag=hunterrandom,scores={pkt_hunts=2}] run tellraw @a[team=green] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=green]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "1","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=green,tag=hunterrandom,scores={pkt_hunts=3}] run tellraw @a[team=green] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=green]"},{"text": "已被随机指定为抓捕者，他不能再成为抓捕者了。","color":"aqua"}]

execute if entity @p[team=yellow,tag=hunterrandom,scores={pkt_hunts=1}] run tellraw @a[team=yellow] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=yellow]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "2","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=yellow,tag=hunterrandom,scores={pkt_hunts=2}] run tellraw @a[team=yellow] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=yellow]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "1","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=yellow,tag=hunterrandom,scores={pkt_hunts=3}] run tellraw @a[team=yellow] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=yellow]"},{"text": "已被随机指定为抓捕者，他不能再成为抓捕者了。","color":"aqua"}]

execute if entity @p[team=cyan,tag=hunterrandom,scores={pkt_hunts=1}] run tellraw @a[team=cyan] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=cyan]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "2","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=cyan,tag=hunterrandom,scores={pkt_hunts=2}] run tellraw @a[team=cyan] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=cyan]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "1","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=cyan,tag=hunterrandom,scores={pkt_hunts=3}] run tellraw @a[team=cyan] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=cyan]"},{"text": "已被随机指定为抓捕者，他不能再成为抓捕者了。","color":"aqua"}]

execute if entity @p[team=pink,tag=hunterrandom,scores={pkt_hunts=1}] run tellraw @a[team=pink] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=pink]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "2","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=pink,tag=hunterrandom,scores={pkt_hunts=2}] run tellraw @a[team=pink] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=pink]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "1","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=pink,tag=hunterrandom,scores={pkt_hunts=3}] run tellraw @a[team=pink] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=pink]"},{"text": "已被随机指定为抓捕者，他不能再成为抓捕者了。","color":"aqua"}]

execute if entity @p[team=orange,tag=hunterrandom,scores={pkt_hunts=1}] run tellraw @a[team=orange] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=orange]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "2","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=orange,tag=hunterrandom,scores={pkt_hunts=2}] run tellraw @a[team=orange] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=orange]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "1","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=orange,tag=hunterrandom,scores={pkt_hunts=3}] run tellraw @a[team=orange] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=orange]"},{"text": "已被随机指定为抓捕者，他不能再成为抓捕者了。","color":"aqua"}]

execute if entity @p[team=purple,tag=hunterrandom,scores={pkt_hunts=1}] run tellraw @a[team=purple] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=purple]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "2","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=purple,tag=hunterrandom,scores={pkt_hunts=2}] run tellraw @a[team=purple] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=purple]"},{"text": "已被随机指定为抓捕者，他还可以抓捕","color":"aqua"},{"text": "1","color":"#E3E3E3"},{"text": "次。","color":"aqua"}]
execute if entity @p[team=purple,tag=hunterrandom,scores={pkt_hunts=3}] run tellraw @a[team=purple] ["§b[§r鄵§b] ",{"text": "没有人选择成为抓捕者，因此","color":"aqua"},{"selector":"@a[tag=hunterrandom,team=purple]"},{"text": "已被随机指定为抓捕者，他不能再成为抓捕者了。","color":"aqua"}]

tag @a[gamemode=adventure,tag=!hunter] add runner

tag @a remove hunterrandom