print([[
Controls:

Z - Spin
R - Rotate
E - Sit
F - Facepalm
T - Ascend
P - Insane
]])

loadstring(game:HttpGet("https://bit.ly/3gz6dE7", true))() --// music loader
loadstring(game:HttpGet("https://pastebin.com/raw/W0TZ2VkR", true))() --// myworld reanimate

task.wait(4)

local reanim = game.Players.LocalPlayer.Character

task.wait(0.1)

local sine = 1
local speed = 1
local angle = 0
local upcount = 0

local uis = game:GetService("UserInputService")
local srv = game:GetService("RunService")

local renderstepped = srv.RenderStepped

local m = math
local cf = CFrame.new
local v3 = Vector3.new
local angles = CFrame.Angles
local rad = m.rad
local sin = m.sin
local cos = m.cos
local abs = m.abs

local plr = game:GetService("Players").LocalPlayer
local humanoid = reanim:FindFirstChild("Humanoid")

local la = reanim["Left Arm"]
local ra = reanim["Right Arm"]
local ll = reanim["Left Leg"]
local rl = reanim["Right Leg"]
local head = reanim["Head"]
local root = reanim["HumanoidRootPart"]

local rs = reanim.Torso["Right Shoulder"]
local ls = reanim.Torso["Left Shoulder"]
local rh = reanim.Torso["Right Hip"]
local lh = reanim.Torso["Left Hip"]
local n = reanim.Torso["Neck"]
local r = reanim.HumanoidRootPart["RootJoint"]

local rsC0 = reanim.Torso["Right Shoulder"].C0
local lsC0 = reanim.Torso["Left Shoulder"].C0
local rhC0 = reanim.Torso["Right Hip"].C0
local lhC0 = reanim.Torso["Left Hip"].C0
local nC0 = reanim.Torso["Neck"].C0
local rC0 = reanim.HumanoidRootPart["RootJoint"].C0

local mode = ""
local lastmode = ""

local music = false

local diderr = false

function makeSound(id)
	local sound = Instance.new("Sound", game:GetService("Workspace"))
	sound.Name = "TauntSound"
	sound.SoundId = "rbxassetid://"..id

	sound:Play()

	game:GetService("Debris"):AddItem(sound, 1.5)
end

function explosion()
	if exploded == false then
		makeSound(12221984)

		local explosion = Instance.new("Explosion", reanim.Torso)
		explosion.BlastRadius = 0
		explosion.BlastPressure = 0
		explosion.Position = reanim.Torso.Position
	end
end

function errsound()
	if diderr == false then
		makeSound(130840811)
	end
end

function catDance()

	cd_done = false

	if not stopping_cd then
		humanoid.JumpPower = 25
		humanoid.WalkSpeed = 8
		r.C0 = rC0 * cf(0, 0, 0.006)
		n.C0 = nC0
		rs.C0 = rsC0 * cf(0, -0.141, 0.652) * angles(rad(-129.603), 0, 0)
		ls.C0 = lsC0 * cf(0, -0.248, 0.657) * angles(rad(-129.374), 0, 0)
		lh.C0 = lhC0 * cf(-0.089, 0.124, 0.08) * angles(rad(-6.933), 0, 0)
		rh.C0 = rhC0 * cf(0, 0.035, 0.067) * angles(rad(-7.907), 0, 0)

		task.wait(0.2)
	end

	if not stopping_cd then
		humanoid.JumpPower = 25
		humanoid.WalkSpeed = 8
		r.C0 = rC0 * cf(0.035, 0, 0.468) * angles(0, rad(4.297), 0)
		n.C0 = nC0 * angles(rad(-1.547), rad(6.016), rad(-17.189))
		rs.C0 = rsC0
			* cf(0.156, -0.313, 0.794)
			* angles(rad(-122.212), rad(-11.86), rad(1.547))
		ls.C0 = lsC0
			* cf(-0.567, -0.254, 0.361)
			* angles(rad(-104.679), rad(4.641), rad(-99.867))
		lh.C0 = lhC0 * cf(-0.089, 0.045, -0.022) * angles(rad(-11.746), 0, 0)
		rh.C0 = rhC0 * cf(0.208, 0.404, 0.119) * angles(rad(-7.506), 0, 0)

		task.wait(0.2)
	end

	if not stopping_cd then
		humanoid.JumpPower = 25
		humanoid.WalkSpeed = 8
		r.C0 = rC0 * cf(0, 0, 0.006)
		n.C0 = nC0
		rs.C0 = rsC0 * cf(0, -0.141, 0.652) * angles(rad(-129.603), 0, 0)
		ls.C0 = lsC0 * cf(0, -0.248, 0.657) * angles(rad(-129.374), 0, 0)
		lh.C0 = lhC0 * cf(-0.089, 0.124, 0.08) * angles(rad(-6.933), 0, 0)
		rh.C0 = rhC0 * cf(0, 0.035, 0.067) * angles(rad(-7.907), 0, 0)

		task.wait(0.2)
	end

	if not stopping_cd then
		humanoid.JumpPower = 25
		humanoid.WalkSpeed = 8
		r.C0 = rC0 * cf(-0.057, 0, 0.608) * angles(0, rad(-5.443), 0)
		n.C0 = nC0 * angles(rad(-3.61), rad(-5.5), rad(11.173))
		rs.C0 = rsC0
			* cf(0.019, -0.309, 0.6)
			* angles(rad(-100.382), rad(-3.667), rad(83.48))
		ls.C0 = lsC0 * cf(0, -0.248, 0.657) * angles(rad(-129.374), 0, 0)
		lh.C0 = lhC0 * cf(-0.222, 0.419, 0.044) * angles(rad(-11.918), 0, 0)
		rh.C0 = rhC0 * cf(0, 0.156, -0.021) * angles(rad(-14.954), 0, 0)

		task.wait(0.2)
	end

	cd_done = true
