//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 8
    let hardTime = 12
    
    let eggTimes : [String : Int] = ["Soft": 3, "Medium": 5, "Hard": 7]
    var secondsPassed : Float = 0
    var totalTime : Float = 0
    var timer = Timer()
    var player : AVAudioPlayer!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        secondsPassed = 0
        totalTime = Float(eggTimes[hardness]!)
        progressBar.progress = 0
        
        titleLabel.text = sender.currentTitle
        
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
            timer.invalidate()
            titleLabel.text = "DONE!"
            playSound()
        }

    }
    
    func playSound() {
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
    }
    
}
