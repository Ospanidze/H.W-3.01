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
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
    }
    
    @IBAction func runCoreAnimation(_ sender: UIButton) {
        setupSpringView()
        setupLabel()
        animation = Animation.getAnimation()
        sender.setTitle(animation.preset, for: .normal)
    }
}

// MARK: Private Methods

extension MainViewController {
    private func setupSpringView() {
        springAnimationView.animation = animation.preset
        springAnimationView.curve =  animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
    }
    
    private func setupLabel() {
        descriptionLabel.text = animation.description
    }
}
