//
//  Weather.swift
//  testing-WeatherAPI
//
//  Created by Diego Salazar Arp on 20-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation

struct WeatherResponse: Decodable{

    let main: Weather
    
}


struct Weather: Decodable {
    
    var temp: Double?
    var humidity: Double?
}
