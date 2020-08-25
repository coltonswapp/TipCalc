//
//  MainViewController.swift
//  TipCalc35
//
//  Created by Colton Swapp on 8/24/20.
//  Copyright © 2020 Colton Swapp. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var billBeforeTipTextField: UITextField!
    @IBOutlet weak var customTipTextField: UITextField!
    @IBOutlet weak var calculatedTipTextField: UITextField!
    @IBOutlet weak var finalBillTextField: UITextField!
    
    
    @IBOutlet weak var tenPercentButton: TipButtons!
    @IBOutlet weak var fifteenPercentButton: TipButtons!
    @IBOutlet weak var twentyPercentButton: TipButtons!
    @IBOutlet weak var customTipButton: TipButtons!
    
    // MARK: - Properties
    var billBeforeTip: String = ""
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func tapGesture(_ sender: Any) {
        view.endEditing(true)
        
    }
    // MARK: - Actions
    @IBAction func tenPercentButtonTapped(_ sender: Any) {
        guard let bill = billBeforeTipTextField.text, !bill.isEmpty else { return }
        let billNum = Double(bill)
        let tip = billNum! * 0.10
        let totalBill = billNum! + tip
        calculatedTipTextField.text = String(format: "$%.2f", tip)
        finalBillTextField.text = String(format: "$%.2f", totalBill)
        
        tenPercentButton.backgroundColor = UIColor.customGreen
        fifteenPercentButton.backgroundColor = UIColor.darkBlue
        twentyPercentButton.backgroundColor = UIColor.darkBlue
        customTipButton.backgroundColor = UIColor.darkBlue
        
    }
    
    
    @IBAction func fifteenPercentButtonTapped(_ sender: Any) {
        guard let bill = billBeforeTipTextField.text, !bill.isEmpty else { return }
        let billNum = Double(bill)
        let tip = billNum! * 0.15
        let totalBill = billNum! + tip
        calculatedTipTextField.text = String(format: "$%.2f", tip)
        finalBillTextField.text = String(format: "$%.2f", totalBill)
        
        tenPercentButton.backgroundColor = UIColor.darkBlue
        fifteenPercentButton.backgroundColor = UIColor.customGreen
        twentyPercentButton.backgroundColor = UIColor.darkBlue
        customTipButton.backgroundColor = UIColor.darkBlue
    }
    
    
    @IBAction func twentyPercentButtonTapped(_ sender: Any) {
        guard let bill = billBeforeTipTextField.text, !bill.isEmpty else { return }
        let billNum = Double(bill)
        let tip = billNum! * 0.20
        let totalBill = billNum! + tip
        calculatedTipTextField.text = String(format: "$%.2f", tip)
        finalBillTextField.text = String(format: "$%.2f", totalBill)
        
        tenPercentButton.backgroundColor = UIColor.darkBlue
        fifteenPercentButton.backgroundColor = UIColor.darkBlue
        twentyPercentButton.backgroundColor = UIColor.customGreen
        customTipButton.backgroundColor = UIColor.darkBlue
    }
    
    
    @IBAction func customPercentButtonTapped(_ sender: Any) {
        guard let bill = billBeforeTipTextField.text, !bill.isEmpty,
            let customTip = customTipTextField.text, !customTip.isEmpty else { return }
        let billNum = Double(bill)
        let customTipNum = Double(customTip)
        let customTipNumAsPercent = customTipNum! / 100
        let tip = billNum! * customTipNumAsPercent
        let totalBill = billNum! + tip
        calculatedTipTextField.text = String(format: "$%.2f", tip)
        finalBillTextField.text = String(format: "$%.2f", totalBill)
        
        tenPercentButton.backgroundColor = UIColor.darkBlue
        fifteenPercentButton.backgroundColor = UIColor.darkBlue
        twentyPercentButton.backgroundColor = UIColor.darkBlue
        customTipButton.backgroundColor = UIColor.customGreen
    }
    
    
    
    
    // MARK: - Class Methods

}
