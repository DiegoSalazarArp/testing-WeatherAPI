//
//  ContentView.swift
//  testing-WeatherAPI
//
//  Created by Diego Salazar Arp on 20-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    init(){
        self.weatherVM = WeatherViewModel()
    }
    
    var body: some View {
        VStack(alignment: .center) {
            TextField("Ciudad?", text:  self.$weatherVM.cityName) {
                self.weatherVM.search()
            }.font(.custom("Arial", size: 50))
                .padding()
                .fixedSize()
                .lineLimit(nil)
            Text(self.weatherVM.temperature)
                .foregroundColor(Color.black)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
