
function decisiondome:column/contract

kill @e[type=text_display,tag=decisiondome,tag=vote_display]
kill @e[type=item]

function decisiondome:disablegame

fill -10002 97 -10017 -9998 97 -10013 red_concrete
fill -10002 98 -10017 -9998 99 -10013 water
fill -10001 105 -10017 -9999 105 -10013 red_concrete
fill -10002 105 -10014 -9998 105 -10016 red_concrete

fill -9987 105 -10001 -9983 105 -9999 blue_concrete
fill -9984 105 -10002 -9986 105 -9998 blue_concrete
fill -9983 97 -10002 -9987 97 -9998 blue_concrete
fill -9983 98 -10002 -9987 99 -9998 water

fill -10001 105 -9983 -9999 105 -9987 green_concrete
fill -9998 105 -9986 -10002 105 -9984 green_concrete
fill -9998 97 -9987 -10002 97 -9983 green_concrete
fill -9998 98 -9987 -10002 99 -9983 water

fill -10014 105 -9998 -10016 105 -10002 yellow_concrete
fill -10013 105 -10001 -10017 105 -9999 yellow_concrete
fill -10013 97 -10002 -10017 97 -9998 yellow_concrete
fill -10013 98 -10002 -10017 99 -9998 water

fill -9991 105 -10012 -9987 105 -10010 minecraft:orange_concrete
fill -9988 105 -10009 -9990 105 -10013 orange_concrete
fill -9987 98 -10009 -9991 99 -10013 water
fill -9987 97 -10009 -9991 97 -10013 orange_concrete

fill -10010 105 -10013 -10012 105 -10009 purple_concrete
fill -10009 105 -10010 -10013 105 -10012 purple_concrete
fill -10009 99 -10009 -10013 98 -10013 water
fill -10009 97 -10009 -10013 97 -10013 purple_concrete

fill -10013 105 -9990 -10009 105 -9988 pink_concrete
fill -10010 105 -9987 -10012 105 -9991 pink_concrete
fill -10009 99 -9991 -10013 98 -9987 water
fill -10009 97 -9991 -10013 97 -9987 pink_concrete

fill -9991 105 -9990 -9987 105 -9988 cyan_concrete
fill -9988 105 -9987 -9990 105 -9991 cyan_concrete
fill -9991 99 -9991 -9987 98 -9987 water
fill -9991 97 -9991 -9987 97 -9987 cyan_concrete

# Clean up tool tags
tag @a remove dd_swappedPlayer
