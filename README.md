<!-- TO RUN USE: `export GOKU_EDN_CONFIG_FILE=./karabiner.edn && goku` -->

# Goku Karabiner config for custom keyboard layout

This config uses [GokuRakuJoudo](https://github.com/yqrashawn/GokuRakuJoudo) to create a config JSON file for [Karabiner-Elements](https://github.com/pqrs-org/Karabiner-Elements) *"A powerful and stable keyboard customizer for macOS."* using a custom keyboard layout.

## The keyboard i'm using: (Keychron K2 v2)
>
> This is the keyboard i'm using, it's a 75% keyboard with a lot of keys, it's a great keyboard, but it's not programmable, so i'm using Goku to create a config for Karabiner-Elements to make it programmable.
>
![Screenshot 2024-02-27 at 15 57 44](https://github.com/sturmenta/goku-karabiner-my-config/assets/30802967/60f70448-9c91-41e0-95c4-cbf05fcf1c68)

![Screenshot 2024-02-27 at 15 55 14](https://github.com/sturmenta/goku-karabiner-my-config/assets/30802967/698dfe67-6d88-41d2-a6d3-c5043dce22ce)



---
## The mapping i'm using:

```edn
;;
;; ☐ = empty key
;; ◎ = hold
;;
;; ─────────────────────────────────────────────────────────────────────────────
;;
;;      mapped keymap (single touch)
;;
;;      q   w   e   r  t       y   u   i   o   p
;;      a   s   d   f  g       h   j   k   l   '
;;      z   x   c   v  b       n   m   ,   .   /
;;              shf ☐  cmd     opt ☐  ctr
;;
;; ─────────────────────────────────────────────────────────────────────────────
;;
;;      mapped keymap (hold)
;;
;;      ☐   ☐   ☐   ☐   ☐       ☐   ☐   ☐   ☐   ☐
;;      ☐   ☐   ☐   ☐   ☐       ☐   ☐   ☐   ☐   ☐
;;      ☐   ☐   ☐   ☐   ☐       ☐   ☐   ☐   ☐   ☐
;;              ☐   l2  ☐       ☐   l1  ☐
;;
;; ─────────────────────────────────────────────────────────────────────────────
;;
;;      mapped keymap (with hold l1)
;;
;;      1   2   3   4   5       6   7   8   9   0
;;      `   ☐   ☐   ☐   ☐       ←   ↓   ↑   →   ;
;;      ☐   ☐   ☐   ☐   ☐       -   =   [   ]   \
;;              shf spc cmd     opt ◎   ctr
;;
;; ─────────────────────────────────────────────────────────────────────────────
;;
;;      mapped keymap (with hold l1 + shift)
;;
;;      !   @   #   $   %       ^   &   *   (   )
;;      ~   ☐   ☐   ☐   ☐       ←   ↓   ↑   →   :
;;      ☐   ☐   ☐   ☐   ☐       _   +   {   }   |
;;              ◎   spc cmd     opt ◎   ctr
;;
;; ─────────────────────────────────────────────────────────────────────────────
;;
;;      mapped keymap (with hold l2)
;;
;;      esc tab ☐   ☐   ☐      rtn  ☐    ☐   ☐   bsp
;;      ☐   ☐   ☐   ☐   ☐      ←    ↓    ↑   →   ☐
;;      ☐   ☐   ☐   ☐   ☐      f1   f2   f3  f4  f5
;;              shf ◎   cmd    opt  spc  ctr
;;
;; ─────────────────────────────────────────────────────────────────────────────
;;
;;     functions keys:
;;
;;     f1: volume_decrement
;;     f2: rewind
;;     f3: play_or_pause
;;     f4: fastforward
;;     f5: volume_increment
;;
;; ─────────────────────────────────────────────────────────────────────────────
```

<!--

;; ─────────────────────────────────────────────────────────────────────────────
;;
;;      correct words for karabiner
;;
;;      - -> hyphen
;;      = -> equal_sign
;;      [ -> open_bracket
;;      ; -> semicolon
;;      ' -> quote
;;      , -> comma
;;      . -> period
;;      / -> slash
;;      esc -> escape
;;      spc -> spacebar
;;      tab -> tab
;;      rtn -> return_or_enter
;;      bsp -> delete_or_backspace
;;      shf -> left_shift
;;
;; ─────────────────────────────────────────────────────────────────────────────

-->

---

## Thanks to:

- GokuRakuJoudo creator to make a great tool to create Karabiner-Elements config files. ❤️
- Karabiner-Elements creator to make a great tool to customize keyboards. ❤️
