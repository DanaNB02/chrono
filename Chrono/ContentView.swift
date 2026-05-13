//
//  ContentView.swift
//  Chrono
//
//  Created by Dana on 26/11/1447 AH.
//

import SwiftUI
import CoreData

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "heart.text.square.fill")
                .font(.system(size: 60))
                .foregroundColor(.red)
            
            Text("Welcome to Chrono")
                .font(.title)
                .bold()
            
            Button(action: {
                HealthKitManager.shared.requestAuthorization()
            }) {
                Text("Connect Apple Health")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 40)
        }
    }
}

#Preview {
    ContentView()
}
