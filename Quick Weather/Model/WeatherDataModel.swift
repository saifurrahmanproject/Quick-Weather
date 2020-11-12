//
//  WeatherDataModel.swift
//  Quick Weather
//
//  Created by Tonoy Rahman on 2020-11-10.
//

import UIKit


class WeatherDatamodel {
    
    var temperature: Int = 0
    var condition: Int = 0
    var city: String = ""
    var weatherIconName: String = ""
    
    
    //This condition code into the name of the weather condition image
    
    func updateWeatherIcon(condition: Int) -> String {

    switch (condition) {

        case 0...300 :
            return "tstorm1"

        case 301...500 :
            return "light_rain"

        case 501...600 :
            return "shower3"

        case 601...700 :
            return "snow4"

        case 701...771 :
            return "fog"

        case 772...799 :
            return "tstorm3"

        case 800 :
            return "sunny"      // crear  https://openweathermap.org/weather-conditions#Weather-Condition-Codes-2

        case 801...804 :
            return "cloudy22"

        case 900...903, 905...1000  :
            return "tstorm3"

        case 903 :
            return "snow5"

        case 904 :
            return "sunny"

        default :
            return "dunno"
        }

    }
}

    
