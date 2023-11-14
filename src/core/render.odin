package core

import "vendor:sdl2"

create_renderer :: proc(window: ^sdl2.Window) -> Renderer {
    return sdl2.CreateRenderer(window, -1, sdl2.RENDERER_ACCELERATED)
}

render :: proc(renderer: Renderer, bg_color: Color) {
    sdl2.SetRenderDrawColor(renderer, bg_color.r, bg_color.g, bg_color.b, bg_color.a)
    sdl2.RenderPresent(renderer)
    sdl2.RenderClear(renderer)
}