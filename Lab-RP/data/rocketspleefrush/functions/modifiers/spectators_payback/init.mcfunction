
scoreboard objectives add rsr_spec_payback_step dummy
scoreboard objectives add rsr_spec_payback_cd dummy
scoreboard players set @a rsr_spec_payback_cd 480
scoreboard players set @a rsr_spec_payback_step 0

tellraw @a[tag=admin] ["§b[§r坕§b] ",{"text": "Spectators Payback","color": "#E3E3E3"},"§b: Eliminated players will fire a rocket once in a while."]
function rocketspleefrush:modifiers/spectators_payback/loop