tag @s add 0721
playsound minecraft:music_disc.13 record @s ~ ~ ~ 10 1
effect give @s minecraft:slowness 150 2 false
effect give @s minecraft:weakness 150 2 false
effect give @s minecraft:regeneration 160 1 false
playsound minecraft:block.beehive.drip ambient @s ~ ~ ~ 100 1
summon minecraft:armor_stand ~0.1 ~-0.45 ~0.5 {Tags: ["armor_stand_0721"], Pose: {Body: [180f, 180f, 180f], LeftArm: [90f, -45f, 0f]}, HandItems: [{}, {id: "minecraft:end_rod", Count: 1b}], NoGravity: true, ShowArms: true, Marker: true, Small: false, Invisible: true}
