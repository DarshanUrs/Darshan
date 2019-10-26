//
//  ViewController.swift
//  Session3
//
//  Created by APPLE-21 on 26/10/19.
//  Copyright © 2019 APPLE-21. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 1
  
    
    @IBOutlet weak var FlipCountLabel: UILabel!
    

    @IBAction func touchHappyCard(_ sender: UIButton)
    {
        FlipCountLabel.text = "Flips:\(flipCount)"
        flipCount += 1
        flipCard(withEmoji:"😂", onButton: sender)
    }
    
    @IBAction func SecondTouchCard(_ sender: UIButton)
    {
        FlipCountLabel.text = "Flips:\(flipCount)"
        flipCount += 1
        flipCard(withEmoji:"🤡", onButton: sender)
    }
    
    func flipCard(withEmoji Emoji: String,onButton:UIButton)
    {
        print("flipcardwithEmoji:\(Emoji)")
        if onButton.currentTitle == Emoji
        {
            onButton.setTitle("", for: UIControl.State.normal)
            onButton.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        }
        else
        {
            onButton.setTitle(Emoji, for: UIControl.State.normal)
            onButton.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

