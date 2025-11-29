-- UI_Main.lua - 西班牙脚本SP｜HUB UI部分
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local SpainUI = {}

function SpainUI:CreateMainInterface()
    -- 创建主ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "SpainHubSP"
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    -- Delta专用父级设置
    if game:GetService("CoreGui"):FindFirstChild("RobloxGui") then
        ScreenGui.Parent = game:GetService("CoreGui")
    else
        ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    end
    
    -- 创建主窗口框架
    local MainFrame = self:CreateMainFrame()
    MainFrame.Parent = ScreenGui
    
    -- 创建标题栏
    local TitleBar = self:CreateTitleBar()
    TitleBar.Parent = MainFrame
    
    -- 创建侧边栏和内容区域
    local SideBar, ContentFrame = self:CreateSidebarAndContent()
    SideBar.Parent = MainFrame
    ContentFrame.Parent = MainFrame
    
    -- 创建标签系统
    self:CreateTabSystem(SideBar, ContentFrame)
    
    -- 创建缩小图标
    local MinimizedIcon = self:CreateMinimizedIcon()
    MinimizedIcon.Parent = ScreenGui
    
    return ScreenGui
end

function SpainUI:CreateMainFrame()
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(0, 500, 0, 450)
    MainFrame.Position = UDim2.new(0.5, -250, 0.5, -225)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
    MainFrame.BackgroundTransparency = 0.05
    MainFrame.BorderSizePixel = 0
    
    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 15)
    MainCorner.Parent = MainFrame
    
    return MainFrame
end

-- 其他UI创建函数...
return SpainUI
