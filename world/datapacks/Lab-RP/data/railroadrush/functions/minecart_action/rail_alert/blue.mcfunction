
title @a[team=blue] times 0 80 20
title @a[team=blue] title ""
title @a[team=blue] subtitle ["§c[§r鼱§c] 轨道修复矿车未达到存档点！"]
tellraw @a[team=blue] ["§c[§r鼱§c] 轨道修复矿车未达到规定存档点！请检查上一区域的轨道是否正确！"]
execute as @a[team=blue] at @s run playsound sound.generalshrinkwarn record @s