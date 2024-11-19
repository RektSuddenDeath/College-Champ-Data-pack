

execute as @a[scores={meltdown_telepickaxe_cooldown=1..,meltdown_telepickaxe_call=1}] run function meltdown:telepickaxe_call/fail

execute as @r[team=red,scores={meltdown_telepickaxe_cooldown=0,meltdown_telepickaxe_call=1}] run function meltdown:telepickaxe_call/red
execute as @r[team=blue,scores={meltdown_telepickaxe_cooldown=0,meltdown_telepickaxe_call=1}] run function meltdown:telepickaxe_call/blue
execute as @r[team=green,scores={meltdown_telepickaxe_cooldown=0,meltdown_telepickaxe_call=1}] run function meltdown:telepickaxe_call/green
execute as @r[team=yellow,scores={meltdown_telepickaxe_cooldown=0,meltdown_telepickaxe_call=1}] run function meltdown:telepickaxe_call/yellow
execute as @r[team=cyan,scores={meltdown_telepickaxe_cooldown=0,meltdown_telepickaxe_call=1}] run function meltdown:telepickaxe_call/cyan
execute as @r[team=pink,scores={meltdown_telepickaxe_cooldown=0,meltdown_telepickaxe_call=1}] run function meltdown:telepickaxe_call/pink
execute as @r[team=orange,scores={meltdown_telepickaxe_cooldown=0,meltdown_telepickaxe_call=1}] run function meltdown:telepickaxe_call/orange
execute as @r[team=purple,scores={meltdown_telepickaxe_cooldown=0,meltdown_telepickaxe_call=1}] run function meltdown:telepickaxe_call/purple

scoreboard players remove @a[scores={meltdown_telepickaxe_cooldown=1..}] meltdown_telepickaxe_cooldown 1

scoreboard players set @a meltdown_telepickaxe_call 0
schedule function meltdown:telepickaxe_call_handler 1t