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
    
    let eggTimes : [String : Int] = ["Soft": 5, "Medium": 8, "Hard": 12]
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        
        print(eggTimes[hardness]!)
        
//        switch hardness {
//        case "Soft":
//            print(softTime)
//        case "Medium":
//            print(mediumTime)
//        case "Hard":
//            print(hardTime)
//        default:
//            print("Something went wrong")
//        }
        
        
//        if hardness == "Soft" {
//            print(softTime)
//        }
//        if hardness == "Medium" {
//            print(mediumTime)
//        }
//        if hardness == "Hard"{
//            print(hardTime)
//        }
        
    }
    

}
