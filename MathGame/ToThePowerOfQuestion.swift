//
//  ToThePowerOfQuestion.swift
//  MathGame
//
//  Created by Angus on 14/1/2021.
//

import Foundation

struct ToThePowerOfQuestion {
  
  private let num1: Int
  private let num2: Int
  var answer: Int
  
  init() {
    num1 = Int.random(in: 1...100)
    num2 = Int.random(in: 1...5)
    
    answer = num1
    var count = num2
    while(count > 1){
        answer=num1*answer
        
        count-=1
    }
    
  }
}

extension ToThePowerOfQuestion: MathQuestion {
  func checkAnswer(_ answer: Int) -> Bool {
    return self.answer == answer
  }
  
  var text: String {
    get {
      "What is \(num1) to the power of \(num2)?"
    }
  }
}
