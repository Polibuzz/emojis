//
//  DefinitionViewController.swift
//  emoji
//
//  Created by Jeanne Breitenbach on 9/8/16.
//  Copyright © 2016 Newocracy. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "NO EMOJI"
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
        override func viewDidLoad() {
        super.viewDidLoad()
    
        emojiLabel.text = emoji
        
            if emoji == "🐹" {
                definitionLabel.text = "This is a cute hamster."
            }
            if emoji == "🐪" {
                definitionLabel.text = "This camel's ready for the desert"
            }
            if emoji == "🐠" {
                definitionLabel.text = "A beautiful fish!"
            }
            if emoji == "👮" {
                definitionLabel.text = "Freeze right there!"
            }
            if emoji == "💍" {
                definitionLabel.text = "Will you marry me?"
            }
            if emoji == "💃" {
                definitionLabel.text = "Let's do the cha cha!"
            }
            
        
                // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
