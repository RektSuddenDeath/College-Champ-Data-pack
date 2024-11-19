
execute unless entity @a[tag=runner] run tellraw @a "本轮无人生还。"
execute if entity @a[tag=runner] run tellraw @a "本轮存活的队伍有: "