local GOSSIP_FRAME_WIDTH = 400
local GOSSIP_FRAME_HEIGHT = 600

local function onOpenGossip()
    GossipFrame:SetSize(GOSSIP_FRAME_WIDTH, GOSSIP_FRAME_HEIGHT)

    -- Resize the panel that fills the main frame and its content area.
    local panel = GossipFrame.GreetingPanel
    if panel then
        panel:ClearAllPoints()
        panel:SetPoint("TOPLEFT", GossipFrame, "TOPLEFT", 0, 0)
        panel:SetPoint("BOTTOMRIGHT", GossipFrame, "BOTTOMRIGHT", 0, 0)

        local scrollFrame = panel.ScrollBox or panel.ScrollFrame
        if scrollFrame then
            scrollFrame:ClearAllPoints()
            scrollFrame:SetPoint("TOPLEFT", panel, "TOPLEFT", 25, -65)
            scrollFrame:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -30, 40)
        end
    end
end

GossipFrame:HookScript("OnShow", onOpenGossip)
