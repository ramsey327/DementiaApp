//
//  StartViewController.swift
//  Dementia App
//
//  Created by Austin Ramsey on 5/5/19.
//  Copyright © 2019 Austin Ramsey. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LearnMoreButton(_ sender: UIButton) {
        guard let requestUrl = NSURL(string: "https://www.betterhealth.vic.gov.au/health/conditionsandtreatments/dementia-early-signs") else {
            return
        }
        
        UIApplication.shared.open(requestUrl as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func ContinueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ContinueSegue", sender: self)
        
    }
    
}
