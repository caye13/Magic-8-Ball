//
//  ViewController.swift
//  MagicEightBall2
//
//  Created by Ck2 Jedi on 7/28/20.
//  Copyright © 2020 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let answers = ["yes, definitely", "it is certain", "without a doubt", "yes", "most likely", "sure, why not?", "same", "tell me more", "out to lunch", "reply hazy, try again", "ask again later", "the cake is a lie", "tmi", "very doubtful", "don't count on it", "my reply is no", "absolutely not"]


    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func shakeButtonTapped(_ sender: Any) {
       generateAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }

       generateAnswer()
    }
    
    func generateAnswer() {
        let randomIndex = Int.random(in: 0..<answers.count)
        
        answerLabel.text = answers[randomIndex]
        
    }
    
    @IBAction func resetToOriginalState(_ sender: UIButton) {
        self.answerLabel.text = "have a question?"
    }
    
}

