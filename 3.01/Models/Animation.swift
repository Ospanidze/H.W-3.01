//
//  Animation.swift
//  3.01
//
//  Created by Айдар Оспанов on 16.03.2023.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay = 0.30
    
    static func getAnimationParameters() -> Animation {
        
        let presents = DataStore.shared.presets
        let curves = DataStore.shared.curves
        let force = Double.random(in: 1...1.5)
        let duration = Double.random(in: 1.1...1.5)
        
        return Animation(
            preset: presents[Int.random(in: 0..<presents.count)],
            curve: curves[Int.random(in: 0..<curves.count)],
            force: force,
            duration: duration
        )
    }
}
