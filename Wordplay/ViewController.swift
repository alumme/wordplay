//
//  ViewController.swift
//  Wordplay
//
//  Created by Alex Lumme on 10/27/15.
//  Copyright © 2015 Alex Lumme All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var nounField: UITextField!
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
    {
        if(nounField.text != nil && nounField.text != "")
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
        let secondVC = segue.destinationViewController as! SecondViewController
        secondVC.noun = nounField.text!
        secondVC.title = nounField.text
    }
    
}