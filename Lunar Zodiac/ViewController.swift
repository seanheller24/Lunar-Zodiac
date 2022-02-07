//
//  ViewController.swift
//  Lunar Zodiac
//
//  Created by Sean Heller on 1/31/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var animalImageView: UIImageView!
    
    var currentImageNumber = 2
    var currentYear = 2022
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yearLabel.text = "\(currentYear)"
        animalImageView.image = UIImage(named: "image\(currentImageNumber)")
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        //currentImageNumber = currentImageNumber - 1
        currentImageNumber += sender.tag
        currentYear += sender.tag
            if currentImageNumber < 0 {
                currentImageNumber = 11
            } else if currentImageNumber > 11 {
                currentImageNumber = 0
            }
        
            yearLabel.text = "\(currentYear)"
            animalImageView.image = UIImage(named: "image\(currentImageNumber)")
    }
    
    
}

