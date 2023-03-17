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
        setValue(lables: presetLabel, curveLabel, forceLabel, durationLabel, delayLabel)
    }
    
    @IBAction func runCoreAnimation(_ sender: UIButton) {
        setupSpringView()
        setValue(lables: presetLabel, curveLabel, forceLabel, durationLabel, delayLabel)
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
    
    private func setValue(lables: UILabel...) {
        for (index, label) in lables.enumerated() {
            label.text = animationParameters.description[index]
        }
    }
}
