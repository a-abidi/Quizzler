//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        ["a", "True"],
        ["b", "True"],
        ["c", "True"],
        ["d", "True"]
    ]
    
    var quizNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func userResponse(_ sender: UIButton) {
        let answer = sender.currentTitle
        let actualAnswer = quiz[quizNumber][1]
        
        if (answer == actualAnswer) {
            print("Correct!")
        } else {
            print("Wrong!")
        }
        
        if (quizNumber < quiz.count - 1) {
            quizNumber += 1
        } else {
            quizNumber = 0
        }
    
        updateUI()
    }
    
    func updateUI() {
        question.text = quiz[quizNumber][0]
    }

}

