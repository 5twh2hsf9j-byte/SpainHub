-- SpainHub 核心UI框架
return function(config)
    local Players = game:GetService("Players")
    local TweenService = game:GetService("TweenService")
    local UserInputService = game:GetService("UserInputService")
    
    local player = Players.LocalPlayer
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "SpainHubSP"
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    -- Delta专用父级设置
    if game:GetService("CoreGui"):FindFirstChild("RobloxGui") then
        ScreenGui.Parent = game:GetService("CoreGui")
    else
        ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    end

    -- 这里放您所有的UI创建代码（主窗口、标签系统、按钮创建函数等）
    -- 就是您现有脚本中从创建ScreenGui到功能按钮之前的所有代码
    
    -- 返回给外部使用的功能
    return {
        ScreenGui = ScreenGui,
        tabContents = tabContents,  -- 让外部可以访问标签页
        CreateFeatureButton = CreateFeatureButton  -- 创建按钮的函数
    }
end