end

function makeMusic(file, volume)
	if music == false then
		music = true
		if syn and music == true then
			local audio = Instance.new("Sound", game:GetService("Workspace"))
			audio.Name = "TauntMusic"
			audio.SoundId = getsynasset("FE Taunts Music/" .. file)
			audio.Looped = true
			audio.Volume = 0

			repeat
				task.wait()
			until audio.Loaded

			audio:Play()

			task.spawn(function()
				for i = 0, volume, 0.1 do
					audio.Volume = i
					task.wait(0.05)
				end
			end)
		end
	end
end

function deleteMusic()
	if music == true then
		for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v:IsA("Sound") and v.Name == "TauntMusic" then
				task.spawn(function()
					for i = v.Volume, 0, -0.1 do
						v.Volume = i
						task.wait(0.05)
					end
					v:Destroy()
				end)
			end
		end

		music = false
	end
end

task.spawn(function()
	while task.wait() do
		for i = 0, 360 do
			angle = i
			task.wait()
		end
	end
end)

task.spawn(function()
	while task.wait() do
		if mode ~= lastmode then
			deleteMusic()
		end
		lastmode = mode
	end
end)

function changeMode(m)
	if mode ~= m then
		mode = m
	else
		mode = ""
	end
end

uis.InputBegan:Connect(function(key)
	if uis:GetFocusedTextBox() then
		return
	end
	key = key.KeyCode
	local enk = Enum.KeyCode
	if key == enk.R then
		changeMode("rotating")
	elseif key == enk.F then
		changeMode("facepalm")
	elseif key == enk.P then
		changeMode("insane")
	elseif key == enk.Z then
		changeMode("spinning")
	elseif key == enk.X then
		changeMode("death")
	elseif key == enk.T then
		changeMode("ascend")
	elseif key == enk.E then
		changeMode("sit")
	end
end)

