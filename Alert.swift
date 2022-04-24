//
//  Alert.swift
//  MapPins
//
//  Created by Роман Кухаренко on 23.04.2022.
//

import UIKit

extension UIViewController {
    func alertAddAddress(title: String, placeholder: String, completionHandler: @escaping(String) -> Void){
        
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let alertOK = UIAlertAction(title: "OK", style: .default) { (action) in
            
            let tfText = alertController.textFields?.first
            guard let text = tfText?.text else { return }
            completionHandler(text)
        }
        
        alertController.addTextField{ (tf) in
            tf.placeholder = placeholder
        }
        
        let alertCancel = UIAlertAction(title: "Отмена", style: .default) {(_) in
        }
        
        alertController.addAction(alertOK)
        alertController.addAction(alertCancel)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    func alertError(title: String, message: String){
        
        let alertController = UIAlertController(title: message, message: message, preferredStyle: .alert)
        let alertOK = UIAlertAction(title: "ОК", style: .default)
        
        alertController.addAction(alertOK)
        
        present(alertController, animated: true, completion: nil)
    }
}
