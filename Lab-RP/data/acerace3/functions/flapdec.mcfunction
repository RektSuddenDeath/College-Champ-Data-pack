

# Results should be translated to M:SS.mm before broadcasting
# Pos1
## Save
tellraw @a " "
execute as @a[tag=ar_pos1] run scoreboard players operation @s ar_temp1 = 1 ar_bestlaptime
execute as @a[tag=ar_pos1] run scoreboard players operation @s ar_temp2 = 1 ar_bestlaptime
execute as @a[tag=ar_pos1] run scoreboard players operation @s ar_temp3 = 1 ar_bestlaptime
## Minute (60,000ms)
scoreboard players operation @a[tag=ar_pos1] ar_temp1 /= 6000 math

## Second (1,000ms)
scoreboard players operation @a[tag=ar_pos1] ar_temp2 %= 6000 math
scoreboard players operation @a[tag=ar_pos1] ar_temp2 /= 100 math

## Milisec
scoreboard players operation @a[tag=ar_pos1] ar_temp3 %= 100 math
## Announce
execute as @a[tag=ar_pos1] if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 0..9 run tellraw @a [{"text": ""},{"text": "1. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":0",{"score":{"objective": "ar_temp2","name": "@s"}},".0",{"score":{"objective": "ar_temp3","name": "@s"}}]
execute as @a[tag=ar_pos1] if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 10..99 run tellraw @a [{"text": ""},{"text": "1. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":0",{"score":{"objective": "ar_temp2","name": "@s"}},".",{"score":{"objective": "ar_temp3","name": "@s"}}]
execute as @a[tag=ar_pos1] if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 0..9 run tellraw @a [{"text": ""},{"text": "1. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":",{"score":{"objective": "ar_temp2","name": "@s"}},".0",{"score":{"objective": "ar_temp3","name": "@s"}}]
execute as @a[tag=ar_pos1] if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 10..99 run tellraw @a [{"text": ""},{"text": "1. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":",{"score":{"objective": "ar_temp2","name": "@s"}},".",{"score":{"objective": "ar_temp3","name": "@s"}}]


# Pos2
## Save
execute as @a[tag=ar_pos2] run scoreboard players operation @s ar_temp1 = 2 ar_bestlaptime
execute as @a[tag=ar_pos2] run scoreboard players operation @s ar_temp2 = 2 ar_bestlaptime
execute as @a[tag=ar_pos2] run scoreboard players operation @s ar_temp3 = 2 ar_bestlaptime
## Minute (60,000ms)
scoreboard players operation @a[tag=ar_pos2] ar_temp1 /= 6000 math

## Second (1,000ms)
scoreboard players operation @a[tag=ar_pos2] ar_temp2 %= 6000 math
scoreboard players operation @a[tag=ar_pos2] ar_temp2 /= 100 math

## Milisec
scoreboard players operation @a[tag=ar_pos2] ar_temp3 %= 100 math
## Announce
execute as @a[tag=ar_pos2] if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 0..9 run tellraw @a [{"text": ""},{"text": "2. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":0",{"score":{"objective": "ar_temp2","name": "@s"}},".0",{"score":{"objective": "ar_temp3","name": "@s"}}]
execute as @a[tag=ar_pos2] if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 10..99 run tellraw @a [{"text": ""},{"text": "2. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":0",{"score":{"objective": "ar_temp2","name": "@s"}},".",{"score":{"objective": "ar_temp3","name": "@s"}}]
execute as @a[tag=ar_pos2] if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 0..9 run tellraw @a [{"text": ""},{"text": "2. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":",{"score":{"objective": "ar_temp2","name": "@s"}},".0",{"score":{"objective": "ar_temp3","name": "@s"}}]
execute as @a[tag=ar_pos2] if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 10..99 run tellraw @a [{"text": ""},{"text": "2. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":",{"score":{"objective": "ar_temp2","name": "@s"}},".",{"score":{"objective": "ar_temp3","name": "@s"}}]


# Pos3
## Save
execute as @a[tag=ar_pos3] run scoreboard players operation @s ar_temp1 = 3 ar_bestlaptime
execute as @a[tag=ar_pos3] run scoreboard players operation @s ar_temp2 = 3 ar_bestlaptime
execute as @a[tag=ar_pos3] run scoreboard players operation @s ar_temp3 = 3 ar_bestlaptime
## Minute (60,000ms)
scoreboard players operation @a[tag=ar_pos3] ar_temp1 /= 6000 math

## Second (1,000ms)
scoreboard players operation @a[tag=ar_pos3] ar_temp2 %= 6000 math
scoreboard players operation @a[tag=ar_pos3] ar_temp2 /= 100 math

## Milisec
scoreboard players operation @a[tag=ar_pos3] ar_temp3 %= 100 math
## Announce
execute as @a[tag=ar_pos3] if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 0..9 run tellraw @a [{"text": ""},{"text": "3. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":0",{"score":{"objective": "ar_temp2","name": "@s"}},".0",{"score":{"objective": "ar_temp3","name": "@s"}}]
execute as @a[tag=ar_pos3] if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 10..99 run tellraw @a [{"text": ""},{"text": "3. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":0",{"score":{"objective": "ar_temp2","name": "@s"}},".",{"score":{"objective": "ar_temp3","name": "@s"}}]
execute as @a[tag=ar_pos3] if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 0..9 run tellraw @a [{"text": ""},{"text": "3. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":",{"score":{"objective": "ar_temp2","name": "@s"}},".0",{"score":{"objective": "ar_temp3","name": "@s"}}]
execute as @a[tag=ar_pos3] if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 10..99 run tellraw @a [{"text": ""},{"text": "3. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":",{"score":{"objective": "ar_temp2","name": "@s"}},".",{"score":{"objective": "ar_temp3","name": "@s"}}]


# Pos4
## Save
execute as @a[tag=ar_pos4] run scoreboard players operation @s ar_temp1 = 4 ar_bestlaptime
execute as @a[tag=ar_pos4] run scoreboard players operation @s ar_temp2 = 4 ar_bestlaptime
execute as @a[tag=ar_pos4] run scoreboard players operation @s ar_temp3 = 4 ar_bestlaptime
## Minute (60,000ms)
scoreboard players operation @a[tag=ar_pos4] ar_temp1 /= 6000 math

## Second (1,000ms)
scoreboard players operation @a[tag=ar_pos4] ar_temp2 %= 6000 math
scoreboard players operation @a[tag=ar_pos4] ar_temp2 /= 100 math

## Milisec
scoreboard players operation @a[tag=ar_pos4] ar_temp3 %= 100 math
## Announce
execute as @a[tag=ar_pos4] if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 0..9 run tellraw @a [{"text": ""},{"text": "4. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":0",{"score":{"objective": "ar_temp2","name": "@s"}},".0",{"score":{"objective": "ar_temp3","name": "@s"}}]
execute as @a[tag=ar_pos4] if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 10..99 run tellraw @a [{"text": ""},{"text": "4. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":0",{"score":{"objective": "ar_temp2","name": "@s"}},".",{"score":{"objective": "ar_temp3","name": "@s"}}]
execute as @a[tag=ar_pos4] if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 0..9 run tellraw @a [{"text": ""},{"text": "4. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":",{"score":{"objective": "ar_temp2","name": "@s"}},".0",{"score":{"objective": "ar_temp3","name": "@s"}}]
execute as @a[tag=ar_pos4] if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 10..99 run tellraw @a [{"text": ""},{"text": "4. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":",{"score":{"objective": "ar_temp2","name": "@s"}},".",{"score":{"objective": "ar_temp3","name": "@s"}}]


# Pos5
## Save
execute as @a[tag=ar_pos5] run scoreboard players operation @s ar_temp1 = 5 ar_bestlaptime
execute as @a[tag=ar_pos5] run scoreboard players operation @s ar_temp2 = 5 ar_bestlaptime
execute as @a[tag=ar_pos5] run scoreboard players operation @s ar_temp3 = 5 ar_bestlaptime
## Minute (60,000ms)
scoreboard players operation @a[tag=ar_pos5] ar_temp1 /= 6000 math

## Second (1,000ms)
scoreboard players operation @a[tag=ar_pos5] ar_temp2 %= 6000 math
scoreboard players operation @a[tag=ar_pos5] ar_temp2 /= 100 math

## Milisec
scoreboard players operation @a[tag=ar_pos5] ar_temp3 %= 100 math
## Announce
execute as @a[tag=ar_pos5] if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 0..9 run tellraw @a [{"text": ""},{"text": "5. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":0",{"score":{"objective": "ar_temp2","name": "@s"}},".0",{"score":{"objective": "ar_temp3","name": "@s"}}]
execute as @a[tag=ar_pos5] if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 10..99 run tellraw @a [{"text": ""},{"text": "5. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":0",{"score":{"objective": "ar_temp2","name": "@s"}},".",{"score":{"objective": "ar_temp3","name": "@s"}}]
execute as @a[tag=ar_pos5] if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 0..9 run tellraw @a [{"text": ""},{"text": "5. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":",{"score":{"objective": "ar_temp2","name": "@s"}},".0",{"score":{"objective": "ar_temp3","name": "@s"}}]
execute as @a[tag=ar_pos5] if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 10..99 run tellraw @a [{"text": ""},{"text": "5. "},{"selector":"@s"},{"text": "    "},{"score":{"objective": "ar_temp1","name": "@s"}},":",{"score":{"objective": "ar_temp2","name": "@s"}},".",{"score":{"objective": "ar_temp3","name": "@s"}}]
tellraw @a ""