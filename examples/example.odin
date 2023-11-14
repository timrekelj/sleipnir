package main

import sl "../core"
import sl_input "../input"
import "core:fmt"

main :: proc() {
    // Set data for window
    program_data: sl.Program = {
        title="Test",
        height=720,
        width=1280,
    }

    // Create window and renderer
    window, renderer := sl.init(&program_data)

    // Set data for rectangle
    rect: sl.Rect = { x = 100, y = 100, width = 100, height = 100, }
    rect_color: sl.Color = { r = 255, g = 0, b = 0, a = 255, }
    rect_location: sl.Location
    
    // Game loop
    for {
        // Clear screen
        sl.render(renderer, { r=20, g=20, b=20, a=1 })

        // Draw rectangle
        rect_location = { rect.x + 1, rect.y + 1 }
        sl.rect_location(&rect, rect_location)
        sl.draw_rect(rect, rect_color, &renderer)

        // Check for input
        sl_input.check_input()

        // Wait for next frame
        sl.wait(1000/60)
    }
}