//
//  CreationViewController.swift
//  Flashcards
//
//  Created by patricia kinsumbya on 06/03/2021.
//

import UIKit

class CreationViewController: UIViewController {

    
    @IBAction func didTaponCancel(_ sender: Any) { dismiss(animated: true, completion: nil)
    }
    
    var flashcardsController: FirstViewController!
        // need to update named of cuntions correctly.
    @IBOutlet weak var questionTextField: UITextField!
    
    @IBOutlet weak var answerTextField: UITextField!
    
<<<<<<< HEAD
=======
    var initialQuestion: String?
    var initialAnswer: String?
    
>>>>>>> 703b8786a43fb351713d6e4e688b07bd4d4deb7b
    @IBAction func didTaponDone(_ sender: Any) {
        let questionText = questionTextField.text
        
        let answerText = answerTextField.text
        
<<<<<<< HEAD
        flashcardsController.updateflashcard(question: questionText!, answer: answerText!)
       
        dismiss(animated: true)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

=======
        //flashcardsController.updateflashcard(question: questionText!, answer: answerText!)
        flashcardsController.editFlashCardTwo(card: flashcardsController.editableFlashCard!, question: questionText!, answer: answerText!)
       
        dismiss(animated: true)
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionTextField.text = initialQuestion
        answerTextField.text = initialAnswer
>>>>>>> 703b8786a43fb351713d6e4e688b07bd4d4deb7b
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
<<<<<<< HEAD
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
=======
        // Pass the selected object to the new view controller.
    }
    
     */
}


//identifiable, equatable and more....
>>>>>>> 703b8786a43fb351713d6e4e688b07bd4d4deb7b
