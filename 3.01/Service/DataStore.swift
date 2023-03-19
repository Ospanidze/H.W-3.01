//
//  DataStore.swift
//  3.01
//
//  Created by Айдар Оспанов on 16.03.2023.
//

final class DataStore {
    
    static let shared = DataStore()
    
    private init() {}
    
    let presets = Preset.allCases
    let curves = Curve.allCases
}

enum Preset: String, CaseIterable {
    case slideRight
    case squeezeDown
    case fadeOutIn
    case shake
    case morph
    case wobble
    case zoomIn
    case flipX
    case swing
    case flash
    case fadeIn
}

enum Curve: String, CaseIterable {
    case easeInSine
    case linear
    case spring
    case easeInQuad
    case easeInCubic
    case easeInExpo
    case easeInQuint
    case easeOut
    case easeIn
    case easeInCirc
}
