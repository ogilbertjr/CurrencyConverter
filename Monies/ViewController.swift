//
//  ViewController.swift
//  Monies
//
//  Created by Osie G on 5/9/17.
//  Copyright © 2017 Osie G. All rights reserved.
//

import UIKit
import Alamofire

protocol MoniesLanguageSupport {
    func addCurrencyInLanguage(for code: String)
    
    func deleteCurrencyInLanguage(for code: String)
    
    func addCurrencyMessageInLanguage() -> String
    
    func addTitleAlertInLanguage() -> String
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, MoniesLanguageSupport {
    
    @IBOutlet weak var tableView: UITableView!
    
    var countries = [Country]()
    var isoCodesInUse = [String]()
    var isoCodesString = ""
    var currenciesInUse = [String : String]() //protocol
    var addCurrencyMessage: String?
    var addTitle: String?
    var currencyURL:String?
    
    let preKeyURL = "http://apilayer.net/api/live?access_key="
    let apiKey = "[Your api key here]"
    let currenciesString = "&currencies="
    let formatString = "&format=1"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        downloadCurrencyData()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func downloadCurrencyData () {
        countries.removeAll()
        
        if isoCodesString == "" {
            return
        } else {
            currencyURL = "\(preKeyURL)\(apiKey)\(currenciesString)\(isoCodesString)\(formatString)"
            
        }
        let currenciesURL = URL(string: currencyURL!)!
        Alamofire.request(currenciesURL).responseJSON{ response in
            
            let result = response.result

            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let list = dict["quotes"] as? Dictionary<String, Double> {
                    for (key,value) in list {
                        let isoCodeFirstPosition = key.index(key.startIndex, offsetBy: 3)
                        let extractedISOCode = key.substring(from: isoCodeFirstPosition)
                        let rateAsString = "\(value)"
                        let currencyName = self.currenciesInUse[extractedISOCode] //protocol
                        let nation = countryNames[extractedISOCode]
                        
                        self.countries.append(Country(isoCode: extractedISOCode, nameOfCountry: nation!, nameOfCurrency: currencyName!, exchangeRate: rateAsString))
                        
                    }
                    print(self.countries.count)
                    self.tableView.reloadData()
                }
            }
            
        }

    }
    
    @IBAction func addCurrency(_ sender: Any) {
        
        let alertController = UIAlertController(title: addTitleAlertInLanguage(), message: addCurrencyMessageInLanguage(), preferredStyle: .alert)
        
        
        let okAction = UIAlertAction(title: "Add", style: .default, handler: {
            action -> Void in
            
            let currencyTextField = alertController.textFields![0] as UITextField
            
            let addedCurrency = currencyTextField.text
            
            if (addedCurrency?.isEmpty)! {
                return
            } else if self.searchForISOCode(code: addedCurrency!) {
                //---------------ADDING CURRENCY HERE--------------//
                self.addCurrencyInLanguage(for: addedCurrency!)
                print(self.isoCodesString)
            } else {
                return
            }
            
            self.downloadCurrencyData()
            
           })
            
        
            
    
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addTextField(configurationHandler: { (textField) -> Void in
            
            textField.textAlignment = .center
        })
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
    func buildISOCodesString () -> String {
        return isoCodesInUse.joined(separator: ",")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return countries.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath) as! CountryCell
        
        cell.configureCell(country: countries[indexPath.row])
        
        // Configure the cell...
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            deleteCurrencyInLanguage(for: countries[indexPath.row].code)
            self.countries.remove(at: indexPath.row)
            downloadCurrencyData()
        }
    }
    
    func searchForISOCode(code: String) -> Bool {
        let isoCode = code.uppercased()
        if isoCodesAvailable.contains(isoCode) {
            return true
        }
        return false
    }

    func addCurrencyMessageInLanguage() -> String {
        addCurrencyMessage = "Enter ISO code of the currency you would like to add (e.g. \"GBP\" for the British Pound Sterling)."
        return addCurrencyMessage!
    }
    
    func deleteCurrencyInLanguage(for code: String) {
        
        availableCurrencies[code] = currenciesInUse[code] //protocol
        currenciesInUse.removeValue(forKey: code) //protocol
        
        isoCodesAvailable.append(code)
        isoCodesInUse.remove(at: isoCodesInUse.index(of: code)!)
        isoCodesString = self.buildISOCodesString()

    }
    
    func addCurrencyInLanguage(for code: String) {
        let isoCode = code.uppercased()
        currenciesInUse[isoCode] = availableCurrencies[isoCode] //protocol
        availableCurrencies.removeValue(forKey: isoCode) //protocol
        
        self.isoCodesInUse.append(isoCode)
        self.isoCodesString = self.buildISOCodesString()
        isoCodesAvailable.remove(at: isoCodesAvailable.index(of: isoCode)!)
    }
    
    func addTitleAlertInLanguage() -> String {
        addTitle = "Add currency"
        return addTitle!
    }

}

