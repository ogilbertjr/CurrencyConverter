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
    let apiKey = "3b40a85bfcca86928b0bd2d99e74c7ec"
    let currenciesString = "&currencies="
    let formatString = "&format=1"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func downloadCurrencyData () {
        
        
        if isoCodesString == "" {
            return
        } else {
            currencyURL = "\(preKeyURL)\(apiKey)\(currenciesString)\(isoCodesString)\(formatString)"
        }
        let dailyForecastURL = URL(string: currencyURL!)!
        Alamofire.request(dailyForecastURL).responseJSON{ response in
//            
//            let result = response.result
//            
//            if let dict = result.value as? Dictionary<String, AnyObject> {
//                if let list = dict["quotes"] as? [Dictionary<String, AnyObject>] {
//                    for obj in list {
//                        let forecast = Forecast(weatherDict: obj)
//                        self.forecasts.append(forecast)
//                        print(obj)
//                    }
//                    self.tableView.reloadData()
//                }
//            }
//            completed()
        }

    }
    
    @IBAction func addCurrency(_ sender: Any) {
        
        let alertController = UIAlertController(title: addTitleAlertInLanguage(), message: addCurrencyMessageInLanguage(), preferredStyle: .alert)
        
        
        let okAction = UIAlertAction(title: "Add", style: .default, handler: {
            action -> Void in
            
            let currencyTextField = alertController.textFields![0] as UITextField
            
            var addedCurrency = currencyTextField.text
            
            if (addedCurrency?.isEmpty)! {
                return
            }
            
            
            
           })
            
            self.tableView.reloadData()
            
    
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addTextField(configurationHandler: { (textField) -> Void in
            
            textField.textAlignment = .center
        })
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
        
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

    func addCurrencyMessageInLanguage() -> String {
        addCurrencyMessage = "Enter ISO code of the currency you would like to add (e.g. \"GBP\" for the British Pound Sterling)."
        return addCurrencyMessage!
    }
    
    func deleteCurrencyInLanguage(for code: String) {
        
    }
    
    func addCurrencyInLanguage(for code: String) {
        
    }
    
    func addTitleAlertInLanguage() -> String {
        addTitle = "Add currency"
        return addTitle!
    }

}