anims = srv.Heartbeat:Connect(function(deltatime)
	sine = sine + deltatime
	deltatime = deltatime * 10

	local vel = root.Velocity

	if mode ~= "death" then
		exploded = false
	end

	if mode ~= "facepalm" then
		diderr = false
	end

	if mode ~= "ascend" then
		upcount = 0
	end

	if mode == "" then
		humanoid.WalkSpeed = 20
		humanoid.JumpPower = 50
		if vel.Magnitude > 2 then
			if abs(vel.X) + abs(vel.Z) > abs(vel.Y) then --// walk
				r.C0 = r.C0:Lerp(rC0 * cf(0, 0, 0.1 + 0.1 * sin(sine * 4)) * angles(rad(5), rad(0 + 5 * sin(sine * 4)), 0), deltatime)
				n.C0 = n.C0:Lerp(nC0, deltatime)
				rs.C0 = rs.C0:Lerp(rsC0 * angles(0, 0, rad(45 * sin(sine * 4))), deltatime)
				ls.C0 = ls.C0:Lerp(lsC0 * angles(0, 0, rad(45 * sin(sine * 4))), deltatime)
				lh.C0 = lh.C0:Lerp(
					lhC0 * cf(0, -0.1 - 0.1 * sin(sine * 4), 0) * angles(0, 0, rad(0 + -45 * sin(sine * 4))),
					deltatime
				)
				rh.C0 = rh.C0:Lerp(
					rhC0 * cf(0, -0.1 - 0.1 * sin(sine * 4), 0) * angles(0, 0, rad(0 + -45 * sin(sine * 4))),
					deltatime
				)
			elseif vel.Y > 0 then --// jump
				r.C0 = r.C0:Lerp(rC0 * angles(rad(-2.979), 0, 0), deltatime)
				n.C0 = n.C0:Lerp(nC0 * angles(rad(-9.798), 0, 0), deltatime)
				rs.C0 = rs.C0:Lerp(rsC0 * cf(0, 0.186, 0.835) * angles(rad(-145.245), 0, 0), deltatime)
				ls.C0 = ls.C0:Lerp(lsC0 * cf(0, 0.146, 0.89) * angles(rad(-151.089), 0, 0), deltatime)
				lh.C0 = lh.C0:Lerp(lhC0 * cf(0, 0.082, 0.047) * angles(rad(-4.011), 0, 0), deltatime)
				rh.C0 = rh.C0:Lerp(rhC0 * cf(0.031, 0.124, 0) * angles(rad(-4.068), 0, 0), deltatime)
			else --// fall
				r.C0 = r.C0:Lerp(rC0, deltatime)
				n.C0 = n.C0:Lerp(nC0 * angles(rad(15.699), 0, 0), deltatime)
				rs.C0 = rs.C0:Lerp(rsC0 * cf(0, -0.104, 0) * angles(rad(-2), 0, 0), deltatime)
				ls.C0 = ls.C0:Lerp(lsC0 * cf(-0.008, -0.158, 0) * angles(rad(-2), 0, 0), deltatime)
				lh.C0 = lh.C0:Lerp(lhC0 * angles(0, 0, rad(7.047)), deltatime)
				rh.C0 = rh.C0:Lerp(rhC0 * cf(0.34, 0.45, 0), deltatime)
			end
		else --// idle
			r.C0 = r.C0:Lerp(rC0 * cf(0, 0, 0.1 + 0.1 * sin(sine * 2)), deltatime)
			n.C0 = n.C0:Lerp(nC0 * angles(0, rad(4 + 4 * sin(sine * 1)), rad(0 + 20 * sin(sine * 0.3))), deltatime)
			rs.C0 = rs.C0:Lerp(rsC0 * angles(rad(-7 + 5 * sin(sine * 2)), 0, 0), deltatime)
			ls.C0 = ls.C0:Lerp(lsC0 * angles(rad(-7 + 5 * sin(sine * 2)), 0, 0), deltatime)
			lh.C0 = lh.C0:Lerp(lhC0 * cf(0, -0.1 - 0.1 * sin(sine * 2), 0), deltatime)
			rh.C0 = rh.C0:Lerp(rhC0 * cf(0, -0.1 - 0.1 * sin(sine * 2), 0), deltatime)
		end
	elseif mode == "rotating" then
		makeMusic("spin.mp3", 2)
		humanoid.JumpPower = 0
		humanoid.WalkSpeed = 4
		r.C0 = r.C0:Lerp(rC0 * cf(0, 0, 3) * angles(rad(angle), rad(angle), rad(angle * 2)), deltatime)
		n.C0 = n.C0:Lerp(nC0, deltatime)
		rs.C0 = rs.C0:Lerp(rsC0, deltatime)
		ls.C0 = ls.C0:Lerp(lsC0, deltatime)
		lh.C0 = lh.C0:Lerp(lhC0, deltatime)
		rh.C0 = rh.C0:Lerp(rhC0, deltatime)
	elseif mode == "spinning" then
		makeMusic("party.mp3", 0.5)
		humanoid.JumpPower = 0
		humanoid.WalkSpeed = 0
		r.C0 = r.C0:Lerp(rC0 * cf(0, 0, 0.5 + 0.5 * cos(sine * 20)) * angles(0, 0, rad(angle * 6)), deltatime)
		n.C0 = n.C0:Lerp(nC0 * angles(rad(-8.652), 0, 0), deltatime)
		rs.C0 = rs.C0:Lerp(rsC0 * cf(0, 0.128, 0.713) * angles(rad(-123.358), 0, 0), deltatime)
		ls.C0 = ls.C0:Lerp(lsC0 * cf(0, 0.1, 0.552) * angles(rad(-119.347), 0, 0), deltatime)
		lh.C0 = lh.C0:Lerp(lhC0, deltatime)
		rh.C0 = rh.C0:Lerp(rhC0, deltatime)
	elseif mode == "death" then
		humanoid.JumpPower = 0
		humanoid.WalkSpeed = 0
		explosion()
		exploded = true
		r.C0 = rC0 * cf(0, -0.046, -2.487) * angles(rad(88.923), rad(-4.297), 0)
		n.C0 = nC0 * angles(0, rad(11.918), 0)
		rs.C0 = rsC0 * cf(0, 0.038, 0.09) * angles(rad(-18.449), 0, 0)
		ls.C0 = lsC0 * cf(0, -0.048, 0) * angles(rad(-11.86), 0, 0)
		lh.C0 = lhC0 * angles(rad(-8.136), 0, 0)
		rh.C0 = rhC0 * angles(rad(-14.553), 0, 0)
	elseif mode == "facepalm" then
		humanoid.JumpPower = 0
		humanoid.WalkSpeed = 0
		errsound()
		diderr = true
		r.C0 = r.C0:Lerp(rC0 * cf(0, 0, 0.1 + 0.1 * sin(sine * 2)), deltatime)
		n.C0 = n.C0:Lerp(nC0 * CFrame.Angles(rad(10.943 + 5 * sin(sine * 1)), 0, 0), deltatime)
		rs.C0 = rs.C0:Lerp(rsC0 * CFrame.Angles(rad(-3.839), 0, 0), deltatime)
		ls.C0 = ls.C0:Lerp(lsC0 * cf(-0.647, 0.38, 0.057) * CFrame.Angles(rad(134.874), 0, rad(-13.694)), deltatime)
		lh.C0 = lh.C0:Lerp(lhC0 * cf(0, -0.1 - 0.1 * sin(sine * 2), 0), deltatime)
		rh.C0 = rh.C0:Lerp(rhC0 * cf(0, -0.1 - 0.1 * sin(sine * 2), 0), deltatime)
	elseif mode == "insane" then
		humanoid.JumpPower = 0
		humanoid.WalkSpeed = 0
		r.C0 = r.C0:Lerp(rC0 * cf(math.random(-3, 3), math.random(-3, 3), 0), deltatime)
		n.C0 = n.C0:Lerp(nC0 * angles(rad(180 * sin(sine * 15)), 0, 0), deltatime)
		rs.C0 = rs.C0:Lerp(rsC0, deltatime)
		ls.C0 = ls.C0:Lerp(lsC0 * CFrame.Angles(0, 0, rad(-90)), deltatime)
		lh.C0 = lh.C0:Lerp(lhC0, deltatime)
		rh.C0 = rh.C0:Lerp(rhC0, deltatime)
	elseif mode == "ascend" then
		makeMusic("ascend.mp3", 0.5)
		humanoid.JumpPower = 0
		humanoid.WalkSpeed = 0
		upcount = upcount + 0.1
		r.C0 = rC0 * cf(math.random(-1, 1), math.random(-1, 1), upcount) * angles(rad(-100.096), 0, 0)
		n.C0 = nC0 * angles(rad(-15.413), 0, 0)
		rs.C0 = rsC0 * angles(0, 0, rad(-59.702))
		ls.C0 = lsC0 * angles(0, 0, rad(47.269))
		lh.C0 = lhC0 * angles(0, 0, rad(28.705))
		rh.C0 = rhC0 * angles(0, 0, rad(-33.174))
	elseif mode == "sit" then
		humanoid.JumpPower = 0
		humanoid.WalkSpeed = 0
		r.C0 = r.C0:Lerp(rC0 * cf(0, 0, -1.9), deltatime)
		n.C0 = n.C0:Lerp(nC0 * angles(rad(0 + 5 * sin(sine * 0.25)), 0, rad(0 + 15 * sin(sine * 0.35))), deltatime)
		rs.C0 = rs.C0:Lerp(rsC0 * cf(-0.003, -0.258, 0.002) * angles(rad(-2.865 + -1 * sin(sine * 2)), rad(22.575), rad(-4.927)), deltatime)
		ls.C0 = ls.C0:Lerp(lsC0 * cf(0.047, -0.157, 0.027) * angles(rad(1.318), rad(-41.826), rad(-76.146)), deltatime)
		lh.C0 = lh.C0:Lerp(lhC0 * cf(-0.721, 1.062, 0.065) * angles(rad(-0.057), rad(-2.693), rad(-46.868 + -5 * sin(sine * 0.5))), deltatime)
		rh.C0 = rh.C0:Lerp(rhC0 * cf(0.15, 0.207, 0.119) * angles(rad(-3.896 + -4 * sin(sine * 0.7)), rad(4.87), rad(85.886 + 2 * sin(sine * 0.3))), deltatime)
	end
end)

plr.CharacterRemoving:Connect(function()
	anims:Disconnect()
	pcall(function()
		deleteMusic()
	end)
end)
