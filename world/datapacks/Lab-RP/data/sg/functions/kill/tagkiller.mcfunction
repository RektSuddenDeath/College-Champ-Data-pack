
execute if score @s univ_attacker matches 0.. run tag @s add temp_haskiller

$execute as @a[team=!spec,scores={univ_pid=$(temp_attacker_id)}] run advancement grant @s only utils:killed/$(temp_pid)



tag @s remove temp_haskiller