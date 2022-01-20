//
//  Question class.swift
//  Exam1
//
//  Created by munira almallki on 04/03/1443 AH.
//

import Foundation
class Question{
    let question: String
    let answers: [String]
    let correctAnswer: Int
init(question: String, answers: [String], correctAnswer: Int){
    self.question = question
    self.answers = answers
    self.correctAnswer = correctAnswer
}
}

