# Also clears the chicken lol
kill @e[type=chicken]

fill -9983 105 -10002 -9987 97 -9998 air destroy
fill -9998 105 -9987 -10002 97 -9983 air destroy
fill -10013 105 -9998 -10017 97 -10002 air destroy
fill -10002 105 -10013 -9998 97 -10017 air destroy

fill -10009 105 -9991 -10013 97 -9987 air destroy
fill -10009 105 -10009 -10013 97 -10013 air destroy
fill -9991 105 -9991 -9987 97 -9987 air destroy
fill -9987 105 -10009 -9991 97 -10013 air destroy

title @a[team=!spec] times 10 60 10
title @a[team=!spec] title {"text": "\ue011","font": "font:font"}
function decisiondome:pull