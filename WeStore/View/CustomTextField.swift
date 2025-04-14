//
//  CustomTextField.swift
//  WeStore
//
//  Created by Bùi Minh on 14/4/25.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        buildView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        buildView()
    }

    func buildView() {
        backgroundColor = UIColor.lightGray
        layer.cornerRadius = 10
        textAlignment = .center
        textColor = UIColor.black
        
        if let place = placeholder {
            var attrPlaceholder = NSAttributedString(string: place, attributes: [.foregroundColor : UIColor.black.withAlphaComponent(0.4)])
            attributedPlaceholder = attrPlaceholder
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let size: CGFloat = 30
        let currencyLabel = UILabel(frame: CGRect(x: 20, y: (frame.size.height / 2) - size/2, width: size, height: size))
        currencyLabel.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = .white
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        currencyLabel.layer.cornerRadius = 5
        currencyLabel.clipsToBounds = true
        addSubview(currencyLabel)
    }
}
