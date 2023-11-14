package core

import "vendor:sdl2"

// Core types
Location :: struct {
    x: i32,
    y: i32
}

Color :: struct {
    r: u8,
    g: u8,
    b: u8,
    a: u8
}

// Window and render
Window :: ^sdl2.Window
Renderer :: ^sdl2.Renderer

Program :: struct {
    title: cstring,
    width: i32,
    height: i32,
}

// Draw
Rect :: struct {
    x, y: i32,
    width, height: i32
}