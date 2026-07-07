local scoreboardOpen = false



---------------------------------
-- Open Scoreboard
---------------------------------

local function OpenScoreboard()

    if scoreboardOpen then
        return
    end


    scoreboardOpen = true



    TriggerServerEvent(
        "bc-scoreboard:server:getPlayers"
    )



    SendNUIMessage({

        action = "toggle",

        state = true,

        serverName = Config.ServerName,

        title = Config.Title,

        logo = Config.Logo

    })


end







---------------------------------
-- Close Scoreboard
---------------------------------

local function CloseScoreboard()


    if not scoreboardOpen then
        return
    end



    scoreboardOpen = false



    SendNUIMessage({

        action = "toggle",

        state = false

    })


end







---------------------------------
-- Keybind
---------------------------------

RegisterCommand(

    "+bcscoreboard",

    function()

        OpenScoreboard()

    end

)



RegisterCommand(

    "-bcscoreboard",

    function()

        CloseScoreboard()

    end

)





RegisterKeyMapping(

    "+bcscoreboard",

    "Open BC Scoreboard",

    "keyboard",

    Config.Keybind

)








---------------------------------
-- Receive Data
---------------------------------

RegisterNetEvent(

    "bc-scoreboard:client:update",

    function(data)



        SendNUIMessage({

            action = "update",

            players = data.players,

            count = data.count,

            jobs = data.jobs


        })


    end

)







---------------------------------
-- NUI Close
---------------------------------

RegisterNUICallback(

    "close",

    function()


        CloseScoreboard()


    end

)








---------------------------------
-- Refresh While Open
---------------------------------

CreateThread(function()


    while true do


        Wait(Config.RefreshTime)



        if scoreboardOpen then


            TriggerServerEvent(

                "bc-scoreboard:server:getPlayers"

            )


        end


    end


end)








---------------------------------
-- ESC Close
---------------------------------

CreateThread(function()


    while true do


        Wait(0)



        if scoreboardOpen then


            if IsControlJustReleased(
                0,
                322
            ) then


                CloseScoreboard()


            end


        end


    end


end)







---------------------------------
-- Resource Check
---------------------------------

CreateThread(function()


    if GetCurrentResourceName() ~= Config.Version.Resource then


        print("^1[BC-Scoreboard] Wrong resource name detected.^7")


    end


end)