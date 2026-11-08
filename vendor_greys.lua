local function OnEvent(self, event, ...)
    local grey_count = C_MerchantFrame.GetNumJunkItems()
    C_MerchantFrame.SellAllJunkItems()
    print(string.format("Sold %d junk items", grey_count))
end

local f = CreateFrame("Frame")
f:RegisterEvent("MERCHANT_SHOW")
f:SetScript("OnEvent", OnEvent)
print("vendor-greys loaded")
