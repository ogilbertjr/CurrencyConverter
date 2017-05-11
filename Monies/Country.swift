//
//  Country.swift
//  Monies
//
//  Created by Osie G on 5/9/17.
//  Copyright © 2017 Osie G. All rights reserved.
//

import Foundation


class Country: Comparable {
    
    
    var name: String!
    var currency: String!
    var code: String!
    var rate: String!
    
    init(isoCode: String, nameOfCountry: String, nameOfCurrency: String, exchangeRate: String) {
        self.name = nameOfCountry
        self.currency = nameOfCurrency
        self.code = isoCode
        self.rate = exchangeRate
    }
    
    
    static func == (lhs: Country, rhs: Country) -> Bool {
        if (lhs.code == nil) {
            return false
        }
        if (rhs.code == nil) {
            return false
        }
        return lhs.code == rhs.code
    }
    
    static func < (lhs: Country, rhs: Country) -> Bool{
//        if (lhs.code == nil) {
//            return false
//        }
//        if (rhs.code == nil) {
//            return false
//        }
        return lhs.code < rhs.code
    }
    
}
