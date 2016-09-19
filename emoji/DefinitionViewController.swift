//
//  DefinitionViewController.swift
//  emoji
//
//  Created by Jeanne Breitenbach on 9/8/16.
//  Copyright © 2016 Newocracy. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = Emoji()
    
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var categoryLable: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
        override func viewDidLoad() {
        super.viewDidLoad()
    
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "Origination Date: \(emoji.birthYear)"
        categoryLable.text  = "Category: \(emoji.category)"
        definitionLabel.text = "Defintion: \(emoji.defintion)"
        
                // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
