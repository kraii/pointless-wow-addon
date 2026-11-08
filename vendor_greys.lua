local function OnEvent(self, event, ...)
    local grey_count = C_MerchantFrame.GetNumJunkItems()
    C_MerchantFrame.SellAllJunkItems()
    if grey_count > 0 then
        print(string.format("Sold %d junk items", grey_count))
    end
end

local f = CreateFrame("Frame")
f:RegisterEvent("MERCHANT_SHOW")
f:SetScript("OnEvent", OnEvent)
