//
//  SecondViewController.swift
//  Wordplay
//
//  Created by Alex Lumme on 11/5/15.
//  Copyright © 2015 Alex Lumme All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{
    @IBOutlet weak var verbField: UITextField!
    
    var noun = ""

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
    {
        if(verbField.text != nil && verbField.text != "")
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
        let thirdVC = segue.destinationViewController as! ThirdViewController
        thirdVC.noun = noun
        thirdVC.verb = verbField.text!
        thirdVC.title = noun + " " + verbField.text!
    }

}
