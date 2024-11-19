

# Time Bar
bossbar set sot_tutorial_timer players @a

data modify storage ui:timebar namespace set value "sot_tutorial_timer"
function sot:tutorial/timebar_macro with storage ui:timebar
execute if score tutorialActive SotGame matches 1 run schedule function sot:tutorial/loop 1t