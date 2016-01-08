//
//  ThirdViewController.swift
//  Wordplay
//
//  Created by Alex Lumme on 10/27/15.
//  Copyright © 2015 Alex Lumme All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController
{
    @IBOutlet weak var adjectiveField: UITextField!
    var noun = ""
    var verb = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
    {
        if(adjectiveField.text != nil && adjectiveField.text != "")
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let fourthVC = segue.destinationViewController as! FourthViewController
        fourthVC
        fourthVC.noun = noun
        fourthVC.verb = verb
        fourthVC.adjective = adjectiveField.text!
        fourthVC.title = noun + " " + verb + " " + adjectiveField.text!
    }
    
}
