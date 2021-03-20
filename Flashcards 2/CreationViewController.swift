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
    
    @IBAction func didTaponDone(_ sender: Any) {
        let questionText = questionTextField.text
        
        let answerText = answerTextField.text
        
        flashcardsController.updateflashcard(question: questionText!, answer: answerText!)
       
        dismiss(animated: true)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
