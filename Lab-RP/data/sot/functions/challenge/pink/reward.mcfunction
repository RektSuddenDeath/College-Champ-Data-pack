
execute unless entity @a[team=pink,tag=sotChallenger,distance=0..5] run tellraw @p[team=pink] ["[§c!§f] ","§c§l限时挑战的奖励只能由完成挑战者领取！"]
execute unless entity @a[team=pink,tag=sotChallenger,distance=0..5] run return 0

execute as @e[type=area_effect_cloud,tag=pink,tag=sotchallenge] at @s run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=pink,tag=sotchallenge] at @s run fill ~1 ~2 ~11 ~-1 ~-1 ~11 air

# Base Rewards
scoreboard players set @p[team=pink,tag=sotChallenger] SotNugget 140
# Extra Rewards
give @a[team=pink] arrow 32

tag @a[team=pink,tag=sotChallenger] remove sotChallenger


tellraw @a[team=pink] ["","[","§6§lSands of Time","]: ","§e触发限时挑战奖励，全队获得大量额外箭。"]
execute as @a[team=pink] at @s run playsound minecraft:sound.majoracquire record @s

kill @e[type=area_effect_cloud,tag=pinktext,tag=sotmapanchors]
kill @e[type=area_effect_cloud,tag=pink,tag=sotchallenge]