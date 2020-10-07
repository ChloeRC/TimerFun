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
    
    
    var seconds: Int = 0 {
        didSet {
            secondsLabel.text = "\(seconds)"
        }
    }

    var timer: Timer? = nil
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
            print("tick")
            self.seconds += 1
        })
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    @IBOutlet weak var secondsLabel: UILabel!
    
    @IBAction func startButton() {
        print("start")
        if (timer == nil) {
            startTimer()
        }
    }
    
    @IBAction func pauseButton() {
        print("pause")
        stopTimer()
    }
    
    @IBAction func resetButton() {
        print("reset")
        stopTimer()
        seconds = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

