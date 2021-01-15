//
//  AdditionQuestion.swift
//  MathGame
//
//  Created by Sam Meech-Ward on 2020-04-26.
//  Copyright © 2020 Sam Meech-Ward. All rights reserved.
//

import Foundation

struct AdditionQuestion {
  
  private let num1: Int
  private let num2: Int
  let answer: Int
  
  init() {
    num1 = Int.random(in: 1...100)
    num2 = Int.random(in: 1...100)
    answer = num1+num2
  }
}

extension AdditionQuestion: MathQuestion {
  func checkAnswer(_ answer: Int) -> Bool {
    return self.answer == answer
  }
  
  var text: String {
    get {
      "What is \(num1) + \(num2)?"
    }
  }
}
