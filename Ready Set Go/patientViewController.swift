//
//  patientViewController.swift
//  Ready Set Go
//
//  Created by Miriam Hendler on 7/16/16.
//  Copyright © 2016 Miriam Hendler. All rights reserved.
//

import UIKit
import MessageUI

class patientViewController: UIViewController, MFMessageComposeViewControllerDelegate {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func helpButtonPressed(sender: UIButton) {
        if (MFMessageComposeViewController.canSendText()) {
            let controller = MFMessageComposeViewController()
            controller.body = "Help! I am at 867 3rd St San Francisco CA United States"
            controller.recipients = ["8458257810"]
            controller.messageComposeDelegate = self
            self.presentViewController(controller, animated: true, completion: nil)
        }
    }
    
    func messageComposeViewController(controller: MFMessageComposeViewController!, didFinishWithResult result: MessageComposeResult) {
        //... handle sms screen actions
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
    }
}
