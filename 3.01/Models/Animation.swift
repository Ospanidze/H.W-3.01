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
    
    var description: [String] {
        let stringForce = string(from: force)
        let stringDuration = string(from: duration)
        let stringDelay = string(from: delay)
        
        return [preset, curve, stringForce, stringDuration, stringDelay]
    }
    
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
    
    private func string(from number: Double) -> String {
        String(format: "%.2f", number)
    }
}
