
execute unless entity @a[team=green,tag=sotChallenger,distance=0..5] run tellraw @p[team=green] ["[§c!§f] ","§c§l限时挑战的奖励只能由完成挑战者领取！"]
execute unless entity @a[team=green,tag=sotChallenger,distance=0..5] run return 0

execute as @e[type=area_effect_cloud,tag=green,tag=sotchallenge] at @s run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=green,tag=sotchallenge] at @s run fill ~1 ~2 ~11 ~-1 ~-1 ~11 air

# Base Rewards
scoreboard players set @p[team=green,tag=sotChallenger] SotNugget 140
# Extra Rewards
give @a[team=green] arrow 32

tag @a[team=green,tag=sotChallenger] remove sotChallenger


tellraw @a[team=green] ["","[","§6§lSands of Time","]: ","§e触发限时挑战奖励，全队获得大量额外箭。"]
execute as @a[team=green] at @s run playsound minecraft:sound.majoracquire record @s

kill @e[type=area_effect_cloud,tag=greentext,tag=sotmapanchors]
kill @e[type=area_effect_cloud,tag=green,tag=sotchallenge]