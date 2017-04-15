//
//  ViewController.swift
//  DyeHygh
//
//  Created by Matt Jasaitis on 4/14/17.
//  Copyright © 2017 Jasaitis. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet var _email: UITextField!
    @IBOutlet var _password: UITextField!
    @IBOutlet var _login_button: UIButton!
    @IBOutlet var _register_button: UIButton!

    @IBAction func LoginButton(_ sender: Any) {
    }
    
    @IBAction func RegisterButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

