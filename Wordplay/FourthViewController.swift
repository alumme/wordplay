//
//  FourthViewController.swift
//  Wordplay
//
//  Created by Alex Lumme on 10/27/15.
//  Copyright © 2015 Alex Lumme All rights reserved.
//

import UIKit

class FourthViewController: UIViewController
{
    @IBOutlet weak var label: UILabel!
    var noun = ""
    var verb = ""
    var adjective = ""

    override func viewDidLoad()
    {
        super.viewDidLoad()
        label.text = noun + " " + verb + " " + adjective
    }

}
