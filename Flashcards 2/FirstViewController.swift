//
//  FirstViewController.swift
//  Flashcards
//
//  Created by patricia kinsumbya on 13/03/2021.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let FirstViewController = segue.destination as! UIFirstVewController
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let CreationViewController = UIFirstViewController.topViewController as! CreationViewController
        
        CreationViewController.updateflashcard = self
        
    }
    
    
    @IBOutlet weak var FrontLabel: UILabel!
    @IBOutlet weak var BackLabel: UILabel!
    
    
    
    
  
    @IBAction func tapgesturecommand(_ sender: Any) {
        // FrontLabel.isHidden = true
        if FrontLabel.isHidden {
            FrontLabel.isHidden = false
        } else {
            FrontLabel.isHidden = true
        }
    }
    
    func updateflashcard(question: String, answer: String) {
        
    }

}
