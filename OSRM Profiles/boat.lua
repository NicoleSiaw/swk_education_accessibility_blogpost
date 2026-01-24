api_version = 4

Set = require('lib/set')
Sequence = require('lib/sequence')
Handlers = require("lib/way_handlers")
Relations = require("lib/relations")
Obstacles = require("lib/obstacles")
find_access_tag = require("lib/access").find_access_tag
limit = require("lib/maxspeed").limit
Utils = require("lib/utils")
Measure = require("lib/measure")

function setup()
  return {
    properties = {
      weight_name = 'duration',
      max_speed_for_map_matching = 25/3.6,
    },

    default_mode   = mode.driving,
    default_speed  = 25,

    speeds = {
      waterway = {
        river = 25,
        canal = 10
      }
    }
  }
end

function process_node(profile, node, result, relations)
end

function process_way(profile, way, result, relations)
  local data = {
    waterway = way:get_value_by_key('waterway'),
  }

  -- FIX 1: correct check
  if not data.waterway then
    return
  end

  -- Only accept river or canal
  if not (data.waterway == 'river' or data.waterway == 'canal') then
    return
  end

  -- Canal
  if data.waterway == 'canal' then
    result.forward_speed = 10
    result.backward_speed = 10
    result.forward_mode = mode.driving
    result.backward_mode = mode.driving  -- FIX 2
    result.name = way:get_value_by_key('name')
    return
  end

  -- River
  if data.waterway == 'river' then
    result.forward_speed = 25
    result.backward_speed = 25
    result.forward_mode = mode.driving
    result.backward_mode = mode.driving  -- FIX 2
    result.name = way:get_value_by_key('name')
    return
  end
end

function process_turn(profile, turn)
end

return {
  setup = setup,
  process_way = process_way,
  process_node = process_node,
  process_turn = process_turn
}

