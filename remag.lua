screen = hs.screen.mainScreen()
max = screen:fullFrame()
mid = screen:frame()

function center()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    f.x = (max.w - f.w) / 2
    f.y = mid.y + (mid.h - f.h) / 2
    win:setFrame(f)
end

hs.hotkey.bind({"ctrl","alt"}, "C", center)
