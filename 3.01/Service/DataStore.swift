//
//  DataStore.swift
//  3.01
//
//  Created by Айдар Оспанов on 16.03.2023.
//

class DataStore {
    
    static let shared = DataStore()
    
    init() {}
    
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
        "fall"
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
