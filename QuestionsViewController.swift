//
//  QuestonsViewController.swift
//  Dementia App
//
//  Created by Austin Ramsey on 4/22/19.
//  Copyright © 2019 Austin Ramsey. All rights reserved.
//

import UIKit
import CoreData

class QuestionsViewController: UIViewController {
    
    //Variables
    var nameUser = String()
    var emailUser = String()
    var ageUser = String()
    var nameAtt = NSMutableAttributedString()
    var emailAtt = NSMutableAttributedString()
    var ageAtt = NSMutableAttributedString()
    var q1Bool = Bool()
    var q2Bool = Bool()
    var q3Bool = Bool()
    var q4Bool = Bool()
    var q5Bool = Bool()
    var q6Bool = Bool()
    var q7Bool = Bool()
    var q8Bool = Bool()
    var q9Bool = Bool()
    var q10Bool = Bool()
    
    //counting variable
    var boolCount = 0
    
    //IBOutlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameAtt = NSMutableAttributedString(
            string: "Name: " + nameUser,
            attributes: [NSAttributedString.Key.font: UIFont(
                name: "Arial",
                size: 17.0)!])
        nameAtt.addAttribute (NSAttributedString.Key.font,
                              value: UIFont(
                                name: "Arial Rounded MT Bold",
                                size: 18.0)!,
                             range: NSRange(
                                location: 0,
                                length: 6))
        nameLabel?.attributedText = nameAtt
        
        emailAtt = NSMutableAttributedString(
            string: "Email: " + emailUser,
            attributes: [NSAttributedString.Key.font: UIFont(
                name: "Arial",
                size: 17.0)!])
        emailAtt.addAttribute (NSAttributedString.Key.font,
                              value: UIFont(
                                name: "Arial Rounded MT Bold",
                                size: 18.0)!,
                              range: NSRange(
                                location: 0,
                                length: 7))
        emailLabel?.attributedText = emailAtt
        
        ageAtt = NSMutableAttributedString(
            string: "Age: " + ageUser,
            attributes: [NSAttributedString.Key.font: UIFont(
                name: "Arial",
                size: 17.0)!])
        ageAtt.addAttribute (NSAttributedString.Key.font,
                               value: UIFont(
                                name: "Arial Rounded MT Bold",
                                size: 18.0)!,
                               range: NSRange(
                                location: 0,
                                length: 5))
        ageLabel?.attributedText = ageAtt
    }
    
    //IBActions
    
    @IBAction func q1SegCon(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            boolCount += 1
        case 1:
            boolCount += 0
        default:
            let alert = UIAlertController(title: "Please Select Choice", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func q2SegCon(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            boolCount += 1
        case 1:
            boolCount += 0
        default:
            let alert = UIAlertController(title: "Please Select Choice", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func q3SegCon(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            boolCount += 1
        case 1:
            boolCount += 0
        default:
            let alert = UIAlertController(title: "Please Select Choice", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func q4SegCon(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            boolCount += 1
        case 1:
            boolCount += 0
        default:
            let alert = UIAlertController(title: "Please Select Choice", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func q5SegCon(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            boolCount += 0
        case 1:
            boolCount += 1
        default:
            let alert = UIAlertController(title: "Please Select Choice", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func q6SegCon(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            boolCount += 1
        case 1:
            boolCount += 0
        default:
            let alert = UIAlertController(title: "Please Select Choice", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func q7SegCon(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            boolCount += 1
        case 1:
            boolCount += 0
        default:
            let alert = UIAlertController(title: "Please Select Choice", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func q8SegCon(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            boolCount += 1
        case 1:
            boolCount += 0
        default:
            let alert = UIAlertController(title: "Please Select Choice", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func q9SegCon(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            boolCount += 1
        case 1:
            boolCount += 0
        default:
            let alert = UIAlertController(title: "Please Select Choice", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func q10SegCon(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            boolCount += 1
        case 1:
            boolCount += 0
        default:
            let alert = UIAlertController(title: "Please Select Choice", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Cancel", message: "Are you sure you want to cancel?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .cancel, handler: {(alert: UIAlertAction!) in
            self.performSegue(withIdentifier: "CancelSegue", sender: self)
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func submitButton(_ sender: UIBarButtonItem) {
            
        let boolPercent = boolCount*10
        print(boolPercent)
        
        if boolCount >= 0 && boolCount <= 3 {
            let alertView = UIAlertController(title: "You Do Not Have Dementia.", message: "\nYou have a \(boolPercent)% of having dementia.\n\nREMINDER: This is NOT an official diagnosis tool.\n\nTo learn more about dementia, click the 'Learn More' button below.", preferredStyle: .alert)
            alertView.addAction(UIAlertAction(title: "Learn More", style: .default, handler: learnMoreHandler(alert:)))
            alertView.addAction(UIAlertAction(title: "Finish", style: .cancel, handler: dismissHandler(alert:)))
            self.present(alertView, animated: true, completion: nil)
            
        } else if boolCount >= 4 && boolCount <= 6 {
            let alertView = UIAlertController(title: "You Might Have Dementia.", message: "\nYou have a \(boolPercent)% of having dementia.\n\nYou may want to consult your doctor on the next visit.\n\nREMINDER: This is NOT an official diagnosis tool.\n\nTo learn more about dementia, click the 'Learn More' button below.", preferredStyle: .alert)
            alertView.addAction(UIAlertAction(title: "Learn More", style: .default, handler: learnMoreHandler(alert:)))
            alertView.addAction(UIAlertAction(title: "Finish", style: .cancel, handler: dismissHandler(alert:)))
            self.present(alertView, animated: true, completion: nil)
            
        } else if boolCount >= 7 && boolCount <= 10 {
            let alertView = UIAlertController(title: "You Probably Have Dementia.", message: "\nYou have a \(boolPercent)% of having dementia.\n\nYou may want to consult your doctor as soon as possible.\n\nREMINDER: This is NOT an official diagnosis tool.\n\nTo learn more about dementia, click the 'Learn More' button below.", preferredStyle: .alert)
            alertView.addAction(UIAlertAction(title: "Learn More", style: .default, handler: learnMoreHandler(alert:)))
            alertView.addAction(UIAlertAction(title: "Finish", style: .cancel, handler: dismissHandler(alert:)))
            self.present(alertView, animated: true, completion: nil)
            
        } else {
            let alertView = UIAlertController(title: "There is a problem.", message: "Please restart the application.", preferredStyle: .alert)
            alertView.addAction(UIAlertAction(title: "Continue", style: .cancel, handler: nil))
            self.present(alertView, animated: true, completion: nil)
            
        }
        
    }
    
    //Functions
    func dismissHandler(alert: UIAlertAction!) {
        performSegue(withIdentifier: "FinishSegue", sender: self)
        
    }
    
    func learnMoreHandler(alert: UIAlertAction!) {
        guard let requestUrl = NSURL(string: "https://www.betterhealth.vic.gov.au/health/conditionsandtreatments/dementia-early-signs") else {
            return
        }
        
        UIApplication.shared.open(requestUrl as URL, options: [:], completionHandler: nil)
        
        performSegue(withIdentifier: "FinishSegue", sender: self)
        
    }
    
}
