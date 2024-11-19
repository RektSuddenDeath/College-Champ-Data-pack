
execute unless entity @a[team=cyan,tag=sotChallenger,distance=0..5] run tellraw @p[team=cyan] ["[§c!§f] ","§c§l限时挑战的奖励只能由完成挑战者领取！"]
execute unless entity @a[team=cyan,tag=sotChallenger,distance=0..5] run return 0

execute as @e[type=area_effect_cloud,tag=cyan,tag=sotchallenge] at @s run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=cyan,tag=sotchallenge] at @s run fill ~1 ~2 ~11 ~-1 ~-1 ~11 air

# Base Rewards
scoreboard players set @p[team=cyan,tag=sotChallenger] SotNugget 140
# Extra Rewards
give @a[team=cyan] arrow 32

tag @a[team=cyan,tag=sotChallenger] remove sotChallenger


tellraw @a[team=cyan] ["","[","§6§lSands of Time","]: ","§e触发限时挑战奖励，全队获得大量额外箭。"]
execute as @a[team=cyan] at @s run playsound minecraft:sound.majoracquire record @s

kill @e[type=area_effect_cloud,tag=cyantext,tag=sotmapanchors]
kill @e[type=area_effect_cloud,tag=cyan,tag=sotchallenge]