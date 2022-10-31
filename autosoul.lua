function CheckSoul()
    local MySoul = game.Players.LocalPlayer.Data.Soul.Value
    if MySoul == 0 or MySoul <= 999999999999999 then
        MON = "Zombie [Lv.750]"
    end
    end

_G.AutoSoul = false --true/false
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
         pcall(function()
             if _G.AutoSoul then
CheckSoul()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Mob[MON].HumanoidRootPart.CFrame * CFrame.new(0,0,5)
wait()
local Event = game:GetService("ReplicatedStorage").Document.Combat.Combat
Event:FireServer()
             end
        end)
       end)
      end)
