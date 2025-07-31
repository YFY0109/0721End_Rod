tellraw @a {"text": "可插入式末地烛数据包已成功加载", "color": "white"}
tellraw @a {"text": "关于此数据包有任何问题请反馈到Github issue", "color": "yellow", "hoverEvent": {"action": "show_text", "contents": {"text": "点我跳转"}}, "clickEvent": {"action": "open_url", "value": "https://github.com/YFY0109/0721End_Rod/issues"}}
tellraw @a {"text": "点这里获取可插入式末地烛", "bold": true, "color": "gold", "hoverEvent": {"action": "show_item", "contents": {"id": "minecraft:end_rod", "tag": "{custom_id: \"end_rod_0721\", Enchantments:[{id: \"minecraft:efficiency\", lvl: 5}], display:{Lore: ['{\"text\": \"由末地水晶精制而成\", \"color\": \"white\", \"italic\": false}'], Name:'{\"text\": \"可插入式末地烛\", \"color\": \"yellow\", \"italic\": false}'}}"}}, "clickEvent": {"action": "run_command", "value": "/function end_rod:get"}}

# 初始化gc计分板
    scoreboard objectives add er_gc dummy

# 初始化信号计分板（用于拿起末地烛时触发）
    scoreboard objectives add current_signal dummy
    scoreboard objectives add last_signal dummy

# 初始化计时计分板
    scoreboard objectives add slow_trigger_timer dummy
