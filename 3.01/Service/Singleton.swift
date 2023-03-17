//
//  DataStore.swift
//  3.01
//
//  Created by Айдар Оспанов on 16.03.2023.
//

final class Singleton {
    
    static let shared = Singleton()
    
    private init() {}
    
    let presets = [
        "slideRight",
        "squeezeDown",
        "fadeOutIn",
        "shake",
        "morph",
        "wobble",
        "zoomIn",
        "flipX",
        "swing",
        "flash",
        "fadeIn"
    ]
    
    let curves = [
        "easeInSine",
        "linear",
        "spring",
        "easeInQuad",
        "easeInCubic",
        "easeInExpo",
        "easeInQuint",
        "easeOut",
        "easeIn",
        "easeInCirc"
    ]
}
