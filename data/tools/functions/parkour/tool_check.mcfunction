
advancement revoke @s only tools:use_builder_tool

# Marks the player to have a small delay between clicks
tag @s add builder_tool_delay

# Checks the tool in the players hand and executes the associated function.
execute if predicate tools:tool_usage/block_selector run function tools:parkour/block_selector/check

execute if predicate tools:tool_usage/info_getter run function tools:parkour/info_getter/get

execute if predicate tools:tool_usage/linking_tool run function tools:parkour/linking_tool/link

execute if predicate tools:tool_usage/val_selector run function tools:parkour/val_selector/select

execute if predicate tools:tool_usage/val_setter run function tools:parkour/val_setter/action_check

# Removes the delay tag after 3 tick
schedule function tools:parkour/end_delay 3t replace