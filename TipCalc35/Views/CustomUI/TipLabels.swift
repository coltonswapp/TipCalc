//
//  TipLabels.swift
//  TipCalc35
//
//  Created by Colton Swapp on 8/24/20.
//  Copyright © 2020 Colton Swapp. All rights reserved.
//

import UIKit

class TipLabels: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        updateFontAndColor(font: "Helvetica-Bold")
    }
    
    func updateFontAndColor(font: String){
        let size = self.font.pointSize
        self.font = UIFont(name: font, size: size)
        self.textColor = UIColor.headerGray
    }
}
