//
//  MultiplicationQuestion.swift
//  MathGame
//
//  Created by Angus on 14/1/2021.
//

import Foundation

struct MultiplicationQuestion {
  
  private let num1: Int
  private let num2: Int
  let answer: Int
  
  init() {
    num1 = Int.random(in: 1...100)
    num2 = Int.random(in: 1...100)
    answer = num1*num2
  }
}

extension MultiplicationQuestion: MathQuestion {
  func checkAnswer(_ answer: Int) -> Bool {
    return self.answer == answer
  }
  
  var text: String {
    get {
      "What is \(num1) * \(num2)?"
    }
  }
}
