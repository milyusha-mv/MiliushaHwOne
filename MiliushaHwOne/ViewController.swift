//
//  ViewController.swift
//  MiliushaHwOne
//
//  Created by Михаил Милюша on 19.08.2020.
//  Copyright © 2020 Mikhail Miliusha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var lightButton: UIButton!
    var nextColor = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 80
        yellowView.layer.cornerRadius = 80
        greenView.layer.cornerRadius = 80
        lightButton.layer.cornerRadius = 10
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }

    @IBAction func turnOnLoghtButtonPressed() {
        
        switch nextColor {
        case "Red":
            nextColor = "Yellow"
            redView.alpha = 1
            greenView.alpha = 0.3
            lightButton.setTitle("Включить желтый", for: .normal)
        case "Yellow":
            nextColor = "Green"
            redView.alpha = 0.3
            yellowView.alpha = 1
            lightButton.setTitle("Включить зелёный", for: .normal)
        case "Green":
            nextColor = "Red"
            yellowView.alpha = 0.3
            greenView.alpha = 1
            lightButton.setTitle("Включить красный", for: .normal)
        default:
            nextColor = "Yellow"
            redView.alpha = 1
            lightButton.setTitle("Включить жёлтый", for: .normal)
        }
    }
}
