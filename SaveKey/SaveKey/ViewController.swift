//
//  ViewController.swift
//  SaveKey
//
//  Created by Royal, Cindy L on 2/25/20.
//  Copyright © 2020 Royal, Cindy L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var token:String = ""
    
    @IBOutlet weak var myText: UITextField!
    
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func myButton(_ sender: Any) {
        token = myText.text!
        let defaults = UserDefaults.standard
        defaults.set(token, forKey: "MyKey")
        myLabel.text = "Hi, \(token)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        var token = defaults.string(forKey: "MyKey")!
     myLabel.text = "Welcome Back, \(token)"
        // Do any additional setup after loading the view.
    }


}

