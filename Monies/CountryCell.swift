//
//  CountryCell.swift
//  Monies
//
//  Created by Osie G on 5/10/17.
//  Copyright © 2017 Osie G. All rights reserved.
//

import UIKit

class CountryCell: UITableViewCell {
    
    @IBOutlet weak var flagView: UIImageView!
    
    @IBOutlet weak var currencyLabel: UILabel!
    
    @IBOutlet weak var exchangeRateLabel: UILabel!
    
    var country: Country?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell (country: Country) {
        flagView.image = UIImage(named: country.name)
        currencyLabel.text = "\(country.currency)"
        exchangeRateLabel.text = "\(country.symbol)\(country.rate)"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
