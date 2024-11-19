
execute as @a[team=red,scores={firework_deaths=1..}] at @s run summon firework_rocket ~ ~1.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Flicker:false,Colors:[I;16711680]}]}}}}
execute as @a[team=blue,scores={firework_deaths=1..}] at @s run summon firework_rocket ~ ~1.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Flicker:false,Colors:[I;524543]}]}}}}
execute as @a[team=green,scores={firework_deaths=1..}] at @s run summon firework_rocket ~ ~1.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Flicker:false,Colors:[I;6225664]}]}}}}
execute as @a[team=yellow,scores={firework_deaths=1..}] at @s run summon firework_rocket ~ ~1.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Flicker:false,Colors:[I;16773632]}]}}}}
execute as @a[team=cyan,scores={firework_deaths=1..}] at @s run summon firework_rocket ~ ~1.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Flicker:false,Colors:[I;35980]}]}}}}
execute as @a[team=pink,scores={firework_deaths=1..}] at @s run summon firework_rocket ~ ~1.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Flicker:false,Colors:[I;16711922]}]}}}}
execute as @a[team=orange,scores={firework_deaths=1..}] at @s run summon firework_rocket ~ ~1.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Flicker:false,Colors:[I;16755200]}]}}}}
execute as @a[team=purple,scores={firework_deaths=1..}] at @s run summon firework_rocket ~ ~1.2 ~ {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Flicker:false,Colors:[I;10617087]}]}}}}

scoreboard players set @a firework_deaths 0
schedule function utils:firework_death 1t