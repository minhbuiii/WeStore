//
//  CalculatedUtil.swift
//  WeStore
//
//  Created by Bùi Minh on 14/4/25.
//

import Foundation
class CalculatedUtil {
    class func getTotalPrice(priceOfItem price: Float, quantityOfItem quantity: Int) -> Float {
        return price * Float(quantity)
    }
}
