local data = {}

local t = tick()

function data:load(config)
    local url = config.track
    local args = string.split(url, "/")
    local id = args[5]
    local request = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)

    local function getData(id)
        local host = "https://api.spotifydown.com/download/"..id
        local d = request({
            Url = host,
            Method = "GET",
            Headers = {
                ["Origin"] = "https://spotifydown.com",
                ["Referer"] = "https://spotifydown.com/"
            }
        })
        return game:GetService("HttpService"):JSONDecode(d.Body)
    end

    if args[4] == "track" then
        local data = getData(id)
        if data.success == true then
            print("Successfully got track, Getting data.")
            local tracks = {}
            tracks[data.metadata.title] = {
                ["id"] = data.metadata.id,
                ["title"] = data.metadata.title,
                ["artists"] = data.metadata.artists,
                ["cover"] = data.metadata.cover,
                ["track"] = data.link
            }
            print("Finished getting data, downloading... (wait a sec)")
            if not isfolder(t.."_Spotify") then
                makefolder(t.."_Spotify")
            end
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SkireScripts/Ouxie/main/Projects/Spotify%20Player/Assets/Spotify%20UI.lua"))():load({
                Scale = 1,
                Version = "1.0.1",
                Tick = t,
                file = t.."_Spotify",
                Tracks = tracks
            })
            print("Getting", tracks[data.metadata.title].title)
        else
            warn("Failed to get track, check the id")
        end
    else
        warn("Invalid Spotify track link provided")
    end
end

return data
