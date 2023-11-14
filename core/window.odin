package core

import "vendor:sdl2"

create_window :: proc(data: ^Program) -> Window {
    assert(sdl2.Init(sdl2.INIT_VIDEO) == 0, sdl2.GetErrorString())
    
    window: Window = sdl2.CreateWindow(
        data.title,
        sdl2.WINDOWPOS_CENTERED,
        sdl2.WINDOWPOS_CENTERED,
        data.width,
        data.height,
        sdl2.WINDOW_SHOWN,
    )
    assert(window != nil, sdl2.GetErrorString())

    return window
}