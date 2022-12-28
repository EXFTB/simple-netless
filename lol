
--Bools--
local Players = game:GetService("Players")
local Client = Players.LocalPlayer
local RService = game:GetService("RunService")

--Velocity Booster (works with only this if you're feeling generous)--
RService.Heartbeat:Connect(function()
    -----------THIS IS GETTING LOOPED-----------
    for i,v in next, Client.Character:GetChildren() do
        if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
            v.Velocity = Vector3.new(0, 700, 0)
            RService.RenderStepped:Wait()
            v.Handle.AssemblyLinearVelocity = Vector3.new(30,0,0)
            v.Velocity = Vector3.new(-35, -35, -35)
        end
    end
    -----------THIS IS GETTING LOOPED-----------
end)

--Netless stuff that just might help--
setfflag("FFlagHumanoidParallelRemoveNoPhysics", "false")
setfflag("FFlagHumanoidParallelRemoveNoPhysicsNoSimulate2", "false")
settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
settings().Physics.AllowSleep = false
Client.MaximumSimulationRadius = 1000
sethiddenproperty(Client, "SimulationRadius", 1000)

--[[
Daily Reminder: Welds Suck Ass, Will not be using welds.



Simple netbypass made by me in like 4 minutes, why such high velocity? well DO YOU WANT IT TO FALL OR NOT??

Actually a simple one is just teleporting the for an example boombox or gun to two positions at really high speed and use velocity -35, -35, -35 or -60, -60, -60 or 60, 60, 60 (whatever you wish of these)
A good tip for that method is making it go around in a circle using CFrame on the handle whilst putting it at one of those velocities.

]]
