//
//  Country.swift
//  Monies
//
//  Created by Osie G on 5/9/17.
//  Copyright © 2017 Osie G. All rights reserved.
//

import Foundation


class Country {
    
    var name: String!
    var currency: String!
    var symbol: String!
    var rate: String!
    
    init(nameOfCountry: String, nameOfCurrency: String, currencySymbol: String, exchangeRate: String) {
        self.name = nameOfCountry
        self.currency = nameOfCurrency
        self.symbol = currencySymbol
        self.rate = exchangeRate
    }
    
}
