
advancement revoke @s only minigames:parkour_block_placing/place_special_block

# Checks the block you're holding and runs its function
execute if predicate minigames:special_block_placing/fan_block run function minigames:parkour/special_blocks/fan_block/revoke

execute if predicate minigames:special_block_placing/snake_block run function minigames:parkour/special_blocks/snake_block/revoke

execute if predicate minigames:special_block_placing/toggle_block run function minigames:parkour/special_blocks/toggle_block/revoke

execute if predicate minigames:special_block_placing/trigger_block run function minigames:parkour/special_blocks/trigger_block/revoke

execute if predicate minigames:special_block_placing/teleport_block run function minigames:parkour/special_blocks/teleport_block/revoke

execute if predicate minigames:special_block_placing/death_block run function minigames:parkour/special_blocks/death_block/revoke