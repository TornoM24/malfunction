
fullscreen = false
scale = 4

camera = require "lib.hump.camera" -- loads the camera library for, well, camera control :/
gamestate = require "lib.hump.gamestate" -- loads the gamestate library which allows, well, easier game states
bump = require "lib.bump.bump" -- Loads the 2d collision library "Bump"
sti = require 'lib.sti.sti' -- Loads the [Tiled] to ingame variable implementation library
anim8 = require 'lib.anim8.anim8' -- loads the anim8 animated sprite library

unitEntity ={
                x = 0,
                y = 0,
                xVel = 0,
                yVel = 0,
                name,
                idNum = 000
            }

function unitEntity:new (o, name, spawnX, spawnY, sizeX, sizeY) -- allows creation of "unit entity type"

    --unit entities are movable objects like player, enemies, etc.
    o = o or {}
    local self = setmetatable(o, self)
    self.__index = self

    self.name = name
    self.x = spawnX
    self.y = spawnY
    self.sizeX = sizeX
    self.sizeY = sizeY

    return o
end
