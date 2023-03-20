//
//  ViewController.swift
//  3.01
//
//  Created by Айдар Оспанов on 16.03.2023.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {

    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.text = animation.description
        }
    }
    
    private var animation = Animation.getAnimation()
    
    @IBAction func runCoreAnimation(_ sender: UIButton) {
        springAnimationView.animation = animation.preset
        springAnimationView.curve =  animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
        descriptionLabel.text = animation.description
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

