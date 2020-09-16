//
//  EqualCupViewController.swift
//  Eat Me
//
//  Created by Brianna Babcock on 9/15/20.
//  Copyright © 2020 Brianna Babcock. All rights reserved.
//

import UIKit

class EqualCupViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let amounts = amounts {
            updateUI2(amounts: amounts)
        }
    }
    
    var amounts: Amount?
    
    func updateUI2(amounts: Amount) {
        self.amounts = amounts
        label1.text = amounts.equalServingAmount[.amountLabel1]?[AmountMeasure.quantity] as? String
        label2.text = amounts.equalServingAmount[.amountLabel2]?[AmountMeasure.quantity] as? String
        label3.text = amounts.equalServingAmount[.amountLabel3]?[AmountMeasure.quantity] as? String
        label4.text = amounts.equalServingAmount[.amountLabel4]?[AmountMeasure.quantity] as? String
        label5.text = amounts.equalServingAmount[.amountLabel5]?[AmountMeasure.quantity] as? String
        label6.text = amounts.equalServingAmount[.amountLabel6]?[AmountMeasure.quantity] as? String
        mainLabel.text = amounts.equalServingAmount[.labelAmount]?[AmountMeasure.quantity] as? String
    }
}
