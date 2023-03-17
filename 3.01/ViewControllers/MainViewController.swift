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
    
    @IBOutlet var descriptionLabel: UILabel!
    
    private var animationParameters = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
    }
    
    @IBAction func runCoreAnimation(_ sender: UIButton) {
        setupSpringView()
        setupLabel()
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
    
    private func setupLabel() {
        descriptionLabel.text = animationParameters.description
    }
}
