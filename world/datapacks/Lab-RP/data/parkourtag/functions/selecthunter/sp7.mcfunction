

# Refuses the Player if he has reached the maximum hunts
execute if score @s pkt_hunts >= maxhunts pkt_hunts run tellraw @s ["[",{"text": "!","color":"red"},"] ",{"text": "你已达到抓捕次数上限，你不能再当抓捕者了！","bold": true,"color":"red"}]

execute if score @s pkt_hunts < maxhunts pkt_hunts run tag @s add hunter
execute if score @s pkt_hunts < maxhunts pkt_hunts run setblock -2474 106 -2800 air
execute if score @s pkt_hunts < maxhunts pkt_hunts run fill -2476 105 -2800 -2476 107 -2800 minecraft:red_stained_glass_pane
execute if score @s pkt_hunts < maxhunts pkt_hunts run tp @p[tag=hunter] -2475 105 -2800

execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=red,scores={pkt_hunts=0}] run tellraw @a[team=red] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "2","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=red,scores={pkt_hunts=1}] run tellraw @a[team=red] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "1","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=red,scores={pkt_hunts=2}] run tellraw @a[team=red] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他不能再成为抓捕者了。","bold": true,"color":"green"}]

execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=blue,scores={pkt_hunts=0}] run tellraw @a[team=blue] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "2","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=blue,scores={pkt_hunts=1}] run tellraw @a[team=blue] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "1","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=blue,scores={pkt_hunts=2}] run tellraw @a[team=blue] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他不能再成为抓捕者了。","bold": true,"color":"green"}]

execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=green,scores={pkt_hunts=0}] run tellraw @a[team=green] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "2","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=green,scores={pkt_hunts=1}] run tellraw @a[team=green] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "1","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=green,scores={pkt_hunts=2}] run tellraw @a[team=green] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他不能再成为抓捕者了。","bold": true,"color":"green"}]

execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=yellow,scores={pkt_hunts=0}] run tellraw @a[team=yellow] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "2","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=yellow,scores={pkt_hunts=1}] run tellraw @a[team=yellow] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "1","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=yellow,scores={pkt_hunts=2}] run tellraw @a[team=yellow] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他不能再成为抓捕者了。","bold": true,"color":"green"}]

execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=cyan,scores={pkt_hunts=0}] run tellraw @a[team=cyan] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "2","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=cyan,scores={pkt_hunts=1}] run tellraw @a[team=cyan] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "1","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=cyan,scores={pkt_hunts=2}] run tellraw @a[team=cyan] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他不能再成为抓捕者了。","bold": true,"color":"green"}]

execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=orange,scores={pkt_hunts=0}] run tellraw @a[team=orange] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "2","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=orange,scores={pkt_hunts=1}] run tellraw @a[team=orange] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "1","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=orange,scores={pkt_hunts=2}] run tellraw @a[team=orange] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他不能再成为抓捕者了。","bold": true,"color":"green"}]

execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=purple,scores={pkt_hunts=0}] run tellraw @a[team=purple] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "2","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=purple,scores={pkt_hunts=1}] run tellraw @a[team=purple] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "1","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=purple,scores={pkt_hunts=2}] run tellraw @a[team=purple] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他不能再成为抓捕者了。","bold": true,"color":"green"}]

execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=pink,scores={pkt_hunts=0}] run tellraw @a[team=pink] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "2","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=pink,scores={pkt_hunts=1}] run tellraw @a[team=pink] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他还能成为抓捕者","bold": true,"color":"green"},{"text": "1","bold": true,"color":"aqua"},{"text": "次。","bold":true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts if entity @s[team=pink,scores={pkt_hunts=2}] run tellraw @a[team=pink] ["[",{"text": "!","color":"yellow"},"] ",{"selector":"@s"},{"text":"选择成为抓捕者。他不能再成为抓捕者了。","bold": true,"color":"green"}]
execute if score @s pkt_hunts < maxhunts pkt_hunts run scoreboard players add @s pkt_hunts 1