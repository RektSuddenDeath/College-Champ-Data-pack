
scoreboard objectives add stoneMedal dummy
scoreboard objectives add bronzeMedal dummy
scoreboard objectives add silverMedal dummy
scoreboard objectives add goldMedal dummy
scoreboard objectives add goldBonus dummy
scoreboard objectives add pkw2_indvscore dummy
scoreboard objectives add pkw2_extrascore dummy
scoreboard objectives add pkw2_selfmulti dummy

scoreboard players set @a stoneMedal 0
scoreboard players set @a bronzeMedal 0
scoreboard players set @a silverMedal 0
scoreboard players set @a goldMedal 0
scoreboard players set @a goldBonus 0
scoreboard players set @a pkw2_indvscore 0
scoreboard players set @a pkw2_extrascore 0
scoreboard players set @a pkw2_selfmulti 0

scoreboard objectives add pkw2_teamscore dummy
scoreboard players set red pkw2_teamscore 0
scoreboard players set blue pkw2_teamscore 0
scoreboard players set green pkw2_teamscore 0
scoreboard players set yellow pkw2_teamscore 0
scoreboard players set cyan pkw2_teamscore 0
scoreboard players set orange pkw2_teamscore 0
scoreboard players set purple pkw2_teamscore 0
scoreboard players set pink pkw2_teamscore 0


execute as @a run scoreboard players operation @s stoneMedal = @s pkw2_main

scoreboard players add @a[scores={pkw2_bonus1=1..}] bronzeMedal 1
scoreboard players add @a[scores={pkw2_bonus2=1..}] bronzeMedal 1
scoreboard players add @a[scores={pkw2_bonus3=1..}] bronzeMedal 1
scoreboard players add @a[scores={pkw2_bonus4=1..}] bronzeMedal 1
scoreboard players add @a[scores={pkw2_bonus5=1..}] bronzeMedal 1

scoreboard players add @a[scores={pkw2_bonus1=2..}] silverMedal 1
scoreboard players add @a[scores={pkw2_bonus2=2..}] silverMedal 1
scoreboard players add @a[scores={pkw2_bonus3=2..}] silverMedal 1
scoreboard players add @a[scores={pkw2_bonus4=2..}] silverMedal 1
scoreboard players add @a[scores={pkw2_bonus5=2..}] silverMedal 1

scoreboard players add @a[scores={pkw2_bonus1=3..}] goldMedal 1
scoreboard players add @a[scores={pkw2_bonus2=3..}] goldMedal 1
scoreboard players add @a[scores={pkw2_bonus3=3..}] goldMedal 1
scoreboard players add @a[scores={pkw2_bonus4=3..}] goldMedal 1
scoreboard players add @a[scores={pkw2_bonus5=3..}] goldMedal 1

scoreboard players operation @a[scores={pkw2_bonus1=3..}] goldBonus += bonus1 pkw2_gamescore
scoreboard players operation @a[scores={pkw2_bonus2=3..}] goldBonus += bonus2 pkw2_gamescore
scoreboard players operation @a[scores={pkw2_bonus3=3..}] goldBonus += bonus3 pkw2_gamescore
scoreboard players operation @a[scores={pkw2_bonus4=3..}] goldBonus += bonus4 pkw2_gamescore
scoreboard players operation @a[scores={pkw2_bonus5=3..}] goldBonus += bonus5 pkw2_gamescore

function pkw2:scoring/count