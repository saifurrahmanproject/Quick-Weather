//
//  ChangeCityViewController.swift
//  Quick Weather
//
//  Created by Tonoy Rahman on 2020-11-09.
//


import UIKit




protocol ChangeCityDelegate {
    
    func userEnterNewCityName(city: String)
}

class ChangeCityViewController: UIViewController {
    
    var delegate : ChangeCityDelegate?
    
    @IBOutlet weak var changeCityTextField: UITextField!
   
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        
        
        // when user enter the city name.
        let cityName = changeCityTextField.text!
        
        
        delegate?.userEnterNewCityName(city: cityName)
        
        // when user dismiss the cityWeather viewController to main viewController 
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
