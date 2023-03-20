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
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(string(from: force))
        duration: \(string(from: duration))
        delay: \(string(from: delay))
        """
    }
    
    static func getAnimation() -> Animation {
        
        let present = DataStore.shared.presets.randomElement()?.rawValue ?? ""
        let curve = DataStore.shared.curves.randomElement()?.rawValue ?? ""
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
