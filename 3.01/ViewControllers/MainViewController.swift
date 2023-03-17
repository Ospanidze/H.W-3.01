//
//  ViewController.swift
//  3.01
//
//  Created by Айдар Оспанов on 16.03.2023.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animationParameters = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
    }
    
    @IBAction func runCoreAnimation(_ sender: UIButton) {
        setupSpringView()
        setupLabels()
        animationParameters = Animation.getAnimation()
        sender.setTitle(animationParameters.preset, for: .normal)
    }
}

// MARK: Private Methods

extension MainViewController {
    private func setupSpringView() {
        springAnimationView.animation = animationParameters.preset
        springAnimationView.curve =  animationParameters.curve
        springAnimationView.force = animationParameters.force
        springAnimationView.duration = animationParameters.duration
        springAnimationView.delay = animationParameters.delay
        springAnimationView.animate()
    }
    
    private func setupLabels() {
        let stringForce = string(from: animationParameters.force)
        let stringDuration = string(from: animationParameters.duration)
        let stringDelay = string(from: animationParameters.delay)
        
        presetLabel.text = animationParameters.preset
        curveLabel.text = animationParameters.curve
        forceLabel.text = stringForce
        durationLabel.text = stringDuration
        delayLabel.text = stringDelay
    }
    
    private func string(from number: Double) -> String {
        String(format: "%.2f", number)
    }
}
