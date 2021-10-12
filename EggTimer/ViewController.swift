//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 8
    let hardTime = 12
    
    let eggTimes : [String : Int] = ["Soft": 3, "Medium": 5, "Hard": 7]
    var secondsPassed : Float = 0
    var totalTime : Float = 0
    var timer = Timer()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        secondsPassed = 0
        totalTime = Float(eggTimes[hardness]!)
        titleLabel.text = sender.currentTitle ?? "Soft"
        
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateCounter() {
        //example functionality
        if secondsPassed < totalTime {
            
            secondsPassed += 1
            progressBar.progress = secondsPassed / totalTime
            
        }
        else{
            
            titleLabel.text = "DONE!"
            
        }

    }
    
}
