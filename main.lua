if syn then
local function mkfile(file, content, dir)
    if not isfile(file) then
        if dir ~= false then
            writefile(dir.."/"..file, content)
        else
            writefile(file, content)
        end
    end
end

local function mkfolder(name, dir)
    if not isfolder(name) then
        if dir ~= false then
            makefolder(dir.."/"..name)
        else
            makefolder(name)
        end
    end
end

mkfolder("FE Taunts Music", false)
mkfile("party.mp3", game:HttpGet("https://github.com/nebunet/fe-taunts-assets/blob/main/we_like_to_party.mp3?raw=true"), "FE Taunts Music")
mkfile("spin.mp3", game:HttpGet("https://github.com/nebunet/fe-taunts-assets/blob/main/spin.mp3?raw=true"), "FE Taunts Music")

else
    print("It seems like you aren't using synapse. Music will not be heard for this script...")
end
