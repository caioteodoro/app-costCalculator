//
//  CustomTextField.swift
//  Cost Calculator
//
//  Created by Caio Teodoro on 11/08/20.
//  Copyright © 2020 Teodoro Corp. All rights reserved.
//

import UIKit

@IBDesignable

class CustomTextField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: (frame.size.height / 2) - (size / 2), y: (frame.size.height / 2) - (size / 2), width: size, height: size))
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8532423899, green: 0.8532423899, blue: 0.8532423899, alpha: 0.723068882)
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.clipsToBounds = true
        //let formatter = NumberFormatter()
        //formatter.numberStyle = .currency
        //formatter.locale = .current
        //currencyLbl.text = formatter.currencySymbol
        currencyLbl.text = "$"
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
        func customizeView() {
        layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            }
        }

}
