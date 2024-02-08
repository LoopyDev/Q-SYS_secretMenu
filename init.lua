-- Module object
secretMenu = {}

-- Debug mode prevents the controls from becoming invisible
-- and shows the order in which they need to be pressed
debug = false;
-- Call this function in the UCI Script to make the controls visible
function secretMenu.enableDebug()
debug = true;
secretMenu.createEventHandlers()
end

-- Array holding the references to the
controlsArray = {}

local callBackFunction = nil;
function secretMenu.setCallback(func)
    callBackFunction = func;
end


-- The index variable increments with every added control
-- and is used to display the order in which buttons need 
-- to be pressed (displayed only when debug == true), and 
-- also for logic in the .createEventHandlers() function.
index = 1;
function secretMenu.addToggle(control) -- Call this function to....
    control.Legend = tostring(index)
    index = index + 1;
    local newRow = {control, index}
    table.insert(controlsArray, newRow)
    secretMenu.createEventHandlers();
end

function secretMenu.createEventHandlers()
    -- Traverse entire controlsArray
    for i = 1, #controlsArray do
        if debug == false then controlsArray[i][1].CssClass = 'invisible' end
        if debug == true then controlsArray[i][1].CssClass = '' end
        if i ~= 1 then controlsArray[i][1].IsInvisible = true end

        
        controlsArray[i][1].EventHandler = function() 
            print("control pressed")
            if controlsArray[i][2] == 1 then
                timeout:Start(3)
                print("first control pressed")
            end

            if controlsArray[i+1] ~= nil then controlsArray[i+1][1].IsInvisible = false
            elseif controlsArray[i+1] == nil then callBackFunction() end
        end


    end
end


timeout = Timer.New()

timeout.EventHandler = function()
    print("secret menu timeout")
    for i = 2, #controlsArray do
        controlsArray[i][1].IsInvisible = true;
    end
    timeout:Stop();
end


return secretMenu