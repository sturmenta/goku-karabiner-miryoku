<!-- TO RUN USE: `export GOKU_EDN_CONFIG_FILE=./karabiner.edn && goku` -->

# Goku Karabiner config for custom keyboard layout

This config uses [GokuRakuJoudo](https://github.com/yqrashawn/GokuRakuJoudo) to create a config JSON file for [Karabiner-Elements](https://github.com/pqrs-org/Karabiner-Elements) *"A powerful and stable keyboard customizer for macOS."* using a custom keyboard layout.

## The keyboard i'm using: (Keychron K2 v2)
>
> This is the keyboard i'm using, it's a 75% keyboard with a lot of keys, it's a great keyboard, but it's not programmable, so i'm using Goku to create a config for Karabiner-Elements to make it programmable.
>
<img width="1148" alt="2" src="https://github.com/sturmenta/karabiner-config/assets/30802967/2f27b325-14e9-4055-8a47-f39f2b1d8166">
<img width="1059" alt="3" src="https://github.com/sturmenta/karabiner-config/assets/30802967/4a0a328a-ac38-4097-b3c7-1d432867809e">

---
## The mapping i'm using:
```edn
;;
;; ☐ = empty key
;;
;; ─────────────────────────────────────────────────────────────────────────────
;;
;;      from -- original keymap (keychron-k2v2 - config used by me)
;;
;;      1   2   3   4   5       8   9   0   -   =
;;      q   w   e   r   t       u   i   o   p   [
;;      a   s   d   f   g       j   k   l   ;   '
;;              x   c   v       m   ,   .
;;
;; ─────────────────────────────────────────────────────────────────────────────
;;
;;      to -- mapped keymap (single touch)
;;
;;      q   w   e   r   t       y   u   i   o   p
;;      a   s   d   f   g       h   j   k   l   '
;;      z   x   c   v   b       n   m   ,   .   /
;;              esc opt tab     rtn spc bsp
;;
;; ─────────────────────────────────────────────────────────────────────────────
;;
;;      to -- mapped keymap (hold)
;;
;;      ☐   ☐   ☐   ☐   ☐       ☐   ☐   ☐   ☐   ☐
;;      ☐   ☐   ☐   ☐   ☐       ☐   ☐   ☐   ☐   ☐
;;      shf ☐   ☐   ☐   ☐       ☐   ☐   ☐   ☐   shf
;;              ctr opt cmd     ☐   l1  l2
;;
;; ─────────────────────────────────────────────────────────────────────────────
;;
;;      to -- mapped keymap (with hold l1)
;;
;;      1   2   3   4   5       6   7   8   9   0
;;      `   ☐   ☐   ☐   ☐       ←   ↓   ↑   →   ;
;;      shf ☐   ☐   ☐   ☐       -   =   [   ]   \
;;              ctr opt cmd     ☐   ☐   ☐
;;
;; ─────────────────────────────────────────────────────────────────────────────
;;
;;      to -- mapped keymap (with hold l1 + shift)
;;
;;      !   @   #   $   %       ^   &   *   (   )
;;      ~   ☐   ☐   ☐   ☐       ←   ↓   ↑   →   :
;;      ☐   ☐   ☐   ☐   ☐       _   +   {   }   |
;;              ☐   ☐   ☐       ☐   ☐   ☐
;;
;; ─────────────────────────────────────────────────────────────────────────────
;;
;;      to -- mapped keymap (with hold l2)
;;
;;      f1  f2  f3  f4  f5      f6  f7  f8  f9  f10
;;      f11 f12 ☐   ☐   ☐       ☐   ☐   ☐   ☐   ☐
;;      ☐   ☐   ☐   ☐   ☐       ☐   ☐   ☐   ☐   ☐
;;              ☐   ☐   ☐       ☐   ☐   ☐
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
;;      shf -> right_shift
;;
;; ─────────────────────────────────────────────────────────────────────────────

-->

---

## Thanks to:

- GokuRakuJoudo creator to make a great tool to create Karabiner-Elements config files. ❤️
- Karabiner-Elements creator to make a great tool to customize keyboards. ❤️