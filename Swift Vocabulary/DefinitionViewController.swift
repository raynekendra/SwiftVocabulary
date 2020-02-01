//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Kendra McVay on 1/29/20.
//  Copyright © 2020 Kendra McVay. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    //our self-explanatory DefinitionVC class on our VC.
    
    var vocabWord: VocabularyWord?
    
    //optional vocabWord, has the option to be nil or contain a value
    
    @IBOutlet var wordLabel: UILabel!
    @IBOutlet var wordDefinition: UITextView!
    
    //the outlets are plugged in to the Label and TextView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view. ...
        updatedViews()
    }
    
    //still fuzzy on this whole viewDidLoad thing. I get what it's for but what exactly is going on under the hood? I need to know the why of things! lol
    
    func updatedViews() {
        if let wordTBD = vocabWord {
             wordLabel.text = wordTBD.word
             wordDefinition.text = wordTBD.definition
        }
    }
    
    // this function unwraps the optional vocabWord so I can extract whatever word and defintion's text from my vocabWord property, that was created without an initial value in the VocabWord struct... but then later I passed in an array of type VocabWords in WordsTableTableVC, and then it puts whatever word/definition in the wordLabel and wordDefinition's UILabel/Textview.

    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
