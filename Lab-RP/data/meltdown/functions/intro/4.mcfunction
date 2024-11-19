tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a "  §l你的弓能够一击冻结敌人，并且具有无限附魔。"
tellraw @a " "
tellraw @a "  若你被冻结，你的队友可以通过在你身边放下§c加热器§r来复活你。"
tellraw @a "  加热器越多，复活的越快。但是你的加热器能够被敌人§c近战一击摧毁§r。"
tellraw @a "  "
tellraw @a "  若全队被§b冻结§r且没有有效的加热器，团队将§c立即淘汰§r。"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10