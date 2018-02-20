pico-8 cartridge // http://www.pico-8.com
version 16
__lua__

--
-- utils.
--

colors = {
  black = 0,
  dark_blue = 1,
  dark_purple = 2,
  dark_green = 3,
  brown = 4,
  dark_gray = 5,
  light_gray = 6,
  white = 7,
  red = 8,
  orange = 9,
  yellow = 10,
  green = 11,
  blue = 12,
  indigo = 13,
  pink = 14,
  peach = 15,
}

buttons = {
  left = 0,
  right = 1,
  up = 2,
  down = 3,
  o = 4,
  z = 4,
  x = 5,
}

config = {
}

--
-- actors.
--

player = {}

function player.new(x, y)
  local self = {}

  function self.update()
  end

  function self.draw()
    rectfill(x, y, x+5, y+5, colors.dark_blue)
  end

  return self
end

--
-- states.
--

actors = {}

function _init()
  -- Initial state.
  _update60 = update_game
  _draw = draw_game

  -- Initialize actors.
  add(actors, player.new(64, 64))
end

function update_game()
  for a in all(actors) do a.update() end
end

function draw_game()
  cls(colors.white)
  for a in all(actors) do a.draw() end
  print(stat(0))
end

function update_game_over()
end

function draw_game_over()
end
