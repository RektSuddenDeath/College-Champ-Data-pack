
execute as @a[scores={carrotgun=1..,rsr_dura_clips=1..,rsr_internal_cd=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}}] at @s run function test:aug10_fireballtest/weapon/summon
scoreboard players set @a carrotgun 0
schedule function test:aug10_fireballtest/weapon/player_dura 1t