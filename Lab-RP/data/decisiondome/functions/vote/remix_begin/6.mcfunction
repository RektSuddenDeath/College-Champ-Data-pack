clear @a egg
tp @a[team=!spec] -10000 103 -10000

execute as @a[team=!spec] run title @s title ""
execute as @a[team=!spec] run title @s subtitle ["","按","§6SHIFT","§f召唤小鸡！"]
execute as @a[team=!spec] run title @s times 0 100 40

scoreboard objectives add dd_remix_sneaks custom:sneak_time
scoreboard objectives add dd_remix_sneaks_prev dummy
scoreboard objectives add dd_remix_sneaks_milestone dummy

scoreboard players set @a dd_remix_sneaks 0
scoreboard players set @a dd_remix_sneaks_prev 0
scoreboard players set @a dd_remix_sneaks_milestone 5

function decisiondome:vote/remix_loop/6