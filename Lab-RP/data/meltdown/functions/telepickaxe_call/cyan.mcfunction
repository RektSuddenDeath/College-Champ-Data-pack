
execute as @a[team=cyan,tag=!temp_self,tag=meltdown_has_telepickaxe] run function meltdown:telepickaxe_call/remove
function meltdown:telepickaxe_call/call_to_self
scoreboard players set @a[team=cyan] meltdown_telepickaxe_cooldown 200
tellraw @a[team=cyan] ["",{"selector":"@s"},"召唤了本队的§b移动镐§f。"]