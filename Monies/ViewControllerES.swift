//
//  ViewControllerES.swift
//  Monies
//
//  Created by Osie G on 5/10/17.
//  Copyright © 2017 Osie G. All rights reserved.
//

import UIKit

class ViewControllerES: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func anadirMoneda(_ sender: Any) {
        
        let alertController = UIAlertController(title: addTitleAlertInLanguage(), message: addCurrencyMessageInLanguage(), preferredStyle: .alert)
        
        
        let okAction = UIAlertAction(title: "Añadir", style: .default, handler: {
            action -> Void in
            
            let currencyTextField = alertController.textFields![0] as UITextField
            
            let addedCurrency = currencyTextField.text
            
            if (addedCurrency?.isEmpty)! {
                return
            } else if self.searchForISOCode(code: addedCurrency!) {
                //---------------AÑADIENDO MONEDA AQUÍ--------------//
                self.addCurrencyInLanguage(for: addedCurrency!)
                print(self.isoCodesString)
            } else {
                return
            }
            
            self.downloadCurrencyData()
            
        })
        
        
        
        
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        
        alertController.addTextField(configurationHandler: { (textField) -> Void in
            
            textField.textAlignment = .center
        })
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
    
    override func addCurrencyMessageInLanguage() -> String {
        addCurrencyMessage = "Introduce el código ISO que quieres añadir (e.g. \"GBP\" para la libra esterlina británica)."
        return addCurrencyMessage!
    }
    
    override func deleteCurrencyInLanguage(for code: String) {
        
        monedasDisponibles[code] = currenciesInUse[code] //protocol
        currenciesInUse.removeValue(forKey: code) //protocol
        
        isoCodesAvailable.append(code)
        isoCodesInUse.remove(at: isoCodesInUse.index(of: code)!)
        isoCodesString = self.buildISOCodesString()
        
    }
    
    override func addCurrencyInLanguage(for code: String) {
        let isoCode = code.uppercased()
        currenciesInUse[isoCode] = monedasDisponibles[isoCode] //protocol
        monedasDisponibles.removeValue(forKey: isoCode) //protocol
        
        self.isoCodesInUse.append(isoCode)
        self.isoCodesString = self.buildISOCodesString()
        isoCodesAvailable.remove(at: isoCodesAvailable.index(of: isoCode)!)
    }
    
    override func addTitleAlertInLanguage() -> String {
        addTitle = "Añade moneda"
        return addTitle!
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
