//
//  ViewController.swift
//  emoji
//
//  Created by Jeanne Breitenbach on 9/5/16.
//  Copyright © 2016 Newocracy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myFirstTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myFirstTableView.dataSource = self
        myFirstTableView.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
    
        let emoji1 = Emoji()
        emoji1.stringEmoji = "💃"
        emoji1.birthYear = 2010
        emoji1.category = "Dancers"
        emoji1.defintion = "Let's do the cha-cha!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "👮"
        emoji2.birthYear = 2011
        emoji2.category = "Law Enforcement"
        emoji2.defintion = "Freeze right there!"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💍"
        emoji3.birthYear = 2000
        emoji3.category = "Jewelry"
        emoji3.defintion = "Will you marry me?"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🐹"
        emoji4.birthYear = 2014
        emoji4.category = "Animals"
        emoji4.defintion = "This is a cute hamster!"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐪"
        emoji5.birthYear = 2010
        emoji5.category = "Animals"
        emoji5.defintion = "I will take you through the desert!"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐠"
        emoji6.birthYear = 2012
        emoji6.category = "Fish"
        emoji6.defintion = "This is a shiny fish!"
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5,emoji6]
    }

}

