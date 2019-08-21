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
        NavigationView{
        VStack(alignment: .center) {
            TextField("City?", text:  self.$weatherVM.cityName) {
                self.weatherVM.search()
            }.border(Color.gray)
                .padding()
                
            
            HStack {
                Text("Temperature: ")
                    .padding()
                Text(self.weatherVM.temperature + " F")
                    .foregroundColor(Color.black)
                
                }
            
            }.navigationBarTitle("Weather")
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
