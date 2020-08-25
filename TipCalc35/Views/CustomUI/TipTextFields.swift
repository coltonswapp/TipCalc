//
//  TipTextFields.swift
//  TipCalc35
//
//  Created by Colton Swapp on 8/24/20.
//  Copyright © 2020 Colton Swapp. All rights reserved.
//

import UIKit

class TipTextFields: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }
    
    func updateFontTo(font: String) {
        guard let size = self.font?.pointSize else { return }
        self.font = UIFont(name: font, size: size)
    }
    
    func updatePlaceHolder() {
        let currentPlaceHolderText = self.placeholder
        self.attributedPlaceholder = NSAttributedString(string: currentPlaceHolderText ?? "", attributes: [
            NSAttributedString.Key.foregroundColor : UIColor.lightGray,
            NSAttributedString.Key.font : UIFont(name: "Helvetica-Bold", size: 16)
        ])
    }
    
    func setupUI() {
        self.backgroundColor = UIColor.darkBlue
        self.addCornerRadius(10)
        self.layer.masksToBounds = true
        self.textColor = .white
        updateFontTo(font: "Helvetica-Bold")
        updatePlaceHolder()
    }

}
