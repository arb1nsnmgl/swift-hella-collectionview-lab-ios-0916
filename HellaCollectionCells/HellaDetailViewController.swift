//
//  HellaDetailViewController.swift
//  HellaCollectionCells
//
//  Created by Arvin San Miguel on 10/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {

    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var number: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let number = number {
            numberLabel.text = String(number)
            self.view.backgroundColor = number.evaluate()
        }
        
        
    }

   

}
