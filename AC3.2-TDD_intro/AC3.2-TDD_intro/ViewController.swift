//
//  ViewController.swift
//  AC3.2-TDD_intro
//
//  Created by Annie Tung on 3/28/17.
//  Copyright © 2017 Annie Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberVowels(_ str: String) -> Int {
        
        let vowels: [Character] = ["a","A","e","E","i","I","o","O","u","U"]
        //        var vowelCounter: Int = 0
        
        /*let result = str.characters.reduce(0) { (result, char) -> Int in
         if vowels.contains(char) {
         return result + 1
         }
         return result
         }*/
        
        return str.characters.reduce(0) {
            $0 + (vowels.contains($1) ? 1 : 0)
        }
    }
    
    func capitalizeFirstLetter(_ str: String) -> String {
        
        let words = str.components(separatedBy: " ")
        var capitalizedStr = ""
        
        for word in words {
            capitalizedStr += (word.capitalized + " ")
        }
        capitalizedStr = capitalizedStr.trimmingCharacters(in: CharacterSet(charactersIn: " "))
        return capitalizedStr
    }
    
    
}

