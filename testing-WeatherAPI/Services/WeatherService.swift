//
//  WeatherService.swift
//  testing-WeatherAPI
//
//  Created by Diego Salazar Arp on 20-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation


class WeatherService {
    func getWeather(city: String, completion: @escaping (Weather?) ->()) {
        guard let url = URL(string:  "http://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=380fefe5d50a4ff73b4220a250e1d845&units=imperial") else {
            completion(nil)
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            if let weatherResponse = weatherResponse {
                let weather = weatherResponse.main
                completion(weather)
            }else {
                completion(nil )
            }
            
        }.resume()
        
    }
}
