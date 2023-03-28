local Teams = game:GetService('Teams')
local Players = game:GetService('Players')
local c1 = 1
local cc1 = 111
local ccc1 = 113
local c2 = 1
local cc2 = 0
local ccc2 = 0
local c3 = 255
local cc3 = 255
local ccc3 = 255

local r1 = 214
local rr1 = 200
local rrr1 = 162
local r2 = 255
local rr2 = 255
local rrr2 = 255
local r3 = 140
local rr3 = 34
local rrr3 = 50

local Colors = {
    
    ['Carolina Predators'] = {

        -- c1
        JerseyShirt = Color3.fromRGB(c1, cc1, ccc1),
        ShoulderPads = Color3.fromRGB(c1, cc1, ccc1),  
        LeftPit = Color3.fromRGB(c1, cc1, ccc1),
        RightPit = Color3.fromRGB(c1, cc1, ccc1),
        RightPants = Color3.fromRGB(c1,cc1,ccc1),
        LeftPants = Color3.fromRGB(c1,cc1,ccc1),


        -- c2
        Helmet = Color3.fromRGB(c2, cc2, ccc2),
        LeftShoe = Color3.fromRGB(c2, cc2, ccc2),
        RightShoe = Color3.fromRGB(c2, cc2, ccc2),
        RightSock = Color3.fromRGB(c2,cc2,ccc2),
        LeftSock = Color3.fromRGB(c2,cc2,ccc2),
        LeftShortSock = Color3.fromRGB(c2,cc2,ccc2),
        RightShortSock = Color3.fromRGB(c2,cc2,ccc2),
        LeftSleeve = Color3.fromRGB(c2,cc2,ccc2),
        RightSleeve = Color3.fromRGB(c2,cc2,ccc2),
        NumFill = Color3.fromRGB(c2,cc2,ccc2),
        LeftGlove = Color3.fromRGB(c2,cc2,ccc2),
        RightGlove = Color3.fromRGB(c2,cc2,ccc2),

        -- c3
        NumStroke = Color3.fromRGB(c3,cc3,ccc3),

        Texture = 'rbxassetid://12921753318',
        TeamName = 'COASTAL',
        HelmetIcon = 'rbxassetid://12921752572',
        CenterIcon = 'rbxassetid://12902928817'    
    },
    
    ['New England Nationals'] = {
        -- c1
        RightPants = Color3.fromRGB(r1,rr1,rrr1),
        LeftPants = Color3.fromRGB(r1,rr1,rrr1),
        Helmet = Color3.fromRGB(r1,rr1,rrr1),
        NumStroke = Color3.fromRGB(r1,rr1,rrr1),

        -- c2
        JerseyShirt = Color3.fromRGB(r2,rr2,rrr2),
        ShoulderPads = Color3.fromRGB(r2,rr2,rrr2),
        LeftPit = Color3.fromRGB(r2,rr2,rrr2),
        RightPit = Color3.fromRGB(r2,rr2,rrr2),
        LeftShoe = Color3.fromRGB(r2,rr2,rrr2),
        RightShoe = Color3.fromRGB(r2,rr2,rrr2),
        LeftShortSock = Color3.fromRGB(r2,rr2,rrr2),
        RightShortSock = Color3.fromRGB(r2,rr2,rrr2),
        RightSock = Color3.fromRGB(r2,rr2,rrr2),
        LeftSock = Color3.fromRGB(r2,rr2,rrr2),
        LeftGlove = Color3.fromRGB(r2,rr2,rrr2),
        RightGlove = Color3.fromRGB(r2,rr2,rrr2),

        -- c3
        LeftSleeve = Color3.fromRGB(r3,rr3,rrr3),
        RightSleeve = Color3.fromRGB(r3,rr3,rrr3),
        NumFill = Color3.fromRGB(r3,rr3,rrr3),

        Texture = 'rbxassetid://12921810362',
        TeamName = 'BOSTON',
        HelmetIcon = 'rbxassetid://12921799971',
        CenterIcon = 'rbxassetid://12902928817'    
    }
}

