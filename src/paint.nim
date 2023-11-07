import std/[colors, strformat]

proc `@`*(str: string, color: string): string =
  ## Applies color `color` to `str`
  let clr = color.parseColor().extractRGB()
  &"\x1b[38;2;{clr.r};{clr.g};{clr.b}m{str}\x1b[m"
