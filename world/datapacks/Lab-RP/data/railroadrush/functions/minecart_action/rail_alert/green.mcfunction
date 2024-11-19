
title @a[team=green] times 0 80 20
title @a[team=green] title ""
title @a[team=green] subtitle ["§c[§r鼱§c] 轨道修复矿车未达到存档点！"]
tellraw @a[team=green] ["§c[§r鼱§c] 轨道修复矿车未达到规定存档点！请检查上一区域的轨道是否正确！"]
execute as @a[team=green] at @s run playsound sound.generalshrinkwarn record @s