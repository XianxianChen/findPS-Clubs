//
//  PageThreeViewController.swift
//  findPSFit
//
//  Created by C4Q on 4/17/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class PageThreeViewController: UIViewController {

    
    @IBOutlet weak var homeLabel: UILabel!
    
    @IBOutlet weak var buttonOne: UIButton!
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillLayoutSubviews() {
        self.homeLabel.layer.cornerRadius = 50
        homeLabel.layer.masksToBounds = true
        buttonOne.layer.cornerRadius = 75
        buttonOne.layer.masksToBounds = true
        buttonTwo.layer.cornerRadius = 75
            buttonTwo.layer.masksToBounds = true
       
        button3.layer.cornerRadius = 75
            button3.layer.masksToBounds = true
        button4.layer.cornerRadius = 75
        
            button4.layer.masksToBounds = true
    }


}
