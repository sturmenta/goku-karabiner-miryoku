#!/usr/bin/env ruby

# You can generate json by executing the following command on Terminal.
#
# $ ruby ./generate_template.rb
#

# Parameters

def parameters
  {
    to_if_held_down_threshold_milliseconds: 0
  }
end

############################################################

require 'json'

def main
  data = {
    'rules' => [
      {
        'description' => '-- Nav layer --',
        'manipulators' => [
          generate_layer_switch_button('nav', 'keypad_2', 'spacebar'),
          generate_keymap_for_layer('nav', 'j', 'left_arrow'),
          generate_keymap_for_layer('nav', 'k', 'down_arrow'),
          generate_keymap_for_layer('nav', 'l', 'up_arrow'),
          generate_keymap_for_layer('nav', 'quote', 'right_arrow')
        ].flatten
      }
    ]
  }

  puts JSON.pretty_generate(data)
end

############################################################
############################################################

def generate_layer_switch_button(layer_name, dispatch_button_key_code, alone_key_code_action)
  {
    'description' => "if (#{layer_name}-button keep pressed) -> #{layer_name}-layer = true -- else if (#{layer_name}-button pressed alone) -> #{alone_key_code_action}",
    'type' => 'basic',
    'from' => {
      'key_code' => dispatch_button_key_code
    },
    'parameters' => {
      "basic.to_if_held_down_threshold_milliseconds": parameters[:to_if_held_down_threshold_milliseconds]
    },
    'to_if_held_down' => [
      {
        'set_variable' => {
          'name' => "current-layer-is-#{layer_name}",
          'value' => 1
        }
      }
    ],
    'to_after_key_up' => [
      {
        'set_variable' => {
          'name' => "current-layer-is-#{layer_name}",
          'value' => 0
        }
      }
    ],
    'to_if_alone' => [
      {
        'key_code' => alone_key_code_action
      }
    ]
  }
end

############################################################
############################################################

def generate_keymap_for_layer(layer_name, from, to)
  {
    "description": "if (#{layer_name}-layer & #{from}) -> #{to}",
    "type": 'basic',
    "conditions": [
      {
        "name": "current-layer-is-#{layer_name}",
        "type": 'variable_if',
        "value": 1
      }
    ],
    "from": { "key_code": from },
    "to": { "key_code": to }
  }
end

main
