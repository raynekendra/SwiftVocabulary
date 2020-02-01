//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Kendra McVay on 1/29/20.
//  Copyright © 2020 Kendra McVay. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after being created."), VocabularyWord(word: "Constant", definition: "A named value used to store information. Constants refer to fixed values that a program may not alter during its execution."), VocabularyWord(word: "Function", definition: "A named section of a code that, when called, performs a specific, defined task, and returns a value.")]
    
    //  have all of the words here, so when the user clicks on a word, it's going to bring them to the definition of the word through the show definition segue
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }
    
    //puts in as many rows as there are vocabWords
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let someVocabWords = vocabWords[indexPath.row]
        cell.textLabel?.text = someVocabWords.word
        
        //this just shows the words available in the app that we can click on to preview their definitions.
        
        return cell
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let indexPath = tableView.indexPathForSelectedRow, let definitionDetailVC = segue.destination as? DefinitionViewController {
                let word = vocabWords[indexPath.row]
                definitionDetailVC.vocabWord = word
            }
        }
    }
    
}

//saying is the segue's identifier is == to the ShowDefinitionSegue, for whatever word the user clicked on, let the definition of that word be the "destination". I'm still confused on downcasting and the remaining bits. I really got that part from another student helping me.. my brain is in a scramble looking at that and trying to make sense of it.
