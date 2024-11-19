

execute as @a at @s anchored eyes unless block ^ ^ ^1 air run function buildmart:blocktitle/1
execute as @a at @s anchored eyes if block ^ ^ ^1 air unless block ^ ^ ^2 air run function buildmart:blocktitle/2
execute as @a at @s anchored eyes if block ^ ^ ^1 air if block ^ ^ ^2 air unless block ^ ^ ^3 air run function buildmart:blocktitle/3
execute as @a at @s anchored eyes if block ^ ^ ^1 air if block ^ ^ ^2 air if block ^ ^ ^3 air unless block ^ ^ ^4 air run function buildmart:blocktitle/4
execute as @a at @s anchored eyes if block ^ ^ ^1 air if block ^ ^ ^2 air if block ^ ^ ^3 air if block ^ ^ ^4 air unless block ^ ^ ^5 air run function buildmart:blocktitle/5

schedule function buildmart:blocktitle 3t