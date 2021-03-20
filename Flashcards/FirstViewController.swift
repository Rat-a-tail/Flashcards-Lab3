//
//  FirstViewController.swift
//  Flashcards
//
//  Created by patricia kinsumbya on 13/03/2021.
//

import UIKit
struct Flashcard {
    var question: String
    var answer: String
}

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        readSavedFlashcards()
        if flashcards.count == 0 {
            self.updateflashcard(question: "What is the capital of Uganda", answer: "Kampala")
            // Do any additional setup after loading the view.
        }
        else {
            updateLabels()
            updateNextPrevButtons()
        }
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let FirstViewController = segue.destination as! UINavigationController
        
        let CreationViewController = FirstViewController.topViewController as! CreationViewController
        
        CreationViewController.flashcardsController = self
        CreationViewController.initialQuestion = FrontLabel.text
        CreationViewController.initialAnswer = BackLabel.text
        if segue.identifier == "EditSegue" {
            CreationViewController.initialQuestion = FrontLabel.text
            CreationViewController.initialAnswer = BackLabel.text
        }
    }
    
    @IBOutlet weak var FrontLabel: UILabel!
    @IBOutlet weak var BackLabel: UILabel!
    
    @IBAction func didtapOnPrev(_ sender: Any) {
        currentIndex = currentIndex - 1
        updateLabels()
        updateNextPrevButtons()
    }
    
    @IBOutlet weak var prevButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    var flashcards = [Flashcard] ()
    var currentIndex = 0

    @IBAction func didtapOnNext(_ sender: Any) {
        currentIndex = currentIndex + 1 // error likely to be here
        updateLabels()
        updateNextPrevButtons()
        
    }
    
    @IBAction func tapgesturecommand(_ sender: Any) {
        // FrontLabel.isHidden = true
        if FrontLabel.isHidden {
            FrontLabel.isHidden = false
        } else {
            FrontLabel.isHidden = true
        }
    }
    
    func updateLabels () {
        let currentFlashcard = flashcards [currentIndex]
        
        self.FrontLabel.text = currentFlashcard.question
        self.BackLabel.text = currentFlashcard.answer

    }

    func updateNextPrevButtons() {
    if currentIndex == flashcards.count - 1 {
            nextButton.isEnabled = false
        }
    else {
        nextButton.isEnabled = true
        }
        
    if currentIndex == 0    {
            prevButton.isEnabled = false
        }
    else {
            prevButton.isEnabled = true
        }
    }
    

    func saveAllFlashcardsToDisk() {
        
        //UserDefaults.standard.setValue(flashcards, forKey: "flashcards")
        print("Flashcards saved to userdefaults")
        
        let dictionaryArray = flashcards.map { (dictionaryArray) -> [String: String] in
            return ["question": dictionaryArray.question, "answer": dictionaryArray.answer]
            }
        UserDefaults.standard.setValue(dictionaryArray, forKey: "flashcards")
        }
    
    func readSavedFlashcards() {
        //let dictionaryArray = UserDefaults.standard.setValue(flashcards, forKey: "flashcards")
        
        if let dictionaryArray = UserDefaults.standard.array( forKey: "flashcards") as?  [[String: String]]{
            let savedCards = dictionaryArray.map { dictionary  -> Flashcard in
                return Flashcard(question: dictionary["question"]!, answer: dictionary["answer"]!)
            }
            flashcards.append(contentsOf: savedCards)
            print(flashcards)
        }
    }
    
    
    func updateflashcard(question: String, answer: String) {
        let flashcard = Flashcard(question: question, answer: answer)
        
        flashcards.append(flashcard)
        print( "We now have \(flashcards.count) flashcards")
        
        currentIndex = flashcards.count - 1
        print("Our current index is \(currentIndex) " )
        
        self.FrontLabel.text = flashcard.question
        self.BackLabel.text = flashcard.answer
        
        saveAllFlashcardsToDisk()
        updateNextPrevButtons()
        updateLabels()
    }
}
