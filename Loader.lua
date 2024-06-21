local musicFolderPath = "Music"
if not isfolder(musicFolderPath) then
    makefolder(musicFolderPath)
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 300, 0, 370)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -210)
MainFrame.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local BlurEffect = Instance.new("ImageLabel")
BlurEffect.Size = UDim2.new(1, 0, 1, 0)
BlurEffect.Position = UDim2.new(0, 0, 0, 0)
BlurEffect.BackgroundTransparency = 1
BlurEffect.Image = "rbxassetid://5594847335"
BlurEffect.ScaleType = Enum.ScaleType.Slice
BlurEffect.SliceCenter = Rect.new(10, 10, 118, 118)
BlurEffect.SliceScale = 0.5
BlurEffect.ImageTransparency = 0.7
BlurEffect.Parent = MainFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainFrame

local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 30)
TitleBar.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
TitleBar.Parent = MainFrame

local TitleBarCorner = Instance.new("UICorner")
TitleBarCorner.CornerRadius = UDim.new(0, 10)
TitleBarCorner.Parent = TitleBar

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -10, 1, 0)
Title.Position = UDim2.new(0, 5, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "Music Player v1"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = TitleBar

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(9, 9, 9)  -- Cor vermelha para o botão de fechar
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 18
CloseButton.Parent = TitleBar

local CloseButtonCorner = Instance.new("UICorner")
CloseButtonCorner.CornerRadius = UDim.new(0, 10)
CloseButtonCorner.Parent = CloseButton



local MusicList = Instance.new("ScrollingFrame")
MusicList.Size = UDim2.new(1, -20, 0, 200)
MusicList.Position = UDim2.new(0, 10, 0, 40)
MusicList.CanvasSize = UDim2.new(0, 0, 0, 0)
MusicList.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
MusicList.BorderSizePixel = 0
MusicList.ScrollBarThickness = 10
MusicList.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
MusicList.Parent = MainFrame

local MusicListCorner = Instance.new("UICorner")
MusicListCorner.CornerRadius = UDim.new(0, 10)
MusicListCorner.Parent = MusicList

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 5)
UIListLayout.FillDirection = Enum.FillDirection.Vertical
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = MusicList

local PlayButton = Instance.new("ImageButton")
PlayButton.Size = UDim2.new(0, 40, 0, 40)
PlayButton.Position = UDim2.new(0.4, -80, 1, -50)
PlayButton.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
PlayButton.Image = "rbxassetid://7072720676"
PlayButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
PlayButton.Parent = MainFrame

local PlayButtonCorner = Instance.new("UICorner")
PlayButtonCorner.CornerRadius = UDim.new(0, 10)
PlayButtonCorner.Parent = PlayButton

local PauseButton = Instance.new("ImageButton")
PauseButton.Size = UDim2.new(0, 40, 0, 40)
PauseButton.Position = UDim2.new(0.4, 0, 1, -50)
PauseButton.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
PauseButton.Image = "rbxassetid://7072719997"
PauseButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
PauseButton.Parent = MainFrame

local PauseButtonCorner = Instance.new("UICorner")
PauseButtonCorner.CornerRadius = UDim.new(0, 10)
PauseButtonCorner.Parent = PauseButton

local StopButton = Instance.new("ImageButton")
StopButton.Size = UDim2.new(0, 40, 0, 40)
StopButton.Position = UDim2.new(0.4, 80, 1, -50)
StopButton.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
StopButton.Image = "rbxassetid://7072722426"
StopButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
StopButton.Parent = MainFrame

local StopButtonCorner = Instance.new("UICorner")
StopButtonCorner.CornerRadius = UDim.new(0, 10)
StopButtonCorner.Parent = StopButton

local ProgressBarFrame = Instance.new("Frame")
ProgressBarFrame.Size = UDim2.new(1, -20, 0, 20)
ProgressBarFrame.Position = UDim2.new(0, 10, 1, -80)
ProgressBarFrame.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
ProgressBarFrame.BorderSizePixel = 2
ProgressBarFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
ProgressBarFrame.Parent = MainFrame

local ProgressBarFrameCorner = Instance.new("UICorner")
ProgressBarFrameCorner.CornerRadius = UDim.new(0, 10)
ProgressBarFrameCorner.Parent = ProgressBarFrame

local ProgressBar = Instance.new("Frame")
ProgressBar.Size = UDim2.new(0, 0, 1, 0)
ProgressBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ProgressBar.BorderSizePixel = 0
ProgressBar.Parent = ProgressBarFrame

local ProgressBarCorner = Instance.new("UICorner")
ProgressBarCorner.CornerRadius = UDim.new(0, 10)
ProgressBarCorner.Parent = ProgressBar

local ProgressBarText = Instance.new("TextLabel")
ProgressBarText.Size = UDim2.new(1, 0, 1, 0)
ProgressBarText.Position = UDim2.new(0, 0, 0, 0)
ProgressBarText.BackgroundTransparency = 1
ProgressBarText.Text = "0:00 / 0:00"
ProgressBarText.TextColor3 = Color3.fromRGB(255, 255, 255)
ProgressBarText.Font = Enum.Font.Gotham
ProgressBarText.TextSize = 14
ProgressBarText.Parent = ProgressBarFrame

