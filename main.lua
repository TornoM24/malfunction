--libraries

require "load" -- Loads the 'load file' which initializes everything

--variables



--functions
function love.load () --Loaded once at the beginning of the game. Used to initialize variables.

end

function love.update () --Updates the game. Is called automatically each frame/"tick"

end

function love.draw () --Draws the screen. Also called, but after love.update()
    love.graphics.print ("yeah i hate you", 100, 100) -- this prints ingame
end
