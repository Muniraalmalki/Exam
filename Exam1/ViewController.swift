//
//  ViewController.swift
//  Exam1
//
//  Created by munira almallki on 03/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var choice4: UIButton!
    
  
  
    // array for question and answer and correct answer
    
    var questions: [Question] = [
        Question(question: "Which one is the result of the output given by a computer?", answers: ["Data" , "Istruction" , "Information" , "Excursion" ], correctAnswer: 2),
        Question(question: "Which one of these also known as read/write memory ?", answers: ["ROM","RAM","DVD","Hard Disk"], correctAnswer: 1),
        Question(question: "Which one of these stores more data than a DVD ?", answers: ["CD Rom","Floppy","Blue Ray Disk","Red Ray Disk"] , correctAnswer: 2),
        Question(question: "Eight Bits make up a", answers: ["byte","megabyte","kilobyte","None"],correctAnswer: 0),]
  
    var currentQuestion: Question?
    var currentQuestionPos = 0

    var score = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestion = questions[currentQuestionPos]
        questionLabel.text = currentQuestion?.question
        choice1.setTitle(currentQuestion?.answers[0], for: .normal)
        choice2.setTitle(currentQuestion?.answers[1], for: .normal)
        choice3.setTitle(currentQuestion?.answers[2], for: .normal)
        choice4.setTitle(currentQuestion?.answers[3], for: .normal)
     
    }

        // choice1 button
       @IBAction func choice1(_ sender: Any) {
  
           let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondID") as! secondViewController
        if 0 == currentQuestion?.correctAnswer{
            score += 1
            secondVC.scoreText = "Score: \(score)"
            secondVC.correctorIncorrectText = "CORRECT"
            secondVC.view.backgroundColor = .blue
            
            
        }else{
            secondVC.scoreText = "Score: \(score)"
            secondVC.correctorIncorrectText = "Incorrect"
            secondVC.view.backgroundColor = .black
        }
        self.present(secondVC, animated: true, completion: nil)
        updateUI()
    }
    // choice2 button
      @IBAction func choice2(_ sender: Any) {
         
         
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondID") as! secondViewController
        if 1 == currentQuestion?.correctAnswer{
            score += 1
            secondVC.scoreText = "Score: \(score)"
            secondVC.correctorIncorrectText = "CORRECT"
            secondVC.view.backgroundColor = .blue
            
        }else{
            secondVC.scoreText = "Score: \(score)"
            secondVC.correctorIncorrectText = "Incorrect"
            secondVC.view.backgroundColor = .black
        }
        self.present(secondVC, animated: true, completion: nil)
        updateUI()
        
        
    }
    // choice3 buuton
    @IBAction func choice3(_ sender: Any) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondID") as! secondViewController
        if 2 == currentQuestion?.correctAnswer{
            score += 1
            secondVC.scoreText = "Score: \(score)"
            secondVC.correctorIncorrectText = "CORRECT"
            secondVC.view.backgroundColor = .blue
            
        }else{
            secondVC.scoreText = "Score: \(score)"
            secondVC.correctorIncorrectText = "Incorrect"
            secondVC.view.backgroundColor = .black
        }
        self.present(secondVC, animated: true, completion: nil)
        updateUI()
            
        
    }
    // choice4 button
    @IBAction func choice4(_ sender: Any) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondID") as! secondViewController
        if 3 == currentQuestion?.correctAnswer{
            score += 1
            secondVC.scoreText = "Score: \(score)"
            secondVC.correctorIncorrectText = "CORRECT"
            secondVC.view.backgroundColor = .blue
            
           
            
        }else {
            secondVC.scoreText = "Score: \(score)"
            secondVC.correctorIncorrectText = "Incorrect"
                secondVC.view.backgroundColor = .black
        }
        self.present(secondVC, animated: true, completion: nil)
        updateUI()
    }
    func updateUI(){
        
        if currentQuestionPos < 3{
            currentQuestionPos += 1
            currentQuestion = questions[currentQuestionPos]
            questionLabel.text = currentQuestion?.question
            choice1.setTitle(currentQuestion?.answers[0], for: .normal)
            choice2.setTitle(currentQuestion?.answers[1], for: .normal)
            choice3.setTitle(currentQuestion?.answers[2], for: .normal)
            choice4.setTitle(currentQuestion?.answers[3], for: .normal)
       
            
        }
        
    }
    
}
    