local function EditPlayerUniform(Player)
    local Color = Colors[Player.Team.Name]
    Player:GetPropertyChangedSignal('Team'):Connect(function()
        Color = Colors[Player.Team.Name]
        if Player.Character then
            local field = game.____________________________________________________________________________________________________.Models.Field
            local Uniform = Player.Character:WaitForChild('Uniform')
            wait(1.5)
            Uniform.Shirt.Color = Color.JerseyShirt
            Uniform.ShoulderPads.Color = Color.ShoulderPads
            Uniform.LeftShoe.Color = Color.LeftShoe
            Uniform.RightShoe.Color = Color.RightShoe
            Uniform.LeftShortSleeve.Color = Color.LeftSleeve
            Uniform.RightShortSleeve.Color = Color.RightSleeve
            Uniform.Helmet.Color = Color.Helmet
            Uniform.RightSock.Color = Color.RightSock
            Uniform.LeftSock.Color = Color.LeftSock
            Uniform.LeftPants.Color = Color.LeftPants
            Uniform.RightPants.Color = Color.RightPants
            Uniform.LeftPit.Color = Color.LeftPit
            Uniform.RightPit.Color = Color.RightPit
            Uniform.LeftGlove.Color = Color.LeftGlove
            Uniform.RightGlove.Color = Color.RightGlove
            Uniform.LeftShortSock.Color = Color.LeftShortSock
            Uniform.RightShortSock.Color = Color.RightShortSock
            Uniform.Helmet.Mesh.TextureId = Color.Texture
            Uniform.ShoulderPads.Front.Team.Text = Color.TeamName
            Uniform.Shirt.FrontNum.TextLabel.TextStrokeColor3 = Color.NumStroke
            Uniform.Shirt.FrontNum.TextLabel.TextColor3 = Color.NumFill
            Uniform.Shirt.BackNum.TextLabel.TextStrokeColor3 = Color.NumStroke
            Uniform.Shirt.BackNum.TextLabel.TextColor3 = Color.NumFill
            Uniform.ShoulderPads.Top.LeftNum.TextColor3 = Color.NumFill
            Uniform.ShoulderPads.Top.RightNum.TextColor3 = Color.NumFill
            Uniform.ShoulderPads.Top.LeftNum.TextStrokeColor3 = Color.NumFill
            Uniform.ShoulderPads.Top.RightNum.TextStrokeColor3 = Color.NumFill
            Uniform.ShoulderPads.Front.Team.TextColor3 = Color.NumFill
            Uniform.ShoulderPads.Front.Team.TextStrokeColor3 = Color.NumFill
            Uniform.ShoulderPads.Back.PlayerName.TextColor3 = Color.NumFill
            Uniform.ShoulderPads.Back.PlayerName.TextStrokeColor3 = Color.NumFill
            Uniform.Helmet.LeftLogo.Decal.Texture = Color.HelmetIcon
            Uniform.Helmet.RightLogo.Decal.Texture = Color.HelmetIcon
            field.Grass.Normal.Mid.SurfaceGui.ImageLabel.Image = Color.CenterIcon
            field.Grass.Endzone.One.SurfaceGui:Destroy()
            field.Grass.Endzone.Two.SurfaceGui:Destroy()
            Uniform.ShoulderPads.Left:Destroy()
            Uniform.ShoulderPads.Right:Destroy()

        end
    end)
    if Player.Character then
        if Color then
            local field = game.____________________________________________________________________________________________________.Models.Field
            local Uniform = Player.Character:WaitForChild('Uniform')
            wait(1.5)
            Uniform.Shirt.Color = Color.JerseyShirt
            Uniform.ShoulderPads.Color = Color.ShoulderPads
            Uniform.LeftShoe.Color = Color.LeftShoe
            Uniform.RightShoe.Color = Color.RightShoe
            Uniform.LeftShortSleeve.Color = Color.LeftSleeve
            Uniform.RightShortSleeve.Color = Color.RightSleeve
            Uniform.Helmet.Color = Color.Helmet
            Uniform.RightSock.Color = Color.RightSock
            Uniform.LeftSock.Color = Color.LeftSock
            Uniform.LeftPants.Color = Color.LeftPants
            Uniform.RightPants.Color = Color.RightPants
            Uniform.LeftPit.Color = Color.LeftPit
            Uniform.RightPit.Color = Color.RightPit
            Uniform.LeftGlove.Color = Color.LeftGlove
            Uniform.RightGlove.Color = Color.RightGlove
            Uniform.LeftShortSock.Color = Color.LeftShortSock
            Uniform.RightShortSock.Color = Color.RightShortSock
            Uniform.Helmet.Mesh.TextureId = Color.Texture
            Uniform.ShoulderPads.Front.Team.Text = Color.TeamName
            Uniform.Shirt.FrontNum.TextLabel.TextStrokeColor3 = Color.NumStroke
            Uniform.Shirt.FrontNum.TextLabel.TextColor3 = Color.NumFill
            Uniform.Shirt.BackNum.TextLabel.TextStrokeColor3 = Color.NumStroke
            Uniform.Shirt.BackNum.TextLabel.TextColor3 = Color.NumFill
            Uniform.ShoulderPads.Top.LeftNum.TextColor3 = Color.NumFill
            Uniform.ShoulderPads.Top.RightNum.TextColor3 = Color.NumFill
            Uniform.ShoulderPads.Top.LeftNum.TextStrokeColor3 = Color.NumFill
            Uniform.ShoulderPads.Top.RightNum.TextStrokeColor3 = Color.NumFill
            Uniform.ShoulderPads.Front.Team.TextColor3 = Color.NumFill
            Uniform.ShoulderPads.Front.Team.TextStrokeColor3 = Color.NumFill
            Uniform.ShoulderPads.Back.PlayerName.TextColor3 = Color.NumFill
            Uniform.ShoulderPads.Back.PlayerName.TextStrokeColor3 = Color.NumFill
            Uniform.Helmet.LeftLogo.Decal.Texture = Color.HelmetIcon
            Uniform.Helmet.RightLogo.Decal.Texture = Color.HelmetIcon
            field.Grass.Normal.Mid.SurfaceGui.ImageLabel.Image = Color.CenterIcon
            field.Grass.Endzone.One.SurfaceGui:Destroy()
            field.Grass.Endzone.Two.SurfaceGui:Destroy()
            Uniform.ShoulderPads.Left:Destroy()
            Uniform.ShoulderPads.Right:Destroy()
        end
    end
    Player.CharacterAdded:Connect(function()
        if Color then
            local field = game.____________________________________________________________________________________________________.Models.Field
            local Uniform = Player.Character:WaitForChild('Uniform')
            wait(1.5)
            Uniform.Shirt.Color = Color.JerseyShirt
            Uniform.ShoulderPads.Color = Color.ShoulderPads
            Uniform.LeftShoe.Color = Color.LeftShoe
            Uniform.RightShoe.Color = Color.RightShoe
            Uniform.LeftShortSleeve.Color = Color.LeftSleeve
            Uniform.RightShortSleeve.Color = Color.RightSleeve
            Uniform.Helmet.Color = Color.Helmet
            Uniform.RightSock.Color = Color.RightSock
            Uniform.LeftSock.Color = Color.LeftSock
            Uniform.LeftPants.Color = Color.LeftPants
            Uniform.RightPants.Color = Color.RightPants
            Uniform.LeftPit.Color = Color.LeftPit
            Uniform.RightPit.Color = Color.RightPit
            Uniform.LeftGlove.Color = Color.LeftGlove
            Uniform.RightGlove.Color = Color.RightGlove
            Uniform.LeftShortSock.Color = Color.LeftShortSock
            Uniform.RightShortSock.Color = Color.RightShortSock
            Uniform.Helmet.Mesh.TextureId = Color.Texture
            Uniform.ShoulderPads.Front.Team.Text = Color.TeamName
            Uniform.Shirt.FrontNum.TextLabel.TextStrokeColor3 = Color.NumStroke
            Uniform.Shirt.FrontNum.TextLabel.TextColor3 = Color.NumFill
            Uniform.Shirt.BackNum.TextLabel.TextStrokeColor3 = Color.NumStroke
            Uniform.Shirt.BackNum.TextLabel.TextColor3 = Color.NumFill
            Uniform.ShoulderPads.Top.LeftNum.TextColor3 = Color.NumFill
            Uniform.ShoulderPads.Top.RightNum.TextColor3 = Color.NumFill
            Uniform.ShoulderPads.Top.LeftNum.TextStrokeColor3 = Color.NumFill
            Uniform.ShoulderPads.Top.RightNum.TextStrokeColor3 = Color.NumFill
            Uniform.ShoulderPads.Front.Team.TextColor3 = Color.NumFill
            Uniform.ShoulderPads.Front.Team.TextStrokeColor3 = Color.NumFill
            Uniform.ShoulderPads.Back.PlayerName.TextColor3 = Color.NumFill
            Uniform.ShoulderPads.Back.PlayerName.TextStrokeColor3 = Color.NumFill
            Uniform.Helmet.LeftLogo.Decal.Texture = Color.HelmetIcon
            Uniform.Helmet.RightLogo.Decal.Texture = Color.HelmetIcon
            field.Grass.Normal.Mid.SurfaceGui.ImageLabel.Image = Color.CenterIcon
            field.Grass.Endzone.One.SurfaceGui:Destroy()
            field.Grass.Endzone.Two.SurfaceGui:Destroy()
            Uniform.ShoulderPads.Left:Destroy()
            Uniform.ShoulderPads.Right:Destroy()
        end 
    end)
end

for _, Player in pairs(Players:GetPlayers()) do
    task.spawn(EditPlayerUniform, Player)
end

Players.PlayerAdded:Connect(function(Player)
    EditPlayerUniform(Player)
end)
