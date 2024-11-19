
title @a[team=pink] times 0 80 20
title @a[team=pink] title ""
title @a[team=pink] subtitle ["§c[§r鼱§c] 轨道修复矿车未达到存档点！"]
tellraw @a[team=pink] ["§c[§r鼱§c] 轨道修复矿车未达到规定存档点！请检查上一区域的轨道是否正确！"]
execute as @a[team=pink] at @s run playsound sound.generalshrinkwarn record @s