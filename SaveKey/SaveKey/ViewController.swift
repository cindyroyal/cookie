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
    
    //initialized as Int
    var token2:Int? = 0
    
    @IBOutlet weak var myText: UITextField!
    
    @IBOutlet weak var myText2: UITextField!
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func myButton(_ sender: Any) {
        token = myText.text!
        //cast 2nd textfield as int
        token2 = Int(myText2.text!)
        let defaults = UserDefaults.standard
        
        defaults.set(token, forKey: "MyKey")
        defaults.set(token2, forKey: "MyKey2")
        //had to add the ! to remove optional, tested that it was an Int by adding 10 to it below
        myLabel.text = "Hi, \(token) \(token2! + 10)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
       
        var token = defaults.string(forKey: "MyKey")!
        var token2 = defaults.integer(forKey: "MyKey2")
        
        //this one also adds 10 to test that it is actually an Int on the load
        myLabel.text = "Welcome Back, \(token) \(token2 + 10)"
        // Do any additional setup after loading the view.
    }


}

