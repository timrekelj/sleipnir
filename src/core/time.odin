package core

import "vendor:sdl2"

wait :: proc(ms: u32) {
    sdl2.Delay(ms)
}