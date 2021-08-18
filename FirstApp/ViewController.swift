//
//  ViewController.swift
//  FirstApp
//
//  Created by WhiteNoise on 16.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findButton(_ sender: UIButton) {
        
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else {return}
        
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        dateFormatter.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponents) else {return}
        
        let weekday = dateFormatter.string(from: date)
        _ = weekday.capitalized   //формат даты с большой буквы
        
        resultLabel.text = weekday
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
   }




