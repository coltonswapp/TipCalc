//
//  TipButtons.swift
//  TipCalc35
//
//  Created by Colton Swapp on 8/24/20.
//  Copyright © 2020 Colton Swapp. All rights reserved.
//

import UIKit

class TipButtons: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupViews()
    }
    
    func setupViews() {
        self.backgroundColor = UIColor.darkBlue
        self.setTitleColor(.white, for: .normal)
        updateFontTo(font: "Helvetica-Bold")
        addCornerRadius()
    }
    
    func updateFontTo(font: String) {
        guard let size = self.titleLabel?.font.pointSize else { return }
        self.titleLabel?.font = UIFont(name: font, size: size)
    }
    

}
