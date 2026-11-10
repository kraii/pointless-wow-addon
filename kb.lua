local function OpenQuickKeybind()
    if InCombatLockdown() then
        return
    end

   	ShowUIPanel(QuickKeybindFrame)
end

SLASH_QUICKKB1 = "/kb"
SlashCmdList.QUICKKB = OpenQuickKeybind
