-- StarterGui/ChatPurchasePrompt

local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local player = Players.LocalPlayer

local CHAT_PASS_PRODUCT_ID = 0 -- Replace with your Developer Product ID

-- Create a button to prompt purchase
local ScreenGui = Instance.new("ScreenGui", player.PlayerGui)
local TextButton = Instance.new("TextButton", ScreenGui)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Position = UDim2.new(0.5, -100, 0.5, -25)
TextButton.Text = "Buy Chat Pass"

TextButton.MouseButton1Click:Connect(function()
	MarketplaceService:PromptProductPurchase(player, CHAT_PASS_PRODUCT_ID)
end)