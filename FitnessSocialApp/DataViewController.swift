//
//  DataViewController.swift
//  FitnessSocialApp
//
//  Created by Tommy Choe on 12/7/15.
//  Copyright © 2015 Tommy Choe. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    var titleObject: String = ""
    var backgroundObjectColor: UIColor = UIColor.cyanColor()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        titleLabel.text = titleObject
        backgroundImageView.backgroundColor = backgroundObjectColor
    }

    @IBAction func loginUser(sender: UIButton) {
        print("Login please!")
        performSegueWithIdentifier("loginUserSegue", sender: sender) 
    }
    
    @IBAction func registerNewUser(sender: UIButton) {
        print("Register please!")
        performSegueWithIdentifier("registerUserSegue", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginUserSegue" {
            if let loginViewController = segue.destinationViewController as? LoginViewController{
                loginViewController.titleLabelString = "Login please!"
            }
        }
        
        if segue.identifier == "registerUserSegue" {
        }
    }
}

