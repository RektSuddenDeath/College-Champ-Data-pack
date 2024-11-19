

# Close Barrier
fill -2476 105 -2200 -2476 107 -2200 red_stained_glass_pane
fill -2524 105 -2200 -2524 107 -2200 red_stained_glass_pane
fill -2476 105 -2400 -2476 107 -2400 red_stained_glass_pane
fill -2524 105 -2400 -2524 107 -2400 red_stained_glass_pane
fill -2476 105 -2600 -2476 107 -2600 red_stained_glass_pane
fill -2524 105 -2600 -2524 107 -2600 red_stained_glass_pane
fill -2476 105 -2800 -2476 107 -2800 red_stained_glass_pane
fill -2524 105 -2800 -2524 107 -2800 red_stained_glass_pane

# Assigns a Hunter if no one selects
function parkourtag:randomhunter/core

tellraw @a[team=red,tag=hunter] [{"text": ""},{"text": "你将抓捕","color":"gold"},{"selector":"@a[team=cyan,tag=runner]"},{"text": "！","color": "gold"}]
tellraw @a[team=blue,tag=hunter] [{"text": ""},{"text": "你将抓捕","color":"gold"},{"selector":"@a[team=pink,tag=runner]"},{"text": "！","color": "gold"}]
tellraw @a[team=green,tag=hunter] [{"text": ""},{"text": "你将抓捕","color":"gold"},{"selector":"@a[team=orange,tag=runner]"},{"text": "！","color": "gold"}]
tellraw @a[team=yellow,tag=hunter] [{"text": ""},{"text": "你将抓捕","color":"gold"},{"selector":"@a[team=purple,tag=runner]"},{"text": "！","color": "gold"}]
tellraw @a[team=cyan,tag=hunter] [{"text": ""},{"text": "你将抓捕","color":"gold"},{"selector":"@a[team=red,tag=runner]"},{"text": "！","color": "gold"}]
tellraw @a[team=pink,tag=hunter] [{"text": ""},{"text": "你将抓捕","color":"gold"},{"selector":"@a[team=blue,tag=runner]"},{"text": "！","color": "gold"}]
tellraw @a[team=orange,tag=hunter] [{"text": ""},{"text": "你将抓捕","color":"gold"},{"selector":"@a[team=green,tag=runner]"},{"text": "！","color": "gold"}]
tellraw @a[team=purple,tag=hunter] [{"text": ""},{"text": "你将抓捕","color":"gold"},{"selector":"@a[team=yellow,tag=runner]"},{"text": "！","color": "gold"}]


# Teleports all players
execute if score map pkt_game matches 4 run function parkourtag:map/4/ready_tp
execute if score map pkt_game matches 5 run function parkourtag:map/5/ready_tp



# Announces Hunters
tellraw @a[team=red,tag=runner] [{"text": ""},{"selector":"@a[team=cyan,tag=hunter]"},{"text": " 是对方的抓捕者！","bold": true,"color":"green"}]
tellraw @a[team=blue,tag=runner] [{"text": ""},{"selector":"@a[team=pink,tag=hunter]"},{"text": " 是对方的抓捕者！","bold": true,"color":"green"}]
tellraw @a[team=green,tag=runner] [{"text": ""},{"selector":"@a[team=orange,tag=hunter]"},{"text": " 是对方的抓捕者！","bold": true,"color":"green"}]
tellraw @a[team=yellow,tag=runner] [{"text": ""},{"selector":"@a[team=purple,tag=hunter]"},{"text": " 是对方的抓捕者！","bold": true,"color":"green"}]
tellraw @a[team=cyan,tag=runner] [{"text": ""},{"selector":"@a[team=red,tag=hunter]"},{"text": " 是对方的抓捕者！","bold": true,"color":"green"}]
tellraw @a[team=pink,tag=runner] [{"text": ""},{"selector":"@a[team=blue,tag=hunter]"},{"text": " 是对方的抓捕者！","bold": true,"color":"green"}]
tellraw @a[team=orange,tag=runner] [{"text": ""},{"selector":"@a[team=green,tag=hunter]"},{"text": " 是对方的抓捕者！","bold": true,"color":"green"}]
tellraw @a[team=purple,tag=runner] [{"text": ""},{"selector":"@a[team=yellow,tag=hunter]"},{"text": " 是对方的抓捕者！","bold": true,"color":"green"}]

# Glow Players
effect give @a[tag=runner] glowing 65 0 true
execute as @a[tag=runner] run attribute @s generic.attack_damage base set -1
execute as @a[tag=hunter] run attribute @s generic.attack_damage base set 2000
execute as @a[tag=runner] run attribute @s generic.movement_speed base set 0.1
execute as @a[tag=hunter] run attribute @s generic.movement_speed base set 0.105

# Announce Times
function parkourtag:timeannounce/5
schedule function parkourtag:timeannounce/4 1s
schedule function parkourtag:timeannounce/3 2s
schedule function parkourtag:timeannounce/2 3s
schedule function parkourtag:timeannounce/1 4s
schedule function parkourtag:game/4/start 5s
function master:timer/starting/5s
