
effect give @a[x=-954,y=103,z=-1037,dx=3,dy=6,dz=3] resistance 5 5 true
effect give @a[x=-954,y=103,z=-1037,dx=3,dy=6,dz=3] speed 5 6 true
title @a[x=-954,y=103,z=-1037,dx=3,dy=6,dz=3] title " "
title @a[x=-954,y=103,z=-1037,dx=3,dy=6,dz=3] subtitle [{"text":"获得效果 - 抗性提升 VI","color":"aqua"},{"text":" 速度 VII","color":"green"}]

execute if score gameflag ar_game matches 1 run schedule function acerace:effectblock/invincible 3t