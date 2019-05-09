//
//  LoginViewController.swift
//  Dementia App
//
//  Created by Austin Ramsey on 4/22/19.
//  Copyright © 2019 Austin Ramsey. All rights reserved.
//

import UIKit
import CoreData

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "QuestionSegue") {
            let nav = segue.destination as! UINavigationController
            let vc = nav.topViewController as! QuestionsViewController
            vc.nameUser = fNameStr
            vc.emailUser = emailStr
            vc.ageUser = String(ageNum)
        }
    }
    
    //Variables
    var fNameStr: String = ""
    var emailStr: String = ""
    var ageNum: Int = 0
    
    //IBOutlets
    @IBOutlet fileprivate var FirstNameField: UITextField!
    @IBOutlet fileprivate var EmailField: UITextField!
    @IBOutlet fileprivate var AgeField: UITextField!
    
    //IBActions
    @IBAction func ProceedButton(_ sender: UIButton) {
        
        fNameStr = FirstNameField.text!
        emailStr = EmailField.text!
        ageNum = Int(AgeField.text!)!
        
        let emailVerification = isValidEmail(testStr: emailStr)
        
        if FirstNameField.text?.isEmpty == true || EmailField.text?.isEmpty == true || AgeField.text?.isEmpty == true {
            print("sign up fields empty")
            
            self.FirstNameField.shake()
            self.EmailField.shake()
            self.AgeField.shake()
            AgeField.resignFirstResponder()
            
            let alert = UIAlertController(title: "Error", message: "Invalid Username or Password", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Continue", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        if ageNum < 18 {
            let alert = UIAlertController(title: "Invalid Age", message: "You must be 18 years or older to use this diagnosis tool.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        
        if emailVerification == false {
            self.EmailField.shake()
            EmailField.resignFirstResponder()
            
            let alert = UIAlertController(title: "Invalid Email", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        } else {
            performSegue(withIdentifier: "QuestionSegue", sender: self)
            
        }
        
    }
    
    //Functions
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    

}
