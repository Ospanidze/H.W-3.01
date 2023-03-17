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
    
    static func getAnimation() -> Animation {
        
        let present = Singleton.shared.presets.randomElement() ?? ""
        let curve = Singleton.shared.curves.randomElement() ?? ""
        let force = Double.random(in: 1...1.5)
        let duration = Double.random(in: 1.1...1.5)
        
        return Animation(
            preset: present,
            curve: curve,
            force: force,
            duration: duration
        )
    }
}
