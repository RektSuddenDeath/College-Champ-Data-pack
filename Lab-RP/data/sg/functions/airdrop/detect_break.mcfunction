

execute as @a[scores={sg_airdropBreak=1..}] if score airdropNo sg_game matches 1 run function sg:airdrop/1/broken
execute as @a[scores={sg_airdropBreak=1..}] if score airdropNo sg_game matches 2 run function sg:airdrop/2/broken
execute as @a[scores={sg_airdropBreak=1..}] if score airdropNo sg_game matches 3 run function sg:airdrop/3/broken
execute as @a[scores={sg_airdropBreak=1..}] if score airdropNo sg_game matches 4 run function sg:airdrop/4/broken
execute as @a[scores={sg_airdropBreak=1..}] if score airdropNo sg_game matches 5 run function sg:airdrop/5/broken

scoreboard players set @a sg_airdropBreak 0