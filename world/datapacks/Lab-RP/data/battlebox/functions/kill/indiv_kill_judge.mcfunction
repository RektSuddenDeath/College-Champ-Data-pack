# Friendly fire exclusion
execute as @s run function battlebox:kill/friendlykill

# Decides if there is a valid killer
execute as @s run function battlebox:kill/findkiller

# Player Kill
execute as @s[tag=!bb_nokiller] run function battlebox:kill/killmsg

# Nature Damage
execute as @s[tag=bb_nokiller] run function battlebox:kill/nature

tag @s remove queue_kill_judge
tag @s remove bb_alive
tag @s add bb_round_eliminated
tag @s remove healthbar_included
# Death fx
execute if entity @s[team=red] run execute as @a[team=red] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5
execute if entity @s[team=blue] run execute as @a[team=blue] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5
execute if entity @s[team=green] run execute as @a[team=green] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5
execute if entity @s[team=yellow] run execute as @a[team=yellow] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5
execute if entity @s[team=cyan] run execute as @a[team=cyan] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5
execute if entity @s[team=pink] run execute as @a[team=pink] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5
execute if entity @s[team=orange] run execute as @a[team=orange] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5
execute if entity @s[team=purple] run execute as @a[team=purple] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 1.5

# # Fireworks
# execute if entity @s[team=red] at @s run summon firework_rocket ~ ~1 ~ {Silent:1b,Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;11743532]}]}}}}
# execute if entity @s[team=blue] at @s run summon firework_rocket ~ ~1 ~ {Silent:1b,Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;262399]}]}}}}
# execute if entity @s[team=green] at @s run summon firework_rocket ~ ~1 ~ {Silent:1b,Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;41496]}]}}}}
# execute if entity @s[team=yellow] at @s run summon firework_rocket ~ ~1 ~ {Silent:1b,Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;15662848]}]}}}}
# execute if entity @s[team=cyan] at @s run summon firework_rocket ~ ~1 ~ {Silent:1b,Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;26494]}]}}}}
# execute if entity @s[team=pink] at @s run summon firework_rocket ~ ~1 ~ {Silent:1b,Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16711884]}]}}}}
# execute if entity @s[team=orange] at @s run summon firework_rocket ~ ~1 ~ {Silent:1b,Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;16744448]}]}}}}
# execute if entity @s[team=purple] at @s run summon firework_rocket ~ ~1 ~ {Silent:1b,Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Colors:[I;9175295]}]}}}}