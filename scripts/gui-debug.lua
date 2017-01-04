core.gui.append
{
    type = "button",
    name = "dytech-debug-button",
    open = "dytech-debug-flow",
    parent = "dytech-menu",

    caption = { "dytech-gui.debug-button" },
}

core.gui.create 
{
    type = "flow",
    name = "dytech-debug-flow",
    direction = "horizontal",

    childs = 
    {
        {
            type = "frame",
            name = "dytech-debug-menu",
            parent = "dytech-menu",
            direction = "vertical",
            
            caption = { "dytech-gui.debug-title" },
            childs = 
            { 
                {
                    type = "button",
                    name = "debug-research-all-button",
                    caption = { "dytech-gui.debug-research-all-button" }
                },
                {
                    type = "button",
                    name = "debug-toggle-cheats-button",
                    caption = { "dytech-gui.debug-toggle-cheats-button" }
                },
                {
                    type = "button",
                    name = "debug-enable-all-button",
                    caption = { "dytech-gui.debug-enable-all-button" }
                },
            }
        },
    }
}

-- 
-- Gui handlers
function core.gui.clicked.debug_research_all_button(event)
    local player_force = game.players[event.player_index].force
    player_force.research_all_technologies()
end

function core.gui.clicked.debug_toggle_cheats_button(event)
    game.players[event.player_index].cheat_mode = not game.players[event.player_index].cheat_mode
end

function core.gui.clicked.debug_enable_all_button(event)
    -- enable all technologies
    local player_force = game.players[event.player_index].force
    player_force.research_all_technologies()

    -- Enable cheats
    game.players[event.player_index].cheat_mode = true
end
