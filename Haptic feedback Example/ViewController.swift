//
//  ViewController.swift
//  Haptic feedback Example
//
//  Created by Balaji Malliswamy on 13/12/18.
//  Copyright © 2018 NFNLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnLightOnClick(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.prepare()
        generator.impactOccurred()
    }
    
    @IBAction func btnMediumOnClick(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.prepare()
        generator.impactOccurred()
    }
    
    @IBAction func btnHeavyOnClick(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.prepare()
        generator.impactOccurred()
    }
    
    @IBAction func btnSelectionOnClick(_ sender: Any) {
        let generator = UISelectionFeedbackGenerator()
        generator.selectionChanged()
    }
    
    
    @IBAction func btnErrorOnClick(_ sender: Any) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.error)
    }
    
    @IBAction func btnWarningOnClick(_ sender: Any) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.warning)
    }
    
    @IBAction func btnSuccessOnClick(_ sender: Any) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
}

