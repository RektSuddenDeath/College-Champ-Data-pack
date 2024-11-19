
title @a[team=yellow] times 0 80 20
title @a[team=yellow] title ""
title @a[team=yellow] subtitle ["§c[§r鼱§c] 轨道修复矿车未达到存档点！"]
tellraw @a[team=yellow] ["§c[§r鼱§c] 轨道修复矿车未达到规定存档点！请检查上一区域的轨道是否正确！"]
execute as @a[team=yellow] at @s run playsound sound.generalshrinkwarn record @s