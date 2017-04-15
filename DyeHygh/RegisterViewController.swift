//
//  RegisterViewController.swift
//  DyeHygh
//
//  Created by Matt Jasaitis on 4/15/17.
//  Copyright © 2017 Jasaitis. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passText: UITextField!
    let rootRef = FIRDatabase.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func didRegister(_ sender: Any) {
        FIRAuth.auth()?.createUser(withEmail: emailText.text!, password: passText.text!) { (user, error) in
            
            let alert = UIAlertController(title: "Error Creating Account",
                                          message: error?.localizedDescription,
                                          preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Back", style: .default, handler: {
                action in alert.dismiss(animated: true, completion: nil)}))
            
            if ((error) != nil) {
                self.present(alert, animated: true, completion: nil); return
            } else {
                
                
                let userInfo : Player = Player()
                userInfo.setName(name: self.nameText.text!)
                
                
                let userRef = self.rootRef.child("Users").child((FIRAuth.auth()?.currentUser!.uid)!)
                //let userRef = self.rootRef.child("Users").child(email!)
                
                userRef.setValue(userInfo)
            }

        }

    }
    
}
