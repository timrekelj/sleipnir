package core

import "vendor:sdl2"

draw_rect :: proc(data: Rect, color: Color, renderer: ^Renderer) {
    rect: sdl2.Rect = { data.x, data.y, data.width, data.height }

    sdl2.SetRenderDrawColor(renderer^, color.r, color.g, color.b, color.a)
    sdl2.RenderFillRect(renderer^, &rect)
}

rect_location :: proc(data: ^Rect, location: Location) {
    data^.x = location.x
    data^.y = location.y
}