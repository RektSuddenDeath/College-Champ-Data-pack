
# MAP IS CREATED IN +X DIRECTION.
scoreboard objectives remove pkws_anchor_sequence
scoreboard objectives add pkws_anchor_sequence dummy
scoreboard players set $current_flag pkws_anchor_sequence 0

scoreboard objectives remove pkws_anchor_sequence_leap_gate
scoreboard objectives add pkws_anchor_sequence_leap_gate dummy
scoreboard players set $current_flag pkws_anchor_sequence_leap_gate 0
## Void Height, is always 20 blocks below the exit gate.
scoreboard objectives remove pkws_void_height
scoreboard objectives add pkws_void_height dummy

## temp calc
scoreboard objectives remove pkws_mapreg_temp
scoreboard objectives add pkws_mapreg_temp dummy
## Checkpoints always have a pair of "Entry, Respawn Point, Exit" Anchors.
## Entry anchors serve as obstacle completion point. Beyond this coord when player lands will count a completion.
## Respawn Point is as the name suggests.
## Exit anchor will make the player start the next obstacle, playing the obstacle title.

## Leap Gates also have a pair of Graphic Entities, which is also a pair of "Entry and Exit".

## LOGIC: （关卡长度不能低于14！）
## 执行这个系统的玩家将被tag，然后从初始点开始以12为Radius进行探测，如果能同时探测到一组anchor则进行标记和数值录入
## 如果并没有找到任何anchor，则将加载区步进 6 Blocks
## 如果探测不完整，则将加载区步进 1 Block.
## 当检测到全部anchor时，将其进行全部标记，并且将Step值+1.

tellraw @s ["[§6Dev§r] ","正在执行地图标记功能，不要移动。"]
tag @s add pkws_map_anchor_flag

################ WIP! ###############
## WIP
#tp @s 0 0 0

#function pkws:map_reg/loop