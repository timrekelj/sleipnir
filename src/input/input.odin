package input

import "vendor:sdl2"

check_input :: proc() {
    event: sdl2.Event

    for sdl2.PollEvent(&event) {
        #partial switch event.type {
            case .QUIT: sdl2.Quit()
        }
    }
}