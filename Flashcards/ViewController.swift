//
//  ViewController.swift
//  Flashcards
//
//  Created by patricia kinsumbya on 20/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FrontLabel: UILabel!
    @IBOutlet weak var BackLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
    @IBAction func tapgesturecommand(_ sender: Any) {
        // FrontLabel.isHidden = true
        if FrontLabel.isHidden {
            FrontLabel.isHidden = false
        } else {
            FrontLabel.isHidden = true
        }
    }
    
}

