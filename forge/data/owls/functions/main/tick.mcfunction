#ticks
execute as @a at @s run function owls:main/ticks/everyone
execute as @e[type=allay,tag=owl] at @s run function owls:main/ticks/owl
execute as @e[type=allay,tag=owl,tag=active] at @s run function owls:main/ticks/owl_active
execute as @e[type=allay,tag=owl,tag=return] at @s run function owls:main/ticks/owl_return

#owlStandDeathCheck
execute as @e[type=armor_stand,tag=owlstand,tag=!select] at @s unless entity @e[type=allay,tag=owl,distance=0..2] run kill @s

#owlSpawnEvent
execute as @e[type=wolf,tag=!checked] at @s unless data entity @s Owner run function owls:events/spawn