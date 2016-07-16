//
//  signUpViewController.swift
//  Ready Set Go
//
//  Created by Miriam Hendler on 7/16/16.
//  Copyright © 2016 Miriam Hendler. All rights reserved.
//

import UIKit

class signUpViewController: UIViewController {
    
    var isPatient = false
    var isFamilyMember = false
    var isDoctor = false

    @IBOutlet weak var patientImageBox: UIImageView!
    @IBOutlet weak var doctorImageBox: UIImageView!
    @IBOutlet weak var familyImageBox: UIImageView!
    @IBAction func patientButtonPressed(sender: AnyObject) {
        patientImageBox.hidden = false
        isPatient = true
        doctorImageBox.hidden = true
        familyImageBox.hidden = true
        
    }
    @IBAction func doctorButtonPressed(sender: AnyObject) {
        doctorImageBox.hidden = false
        patientImageBox.hidden = true
        familyImageBox.hidden = true
        
        isDoctor = true
    }
    @IBAction func familyButtonPressed(sender: AnyObject) {
        familyImageBox.hidden = false
        isFamilyMember = true
        patientImageBox.hidden = true
        doctorImageBox.hidden = true
    }
    @IBAction func signUpButtonPressed(sender: AnyObject) {
        if isPatient == true {
            self.performSegueWithIdentifier("patientPush", sender: self)
        } else if isFamilyMember == true {
           self.performSegueWithIdentifier("familyMemberPush", sender: self)
        } else {
             print("yo a doctor")
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "patientPush" {
            let destination = segue.destinationViewController as! patientViewController
            
        } else if segue.identifier == "familyMemberPush"{
            let destination = segue.destinationViewController as! familyMemberViewController
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        patientImageBox.hidden = true
        doctorImageBox.hidden = true
        familyImageBox.hidden = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
