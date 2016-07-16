//
//  ViewController.swift
//  Ready Set Go
//
//  Created by Miriam Hendler on 7/16/16.
//  Copyright © 2016 Miriam Hendler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func signUpButtonPressed(sender: AnyObject) {
        
        self.performSegueWithIdentifier("signUpPush", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "signUpPush" {
            let destination = segue.destinationViewController as! signUpViewController
            print("going to sign up")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