local RefreshButton = Instance.new("TextButton")
RefreshButton.Size = UDim2.new(1, -20, 0, 40)
RefreshButton.Position = UDim2.new(0, 10, 1, -130)
RefreshButton.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
RefreshButton.Text = "Refresh"
RefreshButton.TextColor3 = Color3.fromRGB(255, 255, 255)
RefreshButton.Font = Enum.Font.Gotham
RefreshButton.TextSize = 24
RefreshButton.Parent = MainFrame

local RefreshButtonCorner = Instance.new("UICorner")
RefreshButtonCorner.CornerRadius = UDim.new(0, 10)
RefreshButtonCorner.Parent = RefreshButton


local sound = Instance.new("Sound", game.Workspace)
local currentFile = ""
local isPaused = false
local pausedTimePosition = 0

local function playMusic(file)
    if isfile(file) then
        sound.SoundId = getcustomasset(file)
        sound.TimePosition = 0
        sound:Play()
        currentFile = file
        isPaused = false
    else
        warn("File does not exist: " .. file)
    end
end

local function resumeMusic()
    if currentFile ~= "" then
        sound:Play()
        isPaused = false
        spawn(updateProgressBar)
    end
end

local function pauseMusic()
    if sound.IsPlaying then
        pausedTimePosition = sound.TimePosition
        sound:Pause()
        isPaused = true
    elseif isPaused then
        sound:Play()
        isPaused = false
    end
end

local function stopMusic()
    sound:Stop()
    currentFile = ""
    isPaused = false
    pausedTimePosition = 0
    ProgressBar.Size = UDim2.new(0, 0, 1, 0)
    ProgressBarText.Text = "0:00 / 0:00"
end

local function formatTime(seconds)
    local minutes = math.floor(seconds / 60)
    local remainingSeconds = math.floor(seconds % 60)
    return string.format("%d:%02d", minutes, remainingSeconds)
end

local function updateProgressBar()
    while sound.IsPlaying or isPaused do
        local progress = sound.TimePosition / sound.TimeLength
        ProgressBar.Size = UDim2.new(progress, 0, 1, 0)
        ProgressBarText.Text = formatTime(sound.TimePosition) .. " / " .. formatTime(sound.TimeLength)
        wait(0.1)
    end
    ProgressBar.Size = UDim2.new(0, 0, 1, 0)
    ProgressBarText.Text = formatTime(sound.TimePosition) .. " / " .. formatTime(sound.TimeLength)
end


local supportedFormats = {".mp3", ".wav", ".ogg"}

local function populateMusicList()
    for _, child in pairs(MusicList:GetChildren()) do
        if not child:IsA("UIListLayout") then
            child:Destroy()
        end
    end
    local files = listfiles(musicFolderPath)
    if files then
        local audioFiles = {}
        for _, file in ipairs(files) do
            local lowerFile = string.lower(file)
            for _, format in ipairs(supportedFormats) do
                if lowerFile:match("%" .. format .. "$") then
                    table.insert(audioFiles, file)
                    break
                end
            end
        end
        for i, file in ipairs(audioFiles) do
            local fileName = file:match("([^/]+)%.%w+$")
            local button = Instance.new("TextButton")
            button.Size = UDim2.new(1, 5, 0, 30)
            button.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
            button.Text = fileName
            button.TextColor3 = Color3.fromRGB(255, 255, 255)
            button.Font = Enum.Font.Gotham
            button.TextSize = 16
            button.LayoutOrder = i
            button.Parent = MusicList
            button.MouseButton1Click:Connect(function()
                playMusic(file)
                spawn(updateProgressBar)
            end)
        end
        MusicList.CanvasSize = UDim2.new(0, 0, 0, #audioFiles * 35)
    else
        warn("No files found in the Music folder")
    end
end

ProgressBarFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        local position = input.Position.X - ProgressBarFrame.AbsolutePosition.X
        local width = ProgressBarFrame.AbsoluteSize.X
        local percent = position / width
        if sound.IsPlaying or isPaused then
            sound.TimePosition = percent * sound.TimeLength
            pausedTimePosition = sound.TimePosition
            ProgressBar.Size = UDim2.new(percent, 0, 1, 0)
            ProgressBarText.Text = formatTime(sound.TimePosition) .. " / " .. formatTime(sound.TimeLength)
        end
    end
end)

PlayButton.MouseButton1Click:Connect(function()
    if currentFile ~= "" then
        if isPaused then
            resumeMusic()
        else
            playMusic(currentFile)
        end
    end
end)

PauseButton.MouseButton1Click:Connect(function()
    pauseMusic()
end)

StopButton.MouseButton1Click:Connect(function()
    stopMusic()
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()  -- Fecha a GUI ao clicar no botão de fechar
end)

RefreshButton.MouseButton1Click:Connect(function()
    populateMusicList()
end)

populateMusicList()

local dragging = false
local dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

TitleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

local function toggleUI()
    ScreenGui.Enabled = not ScreenGui.Enabled
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.RightShift then
        toggleUI()
    end
end)
