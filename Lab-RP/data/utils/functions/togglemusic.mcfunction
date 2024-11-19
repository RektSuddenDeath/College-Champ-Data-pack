
tag @a[tag=mutemusic,scores={togglemusic=1..}] add temp_mms

tellraw @a[tag=mutemusic,scores={togglemusic=1..}] "§a你现在可以听到游戏音乐了。"
tellraw @a[tag=!mutemusic,scores={togglemusic=1..}] "§c你现在不会听到游戏音乐了。"
stopsound @a[tag=!mutemusic,scores={togglemusic=1..}] record

tag @a[tag=!mutemusic,scores={togglemusic=1..}] add mutemusic
tag @a[tag=temp_mms] remove mutemusic

tag @a remove temp_mms
scoreboard players enable @a togglemusic
scoreboard players set @a togglemusic 0

schedule function utils:togglemusic 5t