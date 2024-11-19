
execute if score wrong_answer_penalty elevatorjoke matches 1 run setblock -9956 101 -9994 oak_button
execute if score wrong_answer_penalty elevatorjoke matches 1.. run scoreboard players remove wrong_answer_penalty elevatorjoke 1

execute if block -9954 101 -10003 oak_button[powered=true] run function decisiondome:elevatorjoke/11/loop_left
execute if block -9954 101 -10003 oak_button[powered=true] run setblock -9954 101 -10003 air

execute if block -9954 101 -9997 oak_button[powered=true] run function decisiondome:elevatorjoke/11/loop_right
execute if block -9954 101 -9997 oak_button[powered=true] run setblock -9954 101 -9997 air

execute if block -9956 101 -9994 oak_button[powered=true] if block -9953 101 -9993 hopper{Items:[{id:"minecraft:paper",Slot:2b,tag:{display:{Name:'"1"'}}}]} if block -9954 101 -9993 hopper{Items:[{id:"minecraft:paper",Slot:2b,tag:{display:{Name:'"1"'}}}]} if block -9955 101 -9993 hopper{Items:[{id:"minecraft:paper",Slot:2b,tag:{display:{Name:'"5"'}}}]} run function decisiondome:elevatorjoke/11/init_remix
execute if block -9956 101 -9994 oak_button[powered=true] if block -9953 101 -9993 hopper{Items:[{id:"minecraft:paper",Slot:2b,tag:{display:{Name:'"1"'}}}]} if block -9954 101 -9993 hopper{Items:[{id:"minecraft:paper",Slot:2b,tag:{display:{Name:'"1"'}}}]} if block -9955 101 -9993 hopper{Items:[{id:"minecraft:paper",Slot:2b,tag:{display:{Name:'"5"'}}}]} run return 1
execute if block -9956 101 -9994 oak_button[powered=true] run scoreboard players set wrong_answer_penalty elevatorjoke 101
execute if block -9956 101 -9994 oak_button[powered=true] run tellraw @a "§c密码输入错误，罚时5秒。"
execute if block -9956 101 -9994 oak_button[powered=true] run setblock -9956 101 -9994 air

schedule function decisiondome:elevatorjoke/11/detect_button 1t