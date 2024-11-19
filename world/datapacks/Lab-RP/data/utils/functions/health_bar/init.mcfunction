

scoreboard objectives add generic.healthbar dummy
scoreboard objectives add generic.healthbar_indv dummy
scoreboard objectives add generic.healthbar_team_max dummy
scoreboard objectives add generic.healthbar_team_percent dummy

# 1000倍的最大生命值数值
scoreboard players set max_health generic.healthbar 20000

# 0-40的数组定义
data remove storage generic.health_bar bar_char

data modify storage generic.health_bar bar_char append value "0"
data modify storage generic.health_bar bar_char append value "1"
data modify storage generic.health_bar bar_char append value "2"
data modify storage generic.health_bar bar_char append value "3"
data modify storage generic.health_bar bar_char append value "4"
data modify storage generic.health_bar bar_char append value "5"
data modify storage generic.health_bar bar_char append value "6"
data modify storage generic.health_bar bar_char append value "7"
data modify storage generic.health_bar bar_char append value "8"
data modify storage generic.health_bar bar_char append value "9"

data modify storage generic.health_bar bar_char append value "a"
data modify storage generic.health_bar bar_char append value "b"
data modify storage generic.health_bar bar_char append value "c"
data modify storage generic.health_bar bar_char append value "d"
data modify storage generic.health_bar bar_char append value "e"
data modify storage generic.health_bar bar_char append value "f"
data modify storage generic.health_bar bar_char append value "g"
data modify storage generic.health_bar bar_char append value "h"
data modify storage generic.health_bar bar_char append value "i"
data modify storage generic.health_bar bar_char append value "j"

data modify storage generic.health_bar bar_char append value "k"
data modify storage generic.health_bar bar_char append value "l"
data modify storage generic.health_bar bar_char append value "m"
data modify storage generic.health_bar bar_char append value "n"
data modify storage generic.health_bar bar_char append value "o"
data modify storage generic.health_bar bar_char append value "p"
data modify storage generic.health_bar bar_char append value "q"
data modify storage generic.health_bar bar_char append value "r"
data modify storage generic.health_bar bar_char append value "s"
data modify storage generic.health_bar bar_char append value "t"

data modify storage generic.health_bar bar_char append value "u"
data modify storage generic.health_bar bar_char append value "v"
data modify storage generic.health_bar bar_char append value "w"
data modify storage generic.health_bar bar_char append value "x"
data modify storage generic.health_bar bar_char append value "y"
data modify storage generic.health_bar bar_char append value "z"
data modify storage generic.health_bar bar_char append value "A"
data modify storage generic.health_bar bar_char append value "B"
data modify storage generic.health_bar bar_char append value "C"
data modify storage generic.health_bar bar_char append value "D"


data modify storage generic.health_bar bar_char append value "E"
function utils:health_bar/loop