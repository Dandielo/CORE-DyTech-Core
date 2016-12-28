require "scripts/functions"


-- for name, table in pairs(global.LoggerCount) do
--  adder1.add({type="label", name="", caption={name, table}})
-- end


core.gui.append
{
    type = "button",
    name = "dytech-core-button",
    open = "dytech-core-flow",
    parent = "dytech-menu",

    caption = { "dytech-gui.core-button" },
}

core.gui.create 
{
    type = "flow",
    name = "dytech-core-flow",
    direction = "horizontal",

    -- A frame can define child elements
    childs = {
        {
            type = "frame",
            name = "dytech-core-menu",
            parent = "dytech-menu",
            direction = "vertical",
            
            caption = { "dytech-gui.core-title" },
            childs = { 
                -- Child elements
            }
        },
        {
            type = "frame",
            name = "dytech-core-stats",
            direction = "vertical",
            
            caption = { "dytech-gui.core-stats" },
            childs = { 
                {
                    type = "label",
                    name = "dytech-core-stats-total-pollution",
                },
                {
                    type = "label",
                    name = "dytech-core-stats-chunk-pollution",
                },
            }
        },
    }
}


-- 
-- Sets the caption on the total pollution label
function core.gui.loaded.dytech_core_stats_total_pollution(event)
    local pollution = 0

    for chunk in game.surfaces.nauvis.get_chunks() do
        local tile_x = chunk.x * 32 + 16
        local tile_y = chunk.y * 32 + 16

        pollution = pollution + game.surfaces.nauvis.get_pollution { tile_x, tile_y }
    end
    
    -- Set the caption
    event.element.caption = { "dytech-gui.core-stats-total-pollution", pollution }
end

-- 
-- Sets the caption on the chunk pollution label
function core.gui.loaded.dytech_core_stats_chunk_pollution(event)
    local pollution = 0
    local chunk_num = 0

    for chunk in game.surfaces.nauvis.get_chunks() do
        local tile_x = chunk.x * 32 + 16
        local tile_y = chunk.y * 32 + 16

        chunk_num = chunk_num + 1
        pollution = pollution + game.surfaces.nauvis.get_pollution { tile_x, tile_y }
    end
    
    -- Set the caption
    event.element.caption = { "dytech-gui.core-stats-chunk-pollution", pollution / chunk_num }
end
