//
//  WelcomeView.swift
//  WeatherDemo
//
//  Created by CaMya  Poindexter  on 5/23/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager:
    LocationManager
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("My Weather App")
                    .bold().font(.title)
                
                Text("If you don't mind sharing your current location to get the weather in your area")
                    .padding()
                    
            }
            .multilineTextAlignment(.center)
            .padding()
            
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(40)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

    struct WelcomeView_Previews: PreviewProvider {
        static var previews: some View {
            WelcomeView()
        }
    }
        
        
