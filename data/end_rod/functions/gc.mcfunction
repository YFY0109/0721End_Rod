execute as @a unless entity @a[tag=0721] run scoreboard players set @s er_gc 0
execute as @a[tag=0721] run scoreboard players add @s er_gc 1
execute as @a[tag=0721] at @s if score @s er_gc matches 1200..1400 run particle minecraft:dripping_water ~ ~ ~ 0.6 0.6 0.6 10 5
execute as @a[tag=0721] at @s if score @s er_gc matches 1200..1400 run particle minecraft:heart ~ ~2 ~ 0.4 0.4 0.4 1 4
execute as @a[tag=0721] at @s if score @s er_gc matches 1200..1400 run particle minecraft:splash ~ ~ ~ 0.7 0.7 0.7 10 10
execute as @a[tag=0721] at @s if score @s er_gc matches 1240..1300 run effect give @s minecraft:blindness 2 0 true
execute as @a[tag=0721] at @s if score @s er_gc matches 1320 run setblock ~ ~ ~ minecraft:water[level=8]

execute as @a[tag=0721] unless entity @a[nbt={Inventory: [{Slot: -106b, tag: {custom_id: "end_rod_0721"}}]}] run stopsound @s record music_disc.13
execute as @a[tag=0721] unless entity @a[nbt={Inventory: [{Slot: -106b, tag: {custom_id: "end_rod_0721"}}]}] run kill @e[type=minecraft:armor_stand, tag=armor_stand_0721, sort=nearest, limit=1]
execute as @a[tag=0721] unless entity @a[nbt={Inventory: [{Slot: -106b, tag: {custom_id: "end_rod_0721"}}]}] run tag @s remove 0721
