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
      # TODO: add keep pressed buttons on base layer -> comands like cmd, shift, etc
      ############################################################
      {
        'description' => '-- Nav layer --',
        'manipulators' => [
          ##########
          generate_layer_switch_button('nav', 'keypad_2', 'spacebar'),
          ##########
          #
          # left side
          #
          # row-2
          generate_keymap_for_layer('nav', 'a', 'left_command'),
          generate_keymap_for_layer('nav', 's', 'left_option'),
          generate_keymap_for_layer('nav', 'd', 'left_control'),
          generate_keymap_for_layer('nav', 'f', 'left_shift'),
          #
          # right side
          #
          # row-1
          # generate_keymap_for_layer('nav', 'y', 'again'), # TODO: again (ctrl + y)
          # generate_keymap_for_layer('nav', 'u', 'paste'), # TODO: paste (ctrl + v)
          # generate_keymap_for_layer('nav', 'i', 'copy'), # TODO: copy (ctrl + c)
          # generate_keymap_for_layer('nav', 'o', 'cut'), # TODO: cut (ctrl + x)
          # generate_keymap_for_layer('nav', 'p', 'undo'), # TODO: undo (ctrl + z)
          # row-2
          # generate_keymap_for_layer('nav', 'h', 'caps_lock'), # TODO: fix -> add new logic to the function, if #{from}.lenght === 1 and is a letter -> add another line with uppercase -- also bug when caps_lock active -> not working modifier key anymore
          generate_keymap_for_layer('nav', 'j', 'left_arrow'),
          generate_keymap_for_layer('nav', 'k', 'down_arrow'),
          generate_keymap_for_layer('nav', 'l', 'up_arrow'),
          generate_keymap_for_layer('nav', 'quote', 'right_arrow'),
          # row-3
          generate_keymap_for_layer('nav', 'n', 'insert')
          # generate_keymap_for_layer('nav', 'm', 'home'), # TODO: home (cmd + left_arrow)
          # generate_keymap_for_layer('nav', ',', 'page_down'), # TODO: page_down (cmd + down_arrow)
          # generate_keymap_for_layer('nav', '.', 'page_up'), # TODO: page_up (cmd + up_arrow)
          # generate_keymap_for_layer('nav', '/', 'end') # TODO: end (cmd + right_arrow)
        ].flatten
      },
      ############################################################
      {
        'description' => '-- Mouse layer --',
        'manipulators' => [
          ##########
          generate_layer_switch_button('mouse', 'keypad_3', 'tab')
          ##########
        ].flatten
      },
      ############################################################
      {
        'description' => '-- Media layer --',
        'manipulators' => [
          ##########
          generate_layer_switch_button('media', 'keypad_1', 'escape'),
          ##########
          #
          # right side
          #
          # row-2
          generate_keymap_for_layer('media', 'j', 'rewind'),
          generate_keymap_for_layer('media', 'k', 'volume_decrement'),
          generate_keymap_for_layer('media', 'l', 'volume_increment'),
          generate_keymap_for_layer('media', 'quote', 'fast_forward'), # TODO: fix -> not working
          # row-4
          generate_keymap_for_layer('media', 'keypad_5', 'play_or_pause'),
          generate_keymap_for_layer('media', 'keypad_6', 'mute')
        ].flatten
      },
      ############################################################
      {
        'description' => '-- Num layer --',
        'manipulators' => [
          ##########
          generate_layer_switch_button('num', 'keypad_5', 'delete_or_backspace')
          ##########
        ].flatten
      },
      ############################################################
      {
        'description' => '-- Sym layer --',
        'manipulators' => [
          ##########
          generate_layer_switch_button('sym', 'keypad_4', 'return_or_enter')
          ##########
        ].flatten
      },
      ############################################################
      {
        'description' => '-- Fun layer --',
        'manipulators' => [
          ##########
          generate_layer_switch_button('fun', 'keypad_6', 'delete_forward')
          ##########
        ].flatten
      }
      ############################################################
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
