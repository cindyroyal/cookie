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
    var token2:String = ""
    
    @IBOutlet weak var myText: UITextField!
    
    @IBOutlet weak var myText2: UITextField!
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func myButton(_ sender: Any) {
        token = myText.text!
        token2 = myText2.text!
        let defaults = UserDefaults.standard
        
        defaults.set(token, forKey: "MyKey")
        defaults.set(token2, forKey: "MyKey2")
        myLabel.text = "Hi, \(token) \(token2)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
       
        var token = defaults.string(forKey: "MyKey")!
        var token2 = defaults.string(forKey: "MyKey2")!
     myLabel.text = "Welcome Back, \(token) \(token2)"
        // Do any additional setup after loading the view.
    }


}

