//
//  secondViewController.swift
//  Exam1
//
//  Created by munira almallki on 04/03/1443 AH.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var correctOrIncorrect: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var scoreText : String?
    var correctorIncorrectText: String?
    var result = ""
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = scoreText
        correctOrIncorrect.text = correctorIncorrectText
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.dismiss(animated: true, completion: nil)
        }

        // Do any additional setup after loading the view.
    }
    

   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
