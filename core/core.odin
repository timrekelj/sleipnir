package core

init :: proc(data: ^Program) -> (Window, Renderer) {
    window := create_window(data)
    renderer := create_renderer(window)

    return window, renderer
} 