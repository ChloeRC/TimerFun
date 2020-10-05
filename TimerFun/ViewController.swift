//
//  ViewController.swift
//  TimerFun
//
//  Created by Crawford, Chloe on 10/5/20.
//  Copyright © 2020 Crawford, Chloe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // task: define seconds property (Int)
    // prop observer updates secondsLabel
    
    //task: when press pause or reset, invalidate the timer
    
    
    //var seconds: Int = {
        // have it update seconds in label
        //return 0
    //}

    var timer: Timer? = nil
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
            print("tick")
            //seconds += 1
        })
    }
    
    @IBOutlet weak var secondsLabel: UILabel!
    
    @IBAction func startButton() {
        print("start")
        startTimer()
    }
    
    @IBAction func pauseButton() {
        print("pause")
    }
    
    @IBAction func resetButton() {
        print("reset")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

