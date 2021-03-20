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
    
    var initialQuestion: String?
    var initialAnswer: String?
    
    @IBAction func didTaponDone(_ sender: Any) {
        let questionText = questionTextField.text
        
        let answerText = answerTextField.text
        
        //flashcardsController.updateflashcard(question: questionText!, answer: answerText!)
        flashcardsController.editFlashCardTwo(card: flashcardsController.editableFlashCard!, question: questionText!, answer: answerText!)
       
        dismiss(animated: true)
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionTextField.text = initialQuestion
        answerTextField.text = initialAnswer
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Pass the selected object to the new view controller.
    }
    
     */
}


//identifiable, equatable and more....
