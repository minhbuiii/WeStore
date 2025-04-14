//
//  ViewController.swift
//  WeStore
//
//  Created by Bùi Minh on 14/4/25.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var txtField1: CustomTextField!
    @IBOutlet weak var txtField2: CustomTextField!
    @IBOutlet weak var labelResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let showResultButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        showResultButton.backgroundColor = .lightGray
        showResultButton.setTitle("Submit", for: .normal)
        showResultButton.setTitleColor(UIColor.black, for: .normal)
        showResultButton.addTarget(self, action: #selector(MainViewController.showResult), for: .touchUpInside)
        
        txtField1.inputAccessoryView = showResultButton
        txtField2.inputAccessoryView = showResultButton
        
        labelResult.isHidden = true
    }

    @IBAction func btnClearResult(_ sender: Any) {
        labelResult.isHidden = true
    }
    @objc func showResult() {
        if let txt1 = txtField1.text, let txt2 = txtField2.text {
            if let price = Float(txt1), let quantity = Int(txt2) {
                view.endEditing(true)
                labelResult.isHidden = false
                labelResult.text = "\(CalculatedUtil.getTotalPrice(priceOfItem: price, quantityOfItem: quantity))"
            }
        }
    }
}

