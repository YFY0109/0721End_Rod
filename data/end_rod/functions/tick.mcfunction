# 上升沿检查

# 存储当前状态
    execute as @a store success score @s current_signal if entity @s[nbt={Inventory: [{Slot: -106b, tag: {"custom_id": "end_rod_0721"}}]}]

# 检查
    execute as @a if score @s current_signal matches 1 if score @s last_signal matches 0 run function end_rod:trigger

# 更新上一刻
    execute as @a run scoreboard players operation @s last_signal = @s current_signal

# 盔甲架跟随玩家
    execute as @a[tag=0721] at @s run tp @e[type=minecraft:armor_stand, tag=armor_stand_0721, sort=nearest, limit=1] ~0.1 ~-0.45 ~0.5

# slow_trigger_timer更新
    execute as @a[tag=0721] at @s if score @s slow_trigger_timer matches 10.. run function end_rod:trigger_slow
    execute as @a[tag=0721] if score @s slow_trigger_timer matches 10.. run scoreboard players set @s slow_trigger_timer 0
    execute as @a[tag=0721] run scoreboard players add @s slow_trigger_timer 1
