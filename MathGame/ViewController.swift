//
//  ViewController.swift
//  MathGame
//
//  Created by Sam Meech-Ward on 2020-04-26.
//  Copyright © 2020 Sam Meech-Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var feedbackLabel: UILabel!
    
    var answerText = ""
    var question: MathQuestion?
    var additionQuestion = AdditionQuestion()
    var multiplicationQuestion = MultiplicationQuestion()
    
    var gameStarted = false
    var additionGameStarted = false
    var multiplicationGameStarted = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func additionGameBtn(_ sender: Any) {
        gameStarted = true
        additionGameStarted = true
        multiplicationGameStarted = false
        
        self.additionQuestion = AdditionQuestion()
        
        self.questionLabel.text = self.additionQuestion.text
    }
    
    @IBAction func checkAnswer(_ sender: Any) {
        if gameStarted {
            
            if self.answerText == "" {
                self.feedbackLabel.text = "You Answered Incorrect"
                return
            }
            
            if additionGameStarted {
                if  self.additionQuestion.checkAnswer(Int(self.answerText)!) {
                    self.feedbackLabel.text = "You Answered Correct"
                } else {
                    self.feedbackLabel.text = "You Answered Incorrect"
                }
            }
            
            if multiplicationGameStarted {
                if  self.multiplicationQuestion.checkAnswer(Int(self.answerText)!) {
                    self.feedbackLabel.text = "You Answered Correct"
                } else {
                    self.feedbackLabel.text = "You Answered Incorrect"
                }
            }
        }
    }
    
    @IBAction func multiplicationGameBtn(_ sender: Any) {
        gameStarted = true
        additionGameStarted = false
        multiplicationGameStarted = true
        
        self.multiplicationQuestion = MultiplicationQuestion()
        
        self.questionLabel.text = self.multiplicationQuestion.text
    }
    
    @IBAction func deleteBtn(_ sender: Any) {
        if gameStarted {
            answerText = ""
            self.answerLabel.text = "\(answerText)"
        }
    }
    
    @IBAction func btn1(_ sender: Any) {
        if gameStarted {
            answerText += "1"
            self.answerLabel.text = "\(answerText)"
        }
    }
    @IBAction func btn2(_ sender: Any) {
        if gameStarted {
            answerText += "2"
            self.answerLabel.text = "\(answerText)"
        }
    }
    @IBAction func btn3(_ sender: Any) {
        if gameStarted {
            answerText += "3"
            self.answerLabel.text = "\(answerText)"
        }
    }
    @IBAction func btn4(_ sender: Any) {
        if gameStarted {
            answerText += "4"
            self.answerLabel.text = "\(answerText)"
        }
    }
    @IBAction func btn5(_ sender: Any) {
        if gameStarted {
            answerText += "5"
            self.answerLabel.text = "\(answerText)"
        }
    }
    @IBAction func btn6(_ sender: Any) {
        if gameStarted {
            answerText += "6"
            self.answerLabel.text = "\(answerText)"
        }
    }
    @IBAction func btn7(_ sender: Any) {
        if gameStarted {
            answerText += "7"
            self.answerLabel.text = "\(answerText)"
        }
    }
    @IBAction func btn8(_ sender: Any) {
        if gameStarted {
            answerText += "8"
            self.answerLabel.text = "\(answerText)"
        }
    }
    @IBAction func btn9(_ sender: Any) {
        if gameStarted {
            answerText += "9"
            self.answerLabel.text = "\(answerText)"
        }
    }
    @IBAction func btn0(_ sender: Any) {
        if gameStarted {
            answerText += "0"
            self.answerLabel.text = "\(answerText)"
        }
    }
}

